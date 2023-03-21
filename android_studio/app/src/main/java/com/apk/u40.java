package com.apk;

import com.bytedance.sdk.openadsdk.TTNativeExpressAd;

/* compiled from: CsjProviderBannerList.java */
/* loaded from: classes7.dex */
public class u40 extends f70 {

    /* renamed from: try  reason: not valid java name */
    public TTNativeExpressAd f4845try;

    public void j() {
        TTNativeExpressAd tTNativeExpressAd = this.f4845try;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
            this.f4845try = null;
        }
    }
}
