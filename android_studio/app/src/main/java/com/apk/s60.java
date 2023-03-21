package com.apk;

import android.app.Activity;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;

/* compiled from: GdtProviderFullVideo.java */
/* loaded from: classes7.dex */
public class s60 extends h70 {

    /* renamed from: break  reason: not valid java name */
    public v60 f4281break;

    /* renamed from: catch  reason: not valid java name */
    public UnifiedInterstitialAD f4282catch;

    /* renamed from: this  reason: not valid java name */
    public String f4283this;

    @Override // com.apk.e70
    /* renamed from: else */
    public void mo551else(String str) {
        super.mo551else(str);
        m556goto(str, this.f4281break);
    }

    @Override // com.apk.h70
    public void j(Activity activity) {
        n(activity);
    }

    public final boolean n(Activity activity) {
        boolean z;
        UnifiedInterstitialAD unifiedInterstitialAD = this.f4282catch;
        if (unifiedInterstitialAD == null || !unifiedInterstitialAD.isValid()) {
            z = false;
        } else {
            this.f4282catch.showFullScreenAD(activity);
            this.f4282catch = null;
            z = true;
        }
        k(this.f4283this, this.f4281break);
        return z;
    }
}
