package com.apk;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
/* compiled from: CsjProviderFullVideo.java */
/* loaded from: classes7.dex */
public class y40 extends h70 {

    /* renamed from: break  reason: not valid java name */
    public v60 f5860break;

    /* renamed from: catch  reason: not valid java name */
    public TTFullScreenVideoAd f5861catch;

    /* renamed from: this  reason: not valid java name */
    public String f5862this;

    @Override // com.apk.e70
    /* renamed from: else */
    public void mo551else(String str) {
        super.mo551else(str);
        m556goto(str, this.f5860break);
    }

    @Override // com.apk.h70
    public void j(Activity activity) {
        n(activity);
    }

    public final boolean n(Activity activity) {
        boolean z;
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f5861catch;
        if (tTFullScreenVideoAd != null) {
            tTFullScreenVideoAd.showFullScreenVideoAd(activity, TTAdConstant.RitScenes.GAME_GIFT_BONUS, null);
            this.f5861catch = null;
            z = true;
        } else {
            z = false;
        }
        k(this.f5862this, this.f5860break);
        return z;
    }
}
