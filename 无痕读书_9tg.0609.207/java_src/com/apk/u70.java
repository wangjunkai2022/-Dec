package com.apk;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAd;
import com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener;
import com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdOptionUtil;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitialFull;
import com.swl.gg.sdk.TrAdSdk;
/* compiled from: GmProviderCpFullVideo.java */
/* loaded from: classes7.dex */
public class u70 extends h70 implements GMInterstitialFullAdListener {

    /* renamed from: break  reason: not valid java name */
    public String f4852break;

    /* renamed from: catch  reason: not valid java name */
    public String f4853catch;

    /* renamed from: class  reason: not valid java name */
    public v60 f4854class;

    /* renamed from: const  reason: not valid java name */
    public GMInterstitialFullAd f4855const;

    /* renamed from: final  reason: not valid java name */
    public final GMSettingConfigCallback f4856final = new Cif();

    /* renamed from: this  reason: not valid java name */
    public Activity f4857this;

    /* compiled from: GmProviderCpFullVideo.java */
    /* renamed from: com.apk.u70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements GMInterstitialFullAdLoadCallback {
        public Cdo() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdLoadCallback
        public void onInterstitialFullAdLoad() {
            u70 u70Var = u70.this;
            if (u70Var.f1242for) {
                return;
            }
            u70Var.f();
            u70 u70Var2 = u70.this;
            u70Var2.m548continue(u70Var2.f4852break, u70Var2.f4854class);
            u70 u70Var3 = u70.this;
            u70Var3.h(u70Var3.f4852break, 8000L, true, u70Var3.f4854class);
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdLoadCallback
        public void onInterstitialFullCached() {
            u70 u70Var = u70.this;
            if (u70Var.f1242for || u70Var.f1244new) {
                return;
            }
            u70Var.f();
            u70 u70Var2 = u70.this;
            u70Var2.m556goto(u70Var2.f4852break, u70Var2.f4854class);
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdLoadCallback
        public void onInterstitialFullLoadFail(@NonNull AdError adError) {
            u70 u70Var = u70.this;
            if (u70Var.f1242for) {
                return;
            }
            u70Var.f();
            u70 u70Var2 = u70.this;
            u70Var2.m550do(adError.code, adError.message, u70Var2.f4852break, u70Var2.f4854class);
            GMInterstitialFullAd gMInterstitialFullAd = u70.this.f4855const;
            if (gMInterstitialFullAd != null) {
                gMInterstitialFullAd.destroy();
                u70.this.f4855const = null;
            }
        }
    }

    /* compiled from: GmProviderCpFullVideo.java */
    /* renamed from: com.apk.u70$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements GMSettingConfigCallback {
        public Cif() {
        }

        @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
        public void configLoad() {
            u70 u70Var = u70.this;
            if (u70Var.f1242for) {
                return;
            }
            u70Var.o();
        }
    }

    @Override // com.apk.e70
    /* renamed from: else */
    public void mo551else(String str) {
        super.mo551else(str);
        m556goto(str, this.f4854class);
    }

    @Override // com.apk.h70
    public void j(Activity activity) {
        n(activity);
    }

    public final boolean n(Activity activity) {
        GMInterstitialFullAd gMInterstitialFullAd = this.f4855const;
        if (gMInterstitialFullAd == null || !gMInterstitialFullAd.isReady()) {
            return false;
        }
        this.f4855const.setAdInterstitialFullListener(this);
        this.f4855const.showAd(activity);
        k(this.f4852break, this.f4854class);
        return true;
    }

    public final void o() {
        m560instanceof(this.f4852break);
        m();
        GMAdSlotInterstitialFull build = new GMAdSlotInterstitialFull.Builder().setGMAdSlotBaiduOption(GMAdOptionUtil.getGMAdSlotBaiduOption().build()).setGMAdSlotGDTOption(GMAdOptionUtil.getGMAdSlotGDTOption().setGDTAutoPlayMuted(false).build()).setImageAdSize(600, 600).setUseSurfaceView(true).setUserID(TrAdSdk.getUserId()).setRewardName("").setRewardAmount(1).setOrientation(1).setDownloadType(i()).build();
        GMInterstitialFullAd gMInterstitialFullAd = new GMInterstitialFullAd(this.f4857this, this.f4853catch);
        this.f4855const = gMInterstitialFullAd;
        gMInterstitialFullAd.loadAd(build, new Cdo());
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener
    public void onAdLeftApplication() {
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener
    public void onAdOpened() {
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener
    public void onInterstitialFullClick() {
        if (this.f1242for) {
            return;
        }
        m571super(this.f4852break, this.f4854class);
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener
    public void onInterstitialFullClosed() {
        if (this.f1242for) {
            return;
        }
        m568return(this.f4852break, this.f4854class);
        GMInterstitialFullAd gMInterstitialFullAd = this.f4855const;
        if (gMInterstitialFullAd != null) {
            gMInterstitialFullAd.destroy();
            this.f4855const = null;
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener
    public void onInterstitialFullShow() {
        if (this.f1242for) {
            return;
        }
        l();
        m577transient(this.f4852break, this.f4854class);
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener
    public void onInterstitialFullShowFail(@NonNull AdError adError) {
        if (this.f1242for) {
            return;
        }
        o();
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener
    public void onRewardVerify(@NonNull RewardItem rewardItem) {
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener
    public void onSkippedVideo() {
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener
    public void onVideoComplete() {
        if (this.f1242for) {
            return;
        }
        m549default(this.f4852break);
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener
    public void onVideoError() {
    }
}
