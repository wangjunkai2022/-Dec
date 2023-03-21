package com.apk;

import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
/* compiled from: CsjProviderBanner.java */
/* loaded from: classes7.dex */
public class d80 extends f70 {

    /* renamed from: try  reason: not valid java name */
    public TTNativeExpressAd f835try;

    public void j() {
        TTNativeExpressAd tTNativeExpressAd = this.f835try;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
            this.f835try = null;
        }
    }
}
