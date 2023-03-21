package com.bytedance.msdk.api;
/* loaded from: classes8.dex */
public class AdmobNativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;

    /* renamed from: do  reason: not valid java name */
    public int f8838do = 1;

    /* renamed from: if  reason: not valid java name */
    public boolean f8840if = true;

    /* renamed from: for  reason: not valid java name */
    public boolean f8839for = true;

    public int getAdChoicesPlacement() {
        return this.f8838do;
    }

    public boolean isRequestMultipleImages() {
        return this.f8839for;
    }

    public boolean isReturnUrlsForImageAssets() {
        return this.f8840if;
    }

    public AdmobNativeAdOptions setAdChoicesPlacement(int i) {
        this.f8838do = i;
        return this;
    }

    public AdmobNativeAdOptions setRequestMultipleImages(boolean z) {
        this.f8839for = z;
        return this;
    }

    public AdmobNativeAdOptions setReturnUrlsForImageAssets(boolean z) {
        this.f8840if = z;
        return this;
    }
}
