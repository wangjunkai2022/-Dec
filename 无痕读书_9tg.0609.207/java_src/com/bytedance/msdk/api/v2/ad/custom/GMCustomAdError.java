package com.bytedance.msdk.api.v2.ad.custom;
/* loaded from: classes8.dex */
public class GMCustomAdError {

    /* renamed from: do  reason: not valid java name */
    public int f9081do;

    /* renamed from: if  reason: not valid java name */
    public String f9082if;

    public GMCustomAdError(int i, String str) {
        this.f9081do = i;
        this.f9082if = str;
    }

    public int getCode() {
        return this.f9081do;
    }

    public String getMessage() {
        return this.f9082if;
    }
}
