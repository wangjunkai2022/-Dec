package com.apk;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAd;
import com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener;
import com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdOptionUtil;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitial;

/* compiled from: GmProviderInsert.java */
/* loaded from: classes7.dex */
public class a80 extends f70 {

    /* renamed from: break  reason: not valid java name */
    public GMInterstitialAd f46break;

    /* renamed from: case  reason: not valid java name */
    public String f47case;

    /* renamed from: catch  reason: not valid java name */
    public final GMSettingConfigCallback f48catch = new Cif();

    /* renamed from: else  reason: not valid java name */
    public String f49else;

    /* renamed from: goto  reason: not valid java name */
    public w60 f50goto;

    /* renamed from: this  reason: not valid java name */
    public final boolean f51this;

    /* renamed from: try  reason: not valid java name */
    public Activity f52try;

    /* compiled from: GmProviderInsert.java */
    /* renamed from: com.apk.a80$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements GMInterstitialAdLoadCallback {

        /* compiled from: GmProviderInsert.java */
        /* renamed from: com.apk.a80$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public class C0059do implements GMInterstitialAdListener {
            public C0059do() {
            }

            @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
            public void onAdLeftApplication() {
            }

            @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
            public void onAdOpened() {
            }

            @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
            public void onInterstitialAdClick() {
                a80 a80Var = a80.this;
                a80Var.m574this(a80Var.f47case, a80Var.f50goto);
            }

            @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
            public void onInterstitialClosed() {
                a80 a80Var = a80.this;
                a80Var.m575throw(a80Var.f47case, a80Var.f50goto);
                GMInterstitialAd gMInterstitialAd = a80.this.f46break;
                if (gMInterstitialAd != null) {
                    gMInterstitialAd.destroy();
                    a80.this.f46break = null;
                }
            }

            @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
            public void onInterstitialShow() {
                a80 a80Var = a80.this;
                a80Var.m569static(a80Var.f47case, a80Var.f50goto);
            }

            @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
            public void onInterstitialShowFail(@NonNull AdError adError) {
                a80 a80Var = a80.this;
                a80Var.m557if(adError.code, adError.message, a80Var.f47case, a80Var.f50goto);
            }
        }

        public Cdo() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdLoadCallback
        public void onInterstitialLoad() {
            a80.this.f46break.setAdInterstitialListener(new C0059do());
            a80 a80Var = a80.this;
            a80Var.m552extends(a80Var.f47case, a80Var.f50goto);
            a80 a80Var2 = a80.this;
            if (a80Var2.f51this) {
                Activity activity = a80Var2.f52try;
                GMInterstitialAd gMInterstitialAd = a80Var2.f46break;
                if (gMInterstitialAd == null || !gMInterstitialAd.isReady()) {
                    return;
                }
                a80Var2.f46break.showAd(activity);
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdLoadCallback
        public void onInterstitialLoadFail(@NonNull AdError adError) {
            a80 a80Var = a80.this;
            a80Var.m557if(adError.code, adError.message, a80Var.f47case, a80Var.f50goto);
            GMInterstitialAd gMInterstitialAd = a80.this.f46break;
            if (gMInterstitialAd != null) {
                gMInterstitialAd.destroy();
                a80.this.f46break = null;
            }
        }
    }

    /* compiled from: GmProviderInsert.java */
    /* renamed from: com.apk.a80$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements GMSettingConfigCallback {
        public Cif() {
        }

        @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
        public void configLoad() {
            a80.this.j();
        }
    }

    public a80(boolean z) {
        this.f51this = z;
    }

    public final void j() {
        m561interface(this.f47case);
        GMAdSlotInterstitial build = new GMAdSlotInterstitial.Builder().setGMAdSlotBaiduOption(GMAdOptionUtil.getGMAdSlotBaiduOption().build()).setGMAdSlotGDTOption(GMAdOptionUtil.getGMAdSlotGDTOption().build()).setImageAdSize(600, 600).setVolume(0.5f).setDownloadType(i()).build();
        GMInterstitialAd gMInterstitialAd = new GMInterstitialAd(this.f52try, this.f49else);
        this.f46break = gMInterstitialAd;
        gMInterstitialAd.loadAd(build, new Cdo());
    }
}
