package com.bytedance.msdk.api.v2.ad.custom.bean;
/* loaded from: classes8.dex */
public final class GMCustomServiceConfig {

    /* renamed from: do  reason: not valid java name */
    public final String f9130do;

    /* renamed from: for  reason: not valid java name */
    public final int f9131for;

    /* renamed from: if  reason: not valid java name */
    public final String f9132if;

    /* renamed from: new  reason: not valid java name */
    public final int f9133new;

    /* renamed from: try  reason: not valid java name */
    public final String f9134try;

    public GMCustomServiceConfig(String str, String str2, int i, int i2, String str3) {
        this.f9130do = str;
        this.f9132if = str2;
        this.f9131for = i;
        this.f9133new = i2;
        this.f9134try = str3;
    }

    public String getADNNetworkName() {
        return this.f9130do;
    }

    public String getADNNetworkSlotId() {
        return this.f9132if;
    }

    public int getAdStyleType() {
        return this.f9131for;
    }

    public String getCustomAdapterJson() {
        return this.f9134try;
    }

    public int getSubAdtype() {
        return this.f9133new;
    }
}
