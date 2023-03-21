package com.bytedance.msdk.api.v2.ad;

import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.GMAdSlotNative;
import com.bytedance.msdk.api.v2.slot.GMAdSlotSplash;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;

/* loaded from: classes8.dex */
public abstract class GMBaseAd {

    /* renamed from: do  reason: not valid java name */
    public final AdSlot.Builder f9079do = new AdSlot.Builder();

    /* renamed from: do  reason: not valid java name */
    public final void m3587do(GMAdSlotBase gMAdSlotBase) {
        this.f9079do.setScenarioId(gMAdSlotBase.getScenarioId());
        this.f9079do.setBidNotify(gMAdSlotBase.isBidNotify());
        this.f9079do.setTestSlotId(gMAdSlotBase.getTestSlotId());
        if (gMAdSlotBase instanceof GMAdSlotSplash) {
            this.f9079do.setTTVideoOption(gMAdSlotBase.createTTVideoOption(((GMAdSlotSplash) gMAdSlotBase).isSplashPreLoad()));
        } else {
            this.f9079do.setTTVideoOption(gMAdSlotBase.createTTVideoOption(false));
        }
        this.f9079do.setTTRequestExtraParams(gMAdSlotBase.getTTRequestExtraParams());
        this.f9079do.setDownloadType(gMAdSlotBase.getDownloadType());
        this.f9079do.setV2Request(true);
    }

    public AdSlot getAdSlot() {
        return this.f9079do.build();
    }

    public void loadAd(GMAdSlotNative gMAdSlotNative, GMNativeAdLoadCallback gMNativeAdLoadCallback) {
        if (gMAdSlotNative != null) {
            m3587do(gMAdSlotNative);
            this.f9079do.setImageAdSize(gMAdSlotNative.getWidth(), gMAdSlotNative.getHeight());
            this.f9079do.setAdCount(gMAdSlotNative.getAdCount());
            this.f9079do.setAdStyleType(gMAdSlotNative.getAdStyleType());
            this.f9079do.setAdmobNativeAdOptions(gMAdSlotNative.getAdmobNativeAdOptions());
            this.f9079do.setUserID(gMAdSlotNative.getUserID());
            GMAdSlotGDTOption gMAdSlotGDTOption = gMAdSlotNative.getGMAdSlotGDTOption();
            if (gMAdSlotGDTOption != null) {
                this.f9079do.setGdtNativeAdLogoParams(gMAdSlotGDTOption.getNativeAdLogoParams());
            }
        }
    }
}
