package com.baidu.tts.client.model;

import android.content.Context;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.tools.DataTool;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class ModelFileBags {

    /* renamed from: a  reason: collision with root package name */
    public TtsError f11174a;
    public List<ModelFileInfo> b;

    public void addFileInfo(ModelFileInfo modelFileInfo) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.add(modelFileInfo);
    }

    public void generateAbsPath(Context context) {
        List<ModelFileInfo> list = this.b;
        if (list != null) {
            for (ModelFileInfo modelFileInfo : list) {
                modelFileInfo.generateAbsPath(context);
            }
        }
    }

    public ModelFileInfo getModelFileInfo(int i) {
        List<ModelFileInfo> list = this.b;
        if (list != null) {
            return list.get(i);
        }
        return null;
    }

    public List<ModelFileInfo> getModelFileInfos() {
        return this.b;
    }

    public TtsError getTtsError() {
        return this.f11174a;
    }

    public String getUrl(int i) {
        ModelFileInfo modelFileInfo = getModelFileInfo(i);
        if (modelFileInfo != null) {
            return modelFileInfo.getUrl();
        }
        return null;
    }

    public boolean isEmpty() {
        return DataTool.isListEmpty(this.b);
    }

    public void parseJson(JSONArray jSONArray) {
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            ModelFileInfo modelFileInfo = new ModelFileInfo();
            modelFileInfo.parseJson(optJSONObject);
            addFileInfo(modelFileInfo);
        }
    }

    public void setList(List<Map<String, String>> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map<String, String> map : list) {
            ModelFileInfo modelFileInfo = new ModelFileInfo();
            modelFileInfo.setMap(map);
            arrayList.add(modelFileInfo);
        }
        this.b = arrayList;
    }

    public void setModelFileInfos(List<ModelFileInfo> list) {
        this.b = list;
    }

    public void setTtsError(TtsError ttsError) {
        this.f11174a = ttsError;
    }

    public JSONArray toJson() {
        JSONArray jSONArray = new JSONArray();
        if (!isEmpty()) {
            for (ModelFileInfo modelFileInfo : this.b) {
                jSONArray.put(modelFileInfo.toJson());
            }
        }
        return jSONArray;
    }
}
