package com.bytedance.msdk.api.v2;

/* loaded from: classes8.dex */
public class GMLocation {

    /* renamed from: do  reason: not valid java name */
    public double f9049do;

    /* renamed from: if  reason: not valid java name */
    public double f9050if;

    public GMLocation(double d, double d2) {
        this.f9049do = 0.0d;
        this.f9050if = 0.0d;
        this.f9049do = d;
        this.f9050if = d2;
    }

    public double getLatitude() {
        return this.f9049do;
    }

    public double getLongitude() {
        return this.f9050if;
    }

    public void setLatitude(double d) {
        this.f9049do = d;
    }

    public void setLongitude(double d) {
        this.f9050if = d;
    }
}
