package com.bytedance.msdk.api.nativeAd;

import java.util.Map;
@Deprecated
/* loaded from: classes8.dex */
public class TTNativeAdAppInfo {

    /* renamed from: case  reason: not valid java name */
    public String f8979case;

    /* renamed from: do  reason: not valid java name */
    public String f8980do;

    /* renamed from: else  reason: not valid java name */
    public String f8981else;

    /* renamed from: for  reason: not valid java name */
    public long f8982for;

    /* renamed from: goto  reason: not valid java name */
    public Map<String, Object> f8983goto;

    /* renamed from: if  reason: not valid java name */
    public String f8984if;

    /* renamed from: new  reason: not valid java name */
    public String f8985new;

    /* renamed from: try  reason: not valid java name */
    public Map<String, String> f8986try;

    public Map<String, Object> getAppInfoExtra() {
        return this.f8983goto;
    }

    public String getAppName() {
        return this.f8980do;
    }

    public String getAuthorName() {
        return this.f8984if;
    }

    public long getPackageSizeBytes() {
        return this.f8982for;
    }

    public Map<String, String> getPermissionsMap() {
        return this.f8986try;
    }

    public String getPermissionsUrl() {
        return this.f8985new;
    }

    public String getPrivacyAgreement() {
        return this.f8979case;
    }

    public String getVersionName() {
        return this.f8981else;
    }

    public void setAppInfoExtra(Map<String, Object> map) {
        this.f8983goto = map;
    }

    public void setAppName(String str) {
        this.f8980do = str;
    }

    public void setAuthorName(String str) {
        this.f8984if = str;
    }

    public void setPackageSizeBytes(long j) {
        this.f8982for = j;
    }

    public void setPermissionsMap(Map<String, String> map) {
        this.f8986try = map;
    }

    public void setPermissionsUrl(String str) {
        this.f8985new = str;
    }

    public void setPrivacyAgreement(String str) {
        this.f8979case = str;
    }

    public void setVersionName(String str) {
        this.f8981else = str;
    }
}
