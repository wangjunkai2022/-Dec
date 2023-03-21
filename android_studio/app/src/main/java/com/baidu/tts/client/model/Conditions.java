package com.baidu.tts.client.model;

import com.baidu.tts.f.g;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.JsonTool;
import com.baidu.tts.tools.StringTool;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class Conditions {

    /* renamed from: a  reason: collision with root package name */
    public Set<String> f11170a;
    public String b;
    public Set<String> c;
    public Set<String> d;
    public Set<String> e;
    public Set<String> f;
    public Set<String> g;

    public void appendDomain(String str) {
        if (StringTool.isEmpty(str)) {
            return;
        }
        if (this.f == null) {
            this.f = new HashSet();
        }
        this.f.add(str);
    }

    public void appendGender(String str) {
        if (StringTool.isEmpty(str)) {
            return;
        }
        if (this.d == null) {
            this.d = new HashSet();
        }
        this.d.add(str);
    }

    public void appendId(String str) {
        if (StringTool.isEmpty(str)) {
            return;
        }
        if (this.f11170a == null) {
            this.f11170a = new HashSet();
        }
        this.f11170a.add(str);
    }

    public void appendLanguage(String str) {
        if (StringTool.isEmpty(str)) {
            return;
        }
        if (this.c == null) {
            this.c = new HashSet();
        }
        this.c.add(str);
    }

    public void appendQuality(String str) {
        if (StringTool.isEmpty(str)) {
            return;
        }
        if (this.g == null) {
            this.g = new HashSet();
        }
        this.g.add(str);
    }

    public void appendSpeaker(String str) {
        if (StringTool.isEmpty(str)) {
            return;
        }
        if (this.e == null) {
            this.e = new HashSet();
        }
        this.e.add(str);
    }

    public String[] getDomainArray() {
        return DataTool.fromSetToArray(this.f);
    }

    public Set<String> getDomains() {
        return this.f;
    }

    public String[] getGenderArray() {
        return DataTool.fromSetToArray(this.d);
    }

    public JSONArray getGenderJA() {
        return JsonTool.fromSetToJson(this.d);
    }

    public Set<String> getGenders() {
        return this.d;
    }

    public JSONObject getJSONConditions() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(g.ID.b(), JsonTool.fromSetToJson(this.f11170a));
            jSONObject.put(g.VERSION.b(), this.b);
            jSONObject.put(g.LANGUAGE.b(), JsonTool.fromSetToJson(this.c));
            jSONObject.put(g.GENDER.b(), JsonTool.fromSetToJson(this.d));
            jSONObject.put(g.SPEAKER.b(), JsonTool.fromSetToJson(this.e));
            jSONObject.put(g.DOMAIN.b(), JsonTool.fromSetToJson(this.f));
            jSONObject.put(g.QUALITY.b(), JsonTool.fromSetToJson(this.g));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public String[] getLanguageArray() {
        return DataTool.fromSetToArray(this.c);
    }

    public Set<String> getLanguages() {
        return this.c;
    }

    public Set<String> getModelIds() {
        return this.f11170a;
    }

    public String[] getModelIdsArray() {
        return DataTool.fromSetToArray(this.f11170a);
    }

    public String[] getQualityArray() {
        return DataTool.fromSetToArray(this.g);
    }

    public Set<String> getQualitys() {
        return this.g;
    }

    public String[] getSpeakerArray() {
        return DataTool.fromSetToArray(this.e);
    }

    public JSONArray getSpeakerJA() {
        return JsonTool.fromSetToJson(this.e);
    }

    public Set<String> getSpeakers() {
        return this.e;
    }

    public String getVersion() {
        return this.b;
    }

    public void setDomains(Set<String> set) {
        this.f = set;
    }

    public void setGenders(Set<String> set) {
        this.d = set;
    }

    public void setLanguages(Set<String> set) {
        this.c = set;
    }

    public void setModelIds(Set<String> set) {
        this.f11170a = set;
    }

    public void setQualitys(Set<String> set) {
        this.g = set;
    }

    public void setSpeakers(Set<String> set) {
        this.e = set;
    }

    public void setVersion(String str) {
        this.b = str;
    }

    public void setDomains(String[] strArr) {
        this.f = DataTool.fromArrayToSet(strArr);
    }

    public void setLanguages(String[] strArr) {
        this.c = DataTool.fromArrayToSet(strArr);
    }

    public void setQualitys(String[] strArr) {
        this.g = DataTool.fromArrayToSet(strArr);
    }
}
