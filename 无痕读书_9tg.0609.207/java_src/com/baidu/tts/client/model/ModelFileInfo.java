package com.baidu.tts.client.model;

import android.content.Context;
import com.baidu.tts.f.g;
import com.baidu.tts.tools.ResourceTools;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class ModelFileInfo {

    /* renamed from: a  reason: collision with root package name */
    public String f11175a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;

    public void generateAbsPath(Context context) {
        this.e = ResourceTools.getModelFileAbsName(context, this.d);
    }

    public String getAbsPath() {
        return this.e;
    }

    public String getLength() {
        return this.b;
    }

    public String getMd5() {
        return this.c;
    }

    public String getName() {
        return this.d;
    }

    public String getServerid() {
        return this.f11175a;
    }

    public String getUrl() {
        return this.f;
    }

    public void parseJson(JSONObject jSONObject) {
        this.f11175a = jSONObject.optString(g.ID.b());
        this.b = jSONObject.optString(g.LENGTH.b());
        this.c = jSONObject.optString(g.MD5.b());
        this.d = jSONObject.optString(g.NAME.b());
        this.f = jSONObject.optString(g.URL.b());
    }

    public void setAbsPath(String str) {
        this.e = str;
    }

    public void setLength(String str) {
        this.b = str;
    }

    public void setMap(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        this.f11175a = map.get(g.ID.b());
        this.b = map.get(g.LENGTH.b());
        this.c = map.get(g.MD5.b());
        this.d = map.get(g.NAME.b());
        this.e = map.get(g.ABS_PATH.b());
    }

    public void setMd5(String str) {
        this.c = str;
    }

    public void setName(String str) {
        this.d = str;
    }

    public void setServerid(String str) {
        this.f11175a = str;
    }

    public void setUrl(String str) {
        this.f = str;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(g.ID.b(), this.f11175a);
            jSONObject.putOpt(g.LENGTH.b(), this.b);
            jSONObject.putOpt(g.MD5.b(), this.c);
            jSONObject.putOpt(g.NAME.b(), this.d);
            jSONObject.putOpt(g.ABS_PATH.b(), this.e);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
