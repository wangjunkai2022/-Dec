package com.apk;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
/* compiled from: CsjProviderReward.java */
/* loaded from: classes7.dex */
public class i50 extends h70 {

    /* renamed from: break  reason: not valid java name */
    public TTRewardVideoAd f2051break;

    /* renamed from: catch  reason: not valid java name */
    public z60 f2052catch;

    /* renamed from: this  reason: not valid java name */
    public String f2053this;

    @Override // com.apk.e70
    /* renamed from: else */
    public void mo551else(String str) {
        super.mo551else(str);
        c(str, this.f2052catch);
    }

    @Override // com.apk.h70
    public void j(Activity activity) {
        n(activity);
    }

    public final boolean n(Activity activity) {
        boolean z;
        TTRewardVideoAd tTRewardVideoAd = this.f2051break;
        if (tTRewardVideoAd != null) {
            tTRewardVideoAd.showRewardVideoAd(activity);
            this.f2051break = null;
            z = true;
        } else {
            z = false;
        }
        k(this.f2053this, this.f2052catch);
        return z;
    }
}
