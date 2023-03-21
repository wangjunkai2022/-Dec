package com.baidu.tts.client.model;

import com.baidu.tts.f.g;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class ModelInfo {

    /* renamed from: a  reason: collision with root package name */
    public String f11176a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;

    public String getDomain() {
        return this.h;
    }

    public String getGender() {
        return this.f;
    }

    public String getLanguage() {
        return this.e;
    }

    public String getName() {
        return this.b;
    }

    public String getQuality() {
        return this.i;
    }

    public String getServerId() {
        return this.f11176a;
    }

    public String getSpeaker() {
        return this.g;
    }

    public String getSpeechDataId() {
        return this.k;
    }

    public String getTextDataId() {
        return this.j;
    }

    public String getVersionMax() {
        return this.d;
    }

    public String getVersionMin() {
        return this.c;
    }

    public void parseJson(JSONObject jSONObject) {
        this.f11176a = jSONObject.optString(g.ID.b());
        this.b = jSONObject.optString(g.NAME.b());
        this.c = jSONObject.optString(g.VERSION_MIN.b());
        this.d = jSONObject.optString(g.VERSION_MAX.b());
        this.e = jSONObject.optString(g.LANGUAGE.b());
        this.f = jSONObject.optString(g.GENDER.b());
        this.g = jSONObject.optString(g.SPEAKER.b());
        this.h = jSONObject.optString(g.DOMAIN.b());
        this.i = jSONObject.optString(g.QUALITY.b());
        this.j = jSONObject.optString(g.TEXT_DATA_ID.b());
        this.k = jSONObject.optString(g.SPEECH_DATA_ID.b());
    }

    public void setDomain(String str) {
        this.h = str;
    }

    public void setGender(String str) {
        this.f = str;
    }

    public void setLanguage(String str) {
        this.e = str;
    }

    public void setMap(Map<String, String> map) {
        if (map != null) {
            this.f11176a = map.get(g.ID.b());
            this.b = map.get(g.NAME.b());
            this.c = map.get(g.VERSION_MIN.b());
            this.d = map.get(g.VERSION_MAX.b());
            this.e = map.get(g.LANGUAGE.b());
            this.f = map.get(g.GENDER.b());
            this.g = map.get(g.SPEAKER.b());
            this.h = map.get(g.DOMAIN.b());
            this.i = map.get(g.QUALITY.b());
            this.j = map.get(g.TEXT_DATA_ID.b());
            this.k = map.get(g.SPEECH_DATA_ID.b());
        }
    }

    public void setName(String str) {
        this.b = str;
    }

    public void setQuality(String str) {
        this.i = str;
    }

    public void setServerId(String str) {
        this.f11176a = str;
    }

    public void setSpeaker(String str) {
        this.g = str;
    }

    public void setSpeechDataId(String str) {
        this.k = str;
    }

    public void setTextDataId(String str) {
        this.j = str;
    }

    public void setVersionMax(String str) {
        this.d = str;
    }

    public void setVersionMin(String str) {
        this.c = str;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(g.ID.b(), this.f11176a);
            jSONObject.putOpt(g.NAME.b(), this.b);
            jSONObject.putOpt(g.VERSION_MIN.b(), this.c);
            jSONObject.putOpt(g.VERSION_MAX.b(), this.d);
            jSONObject.putOpt(g.LANGUAGE.b(), this.e);
            jSONObject.putOpt(g.GENDER.b(), this.f);
            jSONObject.putOpt(g.SPEAKER.b(), this.g);
            jSONObject.putOpt(g.DOMAIN.b(), this.h);
            jSONObject.putOpt(g.QUALITY.b(), this.i);
            jSONObject.putOpt(g.TEXT_DATA_ID.b(), this.j);
            jSONObject.putOpt(g.SPEECH_DATA_ID.b(), this.k);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
