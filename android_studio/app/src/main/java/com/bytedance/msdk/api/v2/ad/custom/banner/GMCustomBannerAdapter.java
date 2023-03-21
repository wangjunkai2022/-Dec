package com.bytedance.msdk.api.v2.ad.custom.banner;

import android.content.Context;
import android.view.View;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter;
import com.bytedance.msdk.api.v2.ad.custom.base.IGMCustomLoadAdCall;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBanner;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public abstract class GMCustomBannerAdapter extends GMCustomBaseAdapter implements IGMCustomBannerEvent, IGMCustomLoadAdCall {

    /* renamed from: goto  reason: not valid java name */
    public volatile boolean f9095goto = false;

    @Override // com.bytedance.msdk.api.v2.ad.custom.banner.IGMCustomBannerEvent
    public final void callBannerAdClicked() {
        if (this.f9095goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.banner.GMCustomBannerAdapter.2
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomBannerAdapter.this.checkClick(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.banner.GMCustomBannerAdapter.2.1
                        @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                        public void callback() {
                            GMBannerAdListener gMBannerAdListener = (GMBannerAdListener) GMCustomBannerAdapter.this.f9108new.getTTAdapterCallback();
                            if (gMBannerAdListener != null) {
                                gMBannerAdListener.onAdClicked();
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.banner.IGMCustomBannerEvent
    public final void callBannerAdClosed() {
        if (this.f9095goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.banner.GMCustomBannerAdapter.3
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMBannerAdListener gMBannerAdListener = (GMBannerAdListener) GMCustomBannerAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMBannerAdListener != null) {
                        gMBannerAdListener.onAdClosed();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.banner.IGMCustomBannerEvent
    public final void callBannerAdLeftApplication() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.banner.GMCustomBannerAdapter.5
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMBannerAdListener gMBannerAdListener = (GMBannerAdListener) GMCustomBannerAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMBannerAdListener != null) {
                        gMBannerAdListener.onAdLeftApplication();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.banner.IGMCustomBannerEvent
    public final void callBannerAdOpened() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.banner.GMCustomBannerAdapter.4
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMBannerAdListener gMBannerAdListener = (GMBannerAdListener) GMCustomBannerAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMBannerAdListener != null) {
                        gMBannerAdListener.onAdOpened();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.banner.IGMCustomBannerEvent
    public final void callBannerAdShow() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.banner.GMCustomBannerAdapter.1
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMBannerAdListener gMBannerAdListener = (GMBannerAdListener) GMCustomBannerAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMBannerAdListener != null) {
                        GMCustomBannerAdapter.this.f9095goto = true;
                        gMBannerAdListener.onAdShow();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.IGMCustomLoadAdCall
    public final void callLoadFail(GMCustomAdError gMCustomAdError) {
        if (!isCallLoadFailCall()) {
            TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
            if (tTAbsAdLoaderAdapter != null) {
                tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(AdError.ERROR_CODE_CUSTOM_BANNER_LOAD_ERROR, AdError.getMessage(AdError.ERROR_CODE_CUSTOM_BANNER_LOAD_ERROR), gMCustomAdError == null ? -1 : gMCustomAdError.getCode(), gMCustomAdError == null ? "" : gMCustomAdError.getMessage()));
                return;
            }
            return;
        }
        Logger.e("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.IGMCustomLoadAdCall
    public final void callLoadSuccess() {
        callLoadSuccess(0.0d);
    }

    public abstract View getAdView();

    public final View getAdViewInner() {
        try {
            return getAdView();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public abstract void load(Context context, GMAdSlotBanner gMAdSlotBanner, GMCustomServiceConfig gMCustomServiceConfig);

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter
    public void loadCustom(Context context, GMAdSlotBase gMAdSlotBase, GMCustomServiceConfig gMCustomServiceConfig) {
        if (gMAdSlotBase instanceof GMAdSlotBanner) {
            load(context, (GMAdSlotBanner) gMAdSlotBase, gMCustomServiceConfig);
        } else {
            callLoadFail(new GMCustomAdError(AdError.ERROR_ADN_NO_ERROR_CODE, "ClassCastException：load ad fail adSlot is not GMAdSlotBanner"));
        }
    }

    public final void setMediaExtraInfo(Map<String, Object> map) {
        if (map != null) {
            HashMap hashMap = new HashMap();
            this.f9105else = hashMap;
            hashMap.putAll(map);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.IGMCustomLoadAdCall
    public final void callLoadSuccess(double d) {
        if (!isCallLoadSuccessCall()) {
            Logger.e("TTMediationSDK", "自定义Adapter callLoadSuccess");
            GMCustomBannerAd gMCustomBannerAd = new GMCustomBannerAd();
            this.f9108new = gMCustomBannerAd;
            gMCustomBannerAd.setMediaExtraInfo(this.f9105else);
            this.f9108new.setAdType(this.f9107if.t());
            if (d > 0.0d && getBiddingType() == 1) {
                this.f9108new.setCpm(d);
            }
            this.f9108new.setGMCustomBaseAdapter(this);
            TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
            if (tTAbsAdLoaderAdapter != null) {
                tTAbsAdLoaderAdapter.notifyAdLoaded(this.f9108new);
                return;
            }
            return;
        }
        Logger.e("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
    }
}
