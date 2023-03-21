package com.bytedance.msdk.api.v2.ad.custom.splash;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter;
import com.bytedance.msdk.api.v2.ad.custom.base.IGMCustomLoadAdCall;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.GMAdSlotSplash;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public abstract class GMCustomSplashAdapter extends GMCustomBaseAdapter implements IGMCustomSplashEvent, IGMCustomLoadAdCall {

    /* renamed from: goto  reason: not valid java name */
    public volatile boolean f9213goto = false;

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.IGMCustomLoadAdCall
    public final void callLoadFail(GMCustomAdError gMCustomAdError) {
        if (!isCallLoadFailCall()) {
            TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
            if (tTAbsAdLoaderAdapter != null) {
                tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(AdError.ERROR_CODE_CUSTOM_SPLASH_LOAD_ERROR, AdError.getMessage(AdError.ERROR_CODE_CUSTOM_SPLASH_LOAD_ERROR), gMCustomAdError == null ? -1 : gMCustomAdError.getCode(), gMCustomAdError == null ? "" : gMCustomAdError.getMessage()));
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

    @Override // com.bytedance.msdk.api.v2.ad.custom.splash.IGMCustomSplashEvent
    public final void callSplashAdClicked() {
        if (this.f9213goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.splash.GMCustomSplashAdapter.1
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomSplashAdapter.this.checkClick(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.splash.GMCustomSplashAdapter.1.1
                        @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                        public void callback() {
                            GMSplashAdListener gMSplashAdListener = (GMSplashAdListener) GMCustomSplashAdapter.this.f9108new.getTTAdapterCallback();
                            if (gMSplashAdListener != null) {
                                gMSplashAdListener.onAdClicked();
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.splash.IGMCustomSplashEvent
    public final void callSplashAdDismiss() {
        if (this.f9213goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.splash.GMCustomSplashAdapter.4
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMSplashAdListener gMSplashAdListener = (GMSplashAdListener) GMCustomSplashAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMSplashAdListener != null) {
                        gMSplashAdListener.onAdDismiss();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.splash.IGMCustomSplashEvent
    public final void callSplashAdShow() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.splash.GMCustomSplashAdapter.2
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomSplashAdapter.this.checkShow(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.splash.GMCustomSplashAdapter.2.1
                        @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                        public void callback() {
                            GMSplashAdListener gMSplashAdListener = (GMSplashAdListener) GMCustomSplashAdapter.this.f9108new.getTTAdapterCallback();
                            if (gMSplashAdListener != null) {
                                GMCustomSplashAdapter.this.f9213goto = true;
                                gMSplashAdListener.onAdShow();
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.splash.IGMCustomSplashEvent
    public final void callSplashAdSkip() {
        if (this.f9213goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.splash.GMCustomSplashAdapter.3
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMSplashAdListener gMSplashAdListener = (GMSplashAdListener) GMCustomSplashAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMSplashAdListener != null) {
                        gMSplashAdListener.onAdSkip();
                    }
                }
            });
        }
    }

    public abstract void load(Context context, GMAdSlotSplash gMAdSlotSplash, GMCustomServiceConfig gMCustomServiceConfig);

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter
    public void loadCustom(Context context, GMAdSlotBase gMAdSlotBase, GMCustomServiceConfig gMCustomServiceConfig) {
        if (gMAdSlotBase instanceof GMAdSlotSplash) {
            load(context, (GMAdSlotSplash) gMAdSlotBase, gMCustomServiceConfig);
        } else {
            callLoadFail(new GMCustomAdError(AdError.ERROR_ADN_NO_ERROR_CODE, "ClassCastException：load ad fail adSlot is not GMAdSlotSplash"));
        }
    }

    public final void setMediaExtraInfo(Map<String, Object> map) {
        if (map != null) {
            HashMap hashMap = new HashMap();
            this.f9105else = hashMap;
            hashMap.putAll(map);
        }
    }

    public abstract void showAd(ViewGroup viewGroup);

    public final void showAdInner(ViewGroup viewGroup) {
        try {
            this.f9104do = true;
            showAd(viewGroup);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.IGMCustomLoadAdCall
    public final void callLoadSuccess(double d) {
        if (!isCallLoadSuccessCall()) {
            Logger.e("TTMediationSDK", "自定义Adapter callLoadSuccess");
            GMCustomSplashAd gMCustomSplashAd = new GMCustomSplashAd();
            this.f9108new = gMCustomSplashAd;
            gMCustomSplashAd.setMediaExtraInfo(this.f9105else);
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
