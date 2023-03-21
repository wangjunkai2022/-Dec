package com.baidu.tts.client.model;

import com.baidu.tts.f.g;
import com.baidu.tts.tools.JsonTool;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class LibEngineParams {

    /* renamed from: a  reason: collision with root package name */
    public String f11172a;
    public String b;
    public String[] c;
    public String[] d;
    public String[] e;

    public LibEngineParams(String str) {
        this.f11172a = str;
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.b = jSONObject.optString(g.VERSION.b());
            this.c = JsonTool.getStringarray(jSONObject.optJSONArray(g.DOMAIN.b()));
            this.d = JsonTool.getStringarray(jSONObject.optJSONArray(g.LANGUAGE.b()));
            this.e = JsonTool.getStringarray(jSONObject.optJSONArray(g.QUALITY.b()));
        } catch (Exception unused) {
        }
    }

    public String[] getDomain() {
        return this.c;
    }

    public JSONObject getJsonResult() {
        try {
            return new JSONObject(this.f11172a);
        } catch (JSONException unused) {
            return null;
        }
    }

    public String[] getLanguage() {
        return this.d;
    }

    public String[] getQuality() {
        return this.e;
    }

    public String getResult() {
        return this.f11172a;
    }

    public String getVersion() {
        return this.b;
    }

    public void setDomain(String[] strArr) {
        this.c = strArr;
    }

    public void setLanguage(String[] strArr) {
        this.d = strArr;
    }

    public void setQuality(String[] strArr) {
        this.e = strArr;
    }

    public void setVersion(String str) {
        this.b = str;
    }
}
