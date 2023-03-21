package com.qq.e.comm.constants;

import com.apk.Cgoto;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class LoadAdParams {

    /* renamed from: a  reason: collision with root package name */
    public LoginType f11527a;
    public String b;
    public String c;
    public String d;
    public Map<String, String> e;
    public JSONObject f;
    public final JSONObject g = new JSONObject();

    public Map getDevExtra() {
        return this.e;
    }

    public String getDevExtraJsonString() {
        try {
            return (this.e == null || this.e.size() <= 0) ? "" : new JSONObject(this.e).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public JSONObject getExtraInfo() {
        return this.f;
    }

    public String getLoginAppId() {
        return this.b;
    }

    public String getLoginOpenid() {
        return this.c;
    }

    public LoginType getLoginType() {
        return this.f11527a;
    }

    public JSONObject getParams() {
        return this.g;
    }

    public String getUin() {
        return this.d;
    }

    public void setDevExtra(Map<String, String> map) {
        this.e = map;
    }

    public void setExtraInfo(JSONObject jSONObject) {
        this.f = jSONObject;
    }

    public void setLoginAppId(String str) {
        this.b = str;
    }

    public void setLoginOpenid(String str) {
        this.c = str;
    }

    public void setLoginType(LoginType loginType) {
        this.f11527a = loginType;
    }

    public void setUin(String str) {
        this.d = str;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("LoadAdParams{, loginType=");
        m1016super.append(this.f11527a);
        m1016super.append(", loginAppId=");
        m1016super.append(this.b);
        m1016super.append(", loginOpenid=");
        m1016super.append(this.c);
        m1016super.append(", uin=");
        m1016super.append(this.d);
        m1016super.append(", passThroughInfo=");
        m1016super.append(this.e);
        m1016super.append(", extraInfo=");
        m1016super.append(this.f);
        m1016super.append('}');
        return m1016super.toString();
    }
}
