package com.apk;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAd;
import com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener;
import com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdOptionUtil;
import com.bytedance.msdk.api.v2.slot.GMAdSlotFullVideo;
import com.swl.gg.sdk.TrAdSdk;

/* compiled from: GmProviderFullVideo.java */
/* loaded from: classes7.dex */
public class y70 extends h70 implements GMFullVideoAdListener {

    /* renamed from: break  reason: not valid java name */
    public String f5864break;

    /* renamed from: catch  reason: not valid java name */
    public String f5865catch;

    /* renamed from: class  reason: not valid java name */
    public v60 f5866class;

    /* renamed from: const  reason: not valid java name */
    public GMFullVideoAd f5867const;

    /* renamed from: final  reason: not valid java name */
    public final GMSettingConfigCallback f5868final = new Cif();

    /* renamed from: this  reason: not valid java name */
    public Activity f5869this;

    /* compiled from: GmProviderFullVideo.java */
    /* renamed from: com.apk.y70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements GMFullVideoAdLoadCallback {
        public Cdo() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdLoadCallback
        public void onFullVideoAdLoad() {
            y70 y70Var = y70.this;
            if (y70Var.f1242for) {
                return;
            }
            y70Var.f();
            y70 y70Var2 = y70.this;
            y70Var2.m548continue(y70Var2.f5864break, y70Var2.f5866class);
            y70 y70Var3 = y70.this;
            y70Var3.h(y70Var3.f5864break, 8000L, true, y70Var3.f5866class);
        }

        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdLoadCallback
        public void onFullVideoCached() {
            y70 y70Var = y70.this;
            if (y70Var.f1242for || y70Var.f1244new) {
                return;
            }
            y70Var.f();
            y70 y70Var2 = y70.this;
            y70Var2.m556goto(y70Var2.f5864break, y70Var2.f5866class);
        }

        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdLoadCallback
        public void onFullVideoLoadFail(@NonNull AdError adError) {
            y70 y70Var = y70.this;
            if (y70Var.f1242for) {
                return;
            }
            y70Var.f();
            y70 y70Var2 = y70.this;
            y70Var2.m550do(adError.code, adError.message, y70Var2.f5864break, y70Var2.f5866class);
            GMFullVideoAd gMFullVideoAd = y70.this.f5867const;
            if (gMFullVideoAd != null) {
                gMFullVideoAd.destroy();
                y70.this.f5867const = null;
            }
        }
    }

    /* compiled from: GmProviderFullVideo.java */
    /* renamed from: com.apk.y70$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements GMSettingConfigCallback {
        public Cif() {
        }

        @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
        public void configLoad() {
            y70 y70Var = y70.this;
            if (y70Var.f1242for) {
                return;
            }
            y70Var.o();
        }
    }

    @Override // com.apk.e70
    /* renamed from: else */
    public void mo551else(String str) {
        super.mo551else(str);
        m556goto(str, this.f5866class);
    }

    @Override // com.apk.h70
    public void j(Activity activity) {
        n(activity);
    }

    public final boolean n(Activity activity) {
        boolean z;
        GMFullVideoAd gMFullVideoAd = this.f5867const;
        if (gMFullVideoAd == null || !gMFullVideoAd.isReady()) {
            z = false;
        } else {
            this.f5867const.setFullVideoAdListener(this);
            this.f5867const.showFullAd(activity);
            z = true;
        }
        k(this.f5864break, this.f5866class);
        return z;
    }

    public final void o() {
        m560instanceof(this.f5864break);
        m();
        GMAdSlotFullVideo build = new GMAdSlotFullVideo.Builder().setGMAdSlotGDTOption(GMAdOptionUtil.getGMAdSlotGDTOption().setGDTAutoPlayMuted(false).build()).setUseSurfaceView(true).setUserID(TrAdSdk.getUserId()).setRewardName("").setRewardAmount(1).setOrientation(1).setDownloadType(i()).build();
        GMFullVideoAd gMFullVideoAd = new GMFullVideoAd(this.f5869this, this.f5865catch);
        this.f5867const = gMFullVideoAd;
        gMFullVideoAd.loadAd(build, new Cdo());
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onFullVideoAdClick() {
        if (this.f1242for) {
            return;
        }
        m571super(this.f5864break, this.f5866class);
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onFullVideoAdClosed() {
        if (this.f1242for) {
            return;
        }
        m568return(this.f5864break, this.f5866class);
        GMFullVideoAd gMFullVideoAd = this.f5867const;
        if (gMFullVideoAd != null) {
            gMFullVideoAd.destroy();
            this.f5867const = null;
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onFullVideoAdShow() {
        if (this.f1242for) {
            return;
        }
        l();
        m577transient(this.f5864break, this.f5866class);
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onFullVideoAdShowFail(@NonNull AdError adError) {
        if (this.f1242for) {
            return;
        }
        o();
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onRewardVerify(@NonNull RewardItem rewardItem) {
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onSkippedVideo() {
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onVideoComplete() {
        if (this.f1242for) {
            return;
        }
        m549default(this.f5864break);
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onVideoError() {
    }
}
