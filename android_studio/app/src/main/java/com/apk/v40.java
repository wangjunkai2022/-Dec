package com.apk;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.bytedance.msdk.api.v2.ad.reward.GMRewardAd;
import com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener;
import com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdOptionUtil;
import com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo;
import com.swl.gg.sdk.TrAdSdk;

/* compiled from: GmProviderReward.java */
/* loaded from: classes7.dex */
public class v40 extends h70 implements GMRewardedAdListener {

    /* renamed from: break  reason: not valid java name */
    public String f5011break;

    /* renamed from: catch  reason: not valid java name */
    public String f5012catch;

    /* renamed from: class  reason: not valid java name */
    public z60 f5013class;

    /* renamed from: const  reason: not valid java name */
    public GMRewardAd f5014const;

    /* renamed from: final  reason: not valid java name */
    public final GMSettingConfigCallback f5015final = new Cif();

    /* renamed from: this  reason: not valid java name */
    public Activity f5016this;

    /* compiled from: GmProviderReward.java */
    /* renamed from: com.apk.v40$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements GMRewardedAdLoadCallback {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f5017do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ z60 f5019if;

        public Cdo(String str, z60 z60Var) {
            this.f5017do = str;
            this.f5019if = z60Var;
        }

        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdLoadCallback
        public void onRewardVideoAdLoad() {
            v40 v40Var = v40.this;
            if (v40Var.f1242for) {
                return;
            }
            v40Var.f();
            v40.this.m554finally(this.f5017do, this.f5019if);
            v40.this.h(this.f5017do, 8000L, true, this.f5019if);
        }

        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdLoadCallback
        public void onRewardVideoCached() {
            v40 v40Var = v40.this;
            if (v40Var.f1242for || v40Var.f1244new) {
                return;
            }
            v40Var.f();
            v40.this.c(this.f5017do, this.f5019if);
        }

        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdLoadCallback
        public void onRewardVideoLoadFail(@NonNull AdError adError) {
            v40 v40Var = v40.this;
            if (v40Var.f1242for) {
                return;
            }
            v40Var.f();
            v40.this.m563new(adError.code, adError.message, this.f5017do, this.f5019if);
            GMRewardAd gMRewardAd = v40.this.f5014const;
            if (gMRewardAd != null) {
                gMRewardAd.destroy();
                v40.this.f5014const = null;
            }
        }
    }

    /* compiled from: GmProviderReward.java */
    /* renamed from: com.apk.v40$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements GMSettingConfigCallback {
        public Cif() {
        }

        @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
        public void configLoad() {
            v40 v40Var = v40.this;
            if (v40Var.f1242for) {
                return;
            }
            v40Var.n(v40Var.f5016this, v40Var.f5011break, v40Var.f5012catch, v40Var.f5013class);
        }
    }

    @Override // com.apk.e70
    /* renamed from: else */
    public void mo551else(String str) {
        super.mo551else(str);
        c(str, this.f5013class);
    }

    @Override // com.apk.h70
    public void j(Activity activity) {
        o(activity);
    }

    public final void n(Activity activity, String str, String str2, z60 z60Var) {
        m566protected(str);
        m();
        GMAdSlotRewardVideo build = new GMAdSlotRewardVideo.Builder().setGMAdSlotGDTOption(GMAdOptionUtil.getGMAdSlotGDTOption().setGDTAutoPlayMuted(false).build()).setUseSurfaceView(true).setRewardName("").setRewardAmount(1).setUserID(TrAdSdk.getUserId()).setOrientation(1).setDownloadType(i()).build();
        GMRewardAd gMRewardAd = new GMRewardAd(activity, str2);
        this.f5014const = gMRewardAd;
        gMRewardAd.loadAd(build, new Cdo(str, z60Var));
    }

    public final boolean o(Activity activity) {
        boolean z;
        GMRewardAd gMRewardAd = this.f5014const;
        if (gMRewardAd == null || !gMRewardAd.isReady()) {
            z = false;
        } else {
            this.f5014const.setRewardAdListener(this);
            this.f5014const.showRewardAd(this.f5016this);
            z = true;
        }
        k(this.f5011break, this.f5013class);
        return z;
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onRewardClick() {
        if (this.f1242for) {
            return;
        }
        m545catch(this.f5011break, this.f5013class);
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onRewardVerify(@NonNull RewardItem rewardItem) {
        if (this.f1242for) {
            return;
        }
        a(this.f5011break, this.f5013class);
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onRewardedAdClosed() {
        if (this.f1242for) {
            return;
        }
        m559import(this.f5011break, this.f5013class);
        GMRewardAd gMRewardAd = this.f5014const;
        if (gMRewardAd != null) {
            gMRewardAd.destroy();
            this.f5014const = null;
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onRewardedAdShow() {
        if (this.f1242for) {
            return;
        }
        l();
        m579volatile(this.f5011break, this.f5013class);
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onRewardedAdShowFail(@NonNull AdError adError) {
        if (this.f1242for) {
            return;
        }
        this.f5015final.configLoad();
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onSkippedVideo() {
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onVideoComplete() {
        if (this.f1242for) {
            return;
        }
        d(this.f5011break);
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onVideoError() {
    }
}
