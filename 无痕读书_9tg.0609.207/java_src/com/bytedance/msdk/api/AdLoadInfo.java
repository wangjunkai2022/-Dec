package com.bytedance.msdk.api;

import com.apk.Cgoto;
/* loaded from: classes8.dex */
public class AdLoadInfo {
    public static final String AD_LOADED = "广告加载成功";
    public static final String AD_LOADING = "广告请求中";

    /* renamed from: case  reason: not valid java name */
    public String f8776case;

    /* renamed from: do  reason: not valid java name */
    public String f8777do;

    /* renamed from: for  reason: not valid java name */
    public String f8778for;

    /* renamed from: if  reason: not valid java name */
    public String f8779if;

    /* renamed from: new  reason: not valid java name */
    public String f8780new;

    /* renamed from: try  reason: not valid java name */
    public int f8781try;

    public String getAdType() {
        return this.f8780new;
    }

    public String getAdnName() {
        return this.f8779if;
    }

    public String getCustomAdnName() {
        return this.f8778for;
    }

    public int getErrCode() {
        return this.f8781try;
    }

    public String getErrMsg() {
        return this.f8776case;
    }

    public String getMediationRit() {
        return this.f8777do;
    }

    public AdLoadInfo setAdType(String str) {
        this.f8780new = str;
        return this;
    }

    public AdLoadInfo setAdnName(String str) {
        this.f8779if = str;
        return this;
    }

    public AdLoadInfo setCustomAdnName(String str) {
        this.f8778for = str;
        return this;
    }

    public AdLoadInfo setErrCode(int i) {
        this.f8781try = i;
        return this;
    }

    public AdLoadInfo setErrMsg(String str) {
        this.f8776case = str;
        return this;
    }

    public AdLoadInfo setMediationRit(String str) {
        this.f8777do = str;
        return this;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("{mediationRit='");
        Cgoto.m987abstract(m1016super, this.f8777do, '\'', ", adnName='");
        Cgoto.m987abstract(m1016super, this.f8779if, '\'', ", customAdnName='");
        Cgoto.m987abstract(m1016super, this.f8778for, '\'', ", adType='");
        Cgoto.m987abstract(m1016super, this.f8780new, '\'', ", errCode=");
        m1016super.append(this.f8781try);
        m1016super.append(", errMsg=");
        m1016super.append(this.f8776case);
        m1016super.append('}');
        return m1016super.toString();
    }
}
