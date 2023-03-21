package com.apk;

import android.app.Activity;
import android.view.View;
import androidx.annotation.NonNull;
import com.apk.k50;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.bytedance.msdk.api.v2.ad.banner.GMBannerAd;
import com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener;
import com.bytedance.msdk.api.v2.ad.banner.GMBannerAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBanner;
/* compiled from: GmProviderBanner.java */
/* loaded from: classes7.dex */
public class t70 extends f70 implements GMBannerAdListener {

    /* renamed from: break  reason: not valid java name */
    public final GMSettingConfigCallback f4656break = new Cif();

    /* renamed from: case  reason: not valid java name */
    public String f4657case;

    /* renamed from: else  reason: not valid java name */
    public String f4658else;

    /* renamed from: goto  reason: not valid java name */
    public x60 f4659goto;

    /* renamed from: this  reason: not valid java name */
    public GMBannerAd f4660this;

    /* renamed from: try  reason: not valid java name */
    public Activity f4661try;

    /* compiled from: GmProviderBanner.java */
    /* renamed from: com.apk.t70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements GMBannerAdLoadCallback {
        public Cdo() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdLoadCallback
        public void onAdFailedToLoad(AdError adError) {
            t70 t70Var = t70.this;
            t70Var.m555for(adError.code, adError.message, t70Var.f4657case, t70Var.f4659goto);
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdLoadCallback
        public void onAdLoaded() {
            t70 t70Var = t70.this;
            GMBannerAd gMBannerAd = t70Var.f4660this;
            if (gMBannerAd == null) {
                t70Var.m555for(83008, "请求成功，但是返回的list为空", t70Var.f4657case, t70Var.f4659goto);
                return;
            }
            View bannerView = gMBannerAd.getBannerView();
            t70 t70Var2 = t70.this;
            t70Var.m544case(bannerView, t70Var2.f4657case, t70Var2.f4659goto);
        }
    }

    /* compiled from: GmProviderBanner.java */
    /* renamed from: com.apk.t70$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements GMSettingConfigCallback {
        public Cif() {
        }

        @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
        public void configLoad() {
            t70.this.j();
        }
    }

    public final void j() {
        m565private(this.f4657case);
        GMBannerAd gMBannerAd = this.f4660this;
        if (gMBannerAd != null) {
            gMBannerAd.destroy();
            this.f4660this = null;
        }
        GMAdSlotBanner build = new GMAdSlotBanner.Builder().setBannerSize(6).setImageAdSize(r70.m2247for(k50.Cdo.f2480do), r70.m2247for(k50.Cdo.f2481if)).setRefreshTime(0).setAllowShowCloseBtn(false).setDownloadType(i()).build();
        GMBannerAd gMBannerAd2 = new GMBannerAd(this.f4661try, this.f4658else);
        this.f4660this = gMBannerAd2;
        gMBannerAd2.setAdBannerListener(this);
        this.f4660this.loadAd(build, new Cdo());
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdClicked() {
        m543break(this.f4657case, this.f4659goto);
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdClosed() {
        m580while(this.f4657case, this.f4659goto);
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdLeftApplication() {
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdOpened() {
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdShow() {
        m572switch(this.f4657case, this.f4659goto);
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdShowFail(@NonNull AdError adError) {
        j();
    }
}
