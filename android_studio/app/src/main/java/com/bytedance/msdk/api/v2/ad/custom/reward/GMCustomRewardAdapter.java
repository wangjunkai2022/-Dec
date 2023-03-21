package com.bytedance.msdk.api.v2.ad.custom.reward;

import android.app.Activity;
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
import com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public abstract class GMCustomRewardAdapter extends GMCustomVideoAdapter implements IGMCustomRewardEvent {

    /* renamed from: goto  reason: not valid java name */
    public volatile boolean f9202goto = false;

    public final void callAdVideoCache() {
        GMCustomAd gMCustomAd;
        TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
        if (tTAbsAdLoaderAdapter == null || (gMCustomAd = this.f9108new) == null) {
            return;
        }
        tTAbsAdLoaderAdapter.notifyAdVideoCache(gMCustomAd, (AdError) null);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.IGMCustomLoadAdCall
    public final void callLoadFail(GMCustomAdError gMCustomAdError) {
        if (!isCallLoadFailCall()) {
            TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
            if (tTAbsAdLoaderAdapter != null) {
                tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(AdError.ERROR_CODE_CUSTOM_REWARD_LOAD_ERROR, AdError.getMessage(AdError.ERROR_CODE_CUSTOM_REWARD_LOAD_ERROR), gMCustomAdError == null ? -1 : gMCustomAdError.getCode(), gMCustomAdError == null ? "" : gMCustomAdError.getMessage()));
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

    @Override // com.bytedance.msdk.api.v2.ad.custom.reward.IGMCustomRewardEvent
    public final void callRewardClick() {
        if (this.f9202goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter.2
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomRewardAdapter.this.checkClick(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter.2.1
                        @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                        public void callback() {
                            GMRewardedAdListener gMRewardedAdListener = (GMRewardedAdListener) GMCustomRewardAdapter.this.f9108new.getTTAdapterCallback();
                            if (gMRewardedAdListener != null) {
                                gMRewardedAdListener.onRewardClick();
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.reward.IGMCustomRewardEvent
    public final void callRewardSkippedVideo() {
        if (this.f9202goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter.7
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMRewardedAdListener gMRewardedAdListener = (GMRewardedAdListener) GMCustomRewardAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMRewardedAdListener != null) {
                        gMRewardedAdListener.onSkippedVideo();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.reward.IGMCustomRewardEvent
    public final void callRewardVerify(final RewardItem rewardItem) {
        if (this.f9202goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter.6
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMRewardedAdListener gMRewardedAdListener = (GMRewardedAdListener) GMCustomRewardAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMRewardedAdListener != null) {
                        gMRewardedAdListener.onRewardVerify(rewardItem);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.reward.IGMCustomRewardEvent
    public final void callRewardVideoComplete() {
        if (this.f9202goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter.4
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMRewardedAdListener gMRewardedAdListener = (GMRewardedAdListener) GMCustomRewardAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMRewardedAdListener != null) {
                        gMRewardedAdListener.onVideoComplete();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.reward.IGMCustomRewardEvent
    public final void callRewardVideoError() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter.5
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMRewardedAdListener gMRewardedAdListener = (GMRewardedAdListener) GMCustomRewardAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMRewardedAdListener != null) {
                        gMRewardedAdListener.onVideoError();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.reward.IGMCustomRewardEvent
    public final void callRewardedAdClosed() {
        if (this.f9202goto && this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter.3
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMRewardedAdListener gMRewardedAdListener = (GMRewardedAdListener) GMCustomRewardAdapter.this.f9108new.getTTAdapterCallback();
                    if (gMRewardedAdListener != null) {
                        gMRewardedAdListener.onRewardedAdClosed();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.reward.IGMCustomRewardEvent
    public final void callRewardedAdShow() {
        if (this.f9108new != null) {
            checkLoadSuccess(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter.1
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomRewardAdapter.this.checkShow(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter.1.1
                        @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                        public void callback() {
                            GMRewardedAdListener gMRewardedAdListener = (GMRewardedAdListener) GMCustomRewardAdapter.this.f9108new.getTTAdapterCallback();
                            if (gMRewardedAdListener != null) {
                                GMCustomRewardAdapter.this.f9202goto = true;
                                gMRewardedAdListener.onRewardedAdShow();
                            }
                        }
                    });
                }
            });
        }
    }

    public abstract void load(Context context, GMAdSlotRewardVideo gMAdSlotRewardVideo, GMCustomServiceConfig gMCustomServiceConfig);

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter
    public void loadCustom(Context context, GMAdSlotBase gMAdSlotBase, GMCustomServiceConfig gMCustomServiceConfig) {
        if (gMAdSlotBase instanceof GMAdSlotRewardVideo) {
            load(context, (GMAdSlotRewardVideo) gMAdSlotBase, gMCustomServiceConfig);
        } else {
            callLoadFail(new GMCustomAdError(AdError.ERROR_ADN_NO_ERROR_CODE, "ClassCastException：load ad fail adSlot is not GMAdSlotRewardVideo"));
        }
    }

    public final void setMediaExtraInfo(Map<String, Object> map) {
        if (map != null) {
            HashMap hashMap = new HashMap();
            this.f9105else = hashMap;
            hashMap.putAll(map);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomVideoAdapter
    public abstract void showAd(Activity activity);

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.IGMCustomLoadAdCall
    public final void callLoadSuccess(double d) {
        if (!isCallLoadSuccessCall()) {
            Logger.e("TTMediationSDK", "自定义Adapter callLoadSuccess");
            GMCustomRewardAd gMCustomRewardAd = new GMCustomRewardAd();
            this.f9108new = gMCustomRewardAd;
            gMCustomRewardAd.setMediaExtraInfo(this.f9105else);
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
