package com.apk;

import android.app.Activity;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
/* compiled from: GdtProviderReward.java */
/* loaded from: classes7.dex */
public class m70 extends h70 {

    /* renamed from: break  reason: not valid java name */
    public z60 f2988break;

    /* renamed from: catch  reason: not valid java name */
    public RewardVideoAD f2989catch;

    /* renamed from: this  reason: not valid java name */
    public String f2990this;

    @Override // com.apk.e70
    /* renamed from: else */
    public void mo551else(String str) {
        super.mo551else(str);
        c(str, this.f2988break);
    }

    @Override // com.apk.h70
    public void j(Activity activity) {
        n(activity);
    }

    public final boolean n(Activity activity) {
        boolean z;
        RewardVideoAD rewardVideoAD = this.f2989catch;
        if (rewardVideoAD == null || !rewardVideoAD.isValid()) {
            z = false;
        } else {
            this.f2989catch.showAD();
            this.f2989catch = null;
            z = true;
        }
        k(this.f2990this, this.f2988break);
        return z;
    }
}
