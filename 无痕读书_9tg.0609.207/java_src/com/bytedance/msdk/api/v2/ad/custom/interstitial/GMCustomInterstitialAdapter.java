package com.bytedance.msdk.api.v2.ad.custom.interstitial;

import android.content.Context;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomVideoAdapter;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitial;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitialFull;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes8.dex */
public abstract class GMCustomInterstitialAdapter extends GMCustomVideoAdapter implements IGMCustomInterstitialEvent {

    /* renamed from: goto  reason: not valid java name */
    public volatile boolean f9161goto = false;

    @Override // com.bytedance.msdk.api.v2.ad.custom.interstitial.IGMCustomInterstitialEvent
    public final void callInterstitialAdClick() {
        if (this.f9161goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.interstitial.GMCustomInterstitialAdapter.2
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomInterstitialAdapter.this.checkClick(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.interstitial.GMCustomInterstitialAdapter.2.1
                        @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                        public void callback() {
                            GMInterstitialAdListener gMInterstitialAdListener = (GMInterstitialAdListener) GMCustomInterstitialAdapter.this.f9108new.getTTAdapterCallback();
                            if (gMInterstitialAdListener != null) {
                                gMInterstitialAdListener.onInterstitialAdClick();
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.interstitial.IGMCustomInterstitialEvent
    public final void callInterstitialAdLeftApplication() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.interstitial.GMCustomInterstitialAdapter.5
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMInterstitialAdListener gMInterstitialAdListener = (GMInterstitialAdListener) GMCustomInterstitialAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMInterstitialAdListener != null) {
                        gMInterstitialAdListener.onAdLeftApplication();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.interstitial.IGMCustomInterstitialEvent
    public final void callInterstitialAdOpened() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.interstitial.GMCustomInterstitialAdapter.4
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMInterstitialAdListener gMInterstitialAdListener = (GMInterstitialAdListener) GMCustomInterstitialAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMInterstitialAdListener != null) {
                        gMInterstitialAdListener.onAdOpened();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.interstitial.IGMCustomInterstitialEvent
    public final void callInterstitialClosed() {
        if (this.f9161goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.interstitial.GMCustomInterstitialAdapter.3
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMInterstitialAdListener gMInterstitialAdListener = (GMInterstitialAdListener) GMCustomInterstitialAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMInterstitialAdListener != null) {
                        gMInterstitialAdListener.onInterstitialClosed();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.interstitial.IGMCustomInterstitialEvent
    public final void callInterstitialShow() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.interstitial.GMCustomInterstitialAdapter.1
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomInterstitialAdapter.this.checkShow(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.interstitial.GMCustomInterstitialAdapter.1.1
                        @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                        public void callback() {
                            GMInterstitialAdListener gMInterstitialAdListener = (GMInterstitialAdListener) GMCustomInterstitialAdapter.this.f9108new.getTTAdapterCallback();
                            if (gMInterstitialAdListener != null) {
                                GMCustomInterstitialAdapter.this.f9161goto = true;
                                gMInterstitialAdListener.onInterstitialShow();
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.IGMCustomLoadAdCall
    public final void callLoadFail(GMCustomAdError gMCustomAdError) {
        if (!isCallLoadFailCall()) {
            TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
            if (tTAbsAdLoaderAdapter != null) {
                tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(AdError.ERROR_CODE_CUSTOM_INTERSTITIAL_LOAD_ERROR, AdError.getMessage(AdError.ERROR_CODE_CUSTOM_INTERSTITIAL_LOAD_ERROR), gMCustomAdError == null ? -1 : gMCustomAdError.getCode(), gMCustomAdError == null ? "" : gMCustomAdError.getMessage()));
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

    public abstract void load(Context context, GMAdSlotInterstitial gMAdSlotInterstitial, GMCustomServiceConfig gMCustomServiceConfig);

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter
    public void loadCustom(Context context, GMAdSlotBase gMAdSlotBase, GMCustomServiceConfig gMCustomServiceConfig) {
        if (gMAdSlotBase instanceof GMAdSlotInterstitialFull) {
            load(context, ((GMAdSlotInterstitialFull) gMAdSlotBase).getGMAdSlotInterstitial(), gMCustomServiceConfig);
        } else if (gMAdSlotBase instanceof GMAdSlotInterstitial) {
            load(context, (GMAdSlotInterstitial) gMAdSlotBase, gMCustomServiceConfig);
        } else {
            callLoadFail(new GMCustomAdError(AdError.ERROR_ADN_NO_ERROR_CODE, "ClassCastException：load ad fail adSlot is not GMAdSlotInterstitialFull or GMAdSlotInterstitial"));
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
            GMCustomInterstitialAd gMCustomInterstitialAd = new GMCustomInterstitialAd();
            this.f9108new = gMCustomInterstitialAd;
            gMCustomInterstitialAd.setMediaExtraInfo(this.f9105else);
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
