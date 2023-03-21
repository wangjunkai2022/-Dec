package com.bytedance.msdk.api.v2.ad.custom.fullvideo;

import android.content.Context;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomAd;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomVideoAdapter;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.GMAdSlotFullVideo;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitialFull;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public abstract class GMCustomFullVideoAdapter extends GMCustomVideoAdapter implements IGMCustomFullVideoEvent {

    /* renamed from: goto  reason: not valid java name */
    public volatile boolean f9148goto = false;

    public final void callAdVideoCache() {
        GMCustomAd gMCustomAd;
        TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
        if (tTAbsAdLoaderAdapter == null || (gMCustomAd = this.f9108new) == null) {
            return;
        }
        tTAbsAdLoaderAdapter.notifyAdVideoCache(gMCustomAd, (AdError) null);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.fullvideo.IGMCustomFullVideoEvent
    public final void callFullVideoAdClick() {
        if (this.f9148goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.fullvideo.GMCustomFullVideoAdapter.2
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomFullVideoAdapter.this.checkClick(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.fullvideo.GMCustomFullVideoAdapter.2.1
                        @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                        public void callback() {
                            GMFullVideoAdListener gMFullVideoAdListener = (GMFullVideoAdListener) GMCustomFullVideoAdapter.this.f9108new.getTTAdapterCallback();
                            if (gMFullVideoAdListener != null) {
                                gMFullVideoAdListener.onFullVideoAdClick();
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.fullvideo.IGMCustomFullVideoEvent
    public final void callFullVideoAdClosed() {
        if (this.f9148goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.fullvideo.GMCustomFullVideoAdapter.3
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMFullVideoAdListener gMFullVideoAdListener = (GMFullVideoAdListener) GMCustomFullVideoAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMFullVideoAdListener != null) {
                        gMFullVideoAdListener.onFullVideoAdClosed();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.fullvideo.IGMCustomFullVideoEvent
    public final void callFullVideoAdShow() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.fullvideo.GMCustomFullVideoAdapter.1
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomFullVideoAdapter.this.checkShow(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.fullvideo.GMCustomFullVideoAdapter.1.1
                        @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                        public void callback() {
                            GMFullVideoAdListener gMFullVideoAdListener = (GMFullVideoAdListener) GMCustomFullVideoAdapter.this.f9108new.getTTAdapterCallback();
                            if (gMFullVideoAdListener != null) {
                                GMCustomFullVideoAdapter.this.f9148goto = true;
                                gMFullVideoAdListener.onFullVideoAdShow();
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.fullvideo.IGMCustomFullVideoEvent
    public final void callFullVideoComplete() {
        if (this.f9148goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.fullvideo.GMCustomFullVideoAdapter.4
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMFullVideoAdListener gMFullVideoAdListener = (GMFullVideoAdListener) GMCustomFullVideoAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMFullVideoAdListener != null) {
                        gMFullVideoAdListener.onVideoComplete();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.fullvideo.IGMCustomFullVideoEvent
    public final void callFullVideoError() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.fullvideo.GMCustomFullVideoAdapter.5
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMFullVideoAdListener gMFullVideoAdListener = (GMFullVideoAdListener) GMCustomFullVideoAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMFullVideoAdListener != null) {
                        gMFullVideoAdListener.onVideoError();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.fullvideo.IGMCustomFullVideoEvent
    public final void callFullVideoRewardVerify(final RewardItem rewardItem) {
        if (!this.f9148goto || rewardItem == null || this.f9108new == null) {
            return;
        }
        checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.fullvideo.GMCustomFullVideoAdapter.7
            @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
            public void callback() {
                GMFullVideoAdListener gMFullVideoAdListener = (GMFullVideoAdListener) GMCustomFullVideoAdapter.this.f9108new.getTTAdapterCallback();
                if (gMFullVideoAdListener != null) {
                    gMFullVideoAdListener.onRewardVerify(rewardItem);
                }
            }
        });
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.fullvideo.IGMCustomFullVideoEvent
    public final void callFullVideoSkippedVideo() {
        if (this.f9148goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.fullvideo.GMCustomFullVideoAdapter.6
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMFullVideoAdListener gMFullVideoAdListener = (GMFullVideoAdListener) GMCustomFullVideoAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMFullVideoAdListener != null) {
                        gMFullVideoAdListener.onSkippedVideo();
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
                tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(AdError.ERROR_CODE_CUSTOM_FULL_VIDEO_LOAD_ERROR, AdError.getMessage(AdError.ERROR_CODE_CUSTOM_FULL_VIDEO_SHOW_ERROR), gMCustomAdError == null ? -1 : gMCustomAdError.getCode(), gMCustomAdError == null ? "" : gMCustomAdError.getMessage()));
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

    public abstract void load(Context context, GMAdSlotFullVideo gMAdSlotFullVideo, GMCustomServiceConfig gMCustomServiceConfig);

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter
    public void loadCustom(Context context, GMAdSlotBase gMAdSlotBase, GMCustomServiceConfig gMCustomServiceConfig) {
        if (gMAdSlotBase instanceof GMAdSlotInterstitialFull) {
            load(context, ((GMAdSlotInterstitialFull) gMAdSlotBase).getGMAdSlotFullVideo(), gMCustomServiceConfig);
        } else if (gMAdSlotBase instanceof GMAdSlotFullVideo) {
            load(context, (GMAdSlotFullVideo) gMAdSlotBase, gMCustomServiceConfig);
        } else {
            callLoadFail(new GMCustomAdError(AdError.ERROR_ADN_NO_ERROR_CODE, "ClassCastException：load ad fail adSlot is not GMAdSlotInterstitialFull or GMAdSlotFullVideo"));
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
            GMCustomFullVideoAd gMCustomFullVideoAd = new GMCustomFullVideoAd();
            this.f9108new = gMCustomFullVideoAd;
            gMCustomFullVideoAd.setMediaExtraInfo(this.f9105else);
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
