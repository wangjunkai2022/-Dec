package com.bytedance.sdk.openadsdk;

/* loaded from: classes8.dex */
public class TTLocation implements LocationProvider {

    /* renamed from: a  reason: collision with root package name */
    public double f11407a;
    public double b;

    public TTLocation(double d, double d2) {
        this.f11407a = 0.0d;
        this.b = 0.0d;
        this.f11407a = d;
        this.b = d2;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLatitude() {
        return this.f11407a;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLongitude() {
        return this.b;
    }

    public void setLatitude(double d) {
        this.f11407a = d;
    }

    public void setLongitude(double d) {
        this.b = d;
    }
}
