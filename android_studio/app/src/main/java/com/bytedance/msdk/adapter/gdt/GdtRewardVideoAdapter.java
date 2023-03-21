package com.bytedance.msdk.adapter.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMRewardBaseAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdapterRewardedAdListener;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo;
import com.bytedance.msdk.base.TTBaseAd;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.managers.status.SDKStatus;
import java.util.Map;

/* loaded from: classes8.dex */
public class GdtRewardVideoAdapter extends GMRewardBaseAdapter {

    /* renamed from: extends  reason: not valid java name */
    public Context f8558extends;

    /* loaded from: classes8.dex */
    public class GdtRewardVideo extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public RewardVideoAD f8559do;

        /* renamed from: for  reason: not valid java name */
        public RewardVideoADListener f8560for = new RewardVideoADListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtRewardVideoAdapter.GdtRewardVideo.1
            @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
            @JProtect
            public void onADClick() {
                ITTAdatperCallback iTTAdatperCallback = GdtRewardVideo.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterRewardedAdListener) {
                    ((ITTAdapterRewardedAdListener) iTTAdatperCallback).onRewardClick();
                }
            }

            @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
            @JProtect
            public void onADClose() {
                ITTAdatperCallback iTTAdatperCallback = GdtRewardVideo.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterRewardedAdListener) {
                    ((ITTAdapterRewardedAdListener) iTTAdatperCallback).onRewardedAdClosed();
                }
            }

            @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
            public void onADExpose() {
            }

            @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
            @JProtect
            public void onADLoad() {
                StringBuilder sb;
                GdtRewardVideo gdtRewardVideo = GdtRewardVideo.this;
                gdtRewardVideo.f8561if = true;
                RewardVideoAD rewardVideoAD = gdtRewardVideo.f8559do;
                GdtRewardVideoAdapter gdtRewardVideoAdapter = GdtRewardVideoAdapter.this;
                if (rewardVideoAD == null) {
                    gdtRewardVideoAdapter.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                    return;
                }
                if (gdtRewardVideoAdapter.isClientBidding()) {
                    GdtRewardVideo gdtRewardVideo2 = GdtRewardVideo.this;
                    gdtRewardVideo2.setCpm(gdtRewardVideo2.f8559do.getECPM() != -1 ? GdtRewardVideo.this.f8559do.getECPM() : 0.0d);
                    sb = new StringBuilder();
                    sb.append(TTLogUtil.getTagThirdLevelById(GdtRewardVideoAdapter.this.getAdapterRit(), GdtRewardVideoAdapter.this.getAdSlotId()));
                    sb.append("GDT_clientBidding Reward 返回的 cpm价格：");
                    sb.append(GdtRewardVideo.this.f8559do.getECPM());
                } else if (GdtRewardVideoAdapter.this.isMultiBidding()) {
                    GdtRewardVideo gdtRewardVideo3 = GdtRewardVideo.this;
                    gdtRewardVideo3.setLevelTag(gdtRewardVideo3.f8559do.getECPMLevel());
                    sb = new StringBuilder();
                    sb.append(TTLogUtil.getTagThirdLevelById(GdtRewardVideoAdapter.this.getAdapterRit(), GdtRewardVideoAdapter.this.getAdSlotId()));
                    sb.append("GDT_多阶底价 Reward 返回的 价格标签：");
                    sb.append(GdtRewardVideo.this.f8559do.getECPMLevel());
                } else {
                    GdtRewardVideoAdapter.this.isServerBidding();
                    GdtRewardVideo gdtRewardVideo4 = GdtRewardVideo.this;
                    GdtRewardVideoAdapter.this.notifyAdLoaded(gdtRewardVideo4);
                    Logger.d("GdtRewardVideoAdapter", TTLogUtil.getTagThirdLevelById(GdtRewardVideoAdapter.this.getAdapterRit(), GdtRewardVideoAdapter.this.getAdSlotId()) + "eCPM = " + GdtRewardVideo.this.f8559do.getECPM() + " , eCPMLevel = " + GdtRewardVideo.this.f8559do.getECPMLevel());
                }
                Logger.d("TTMediationSDK_ECMP", sb.toString());
                GdtRewardVideo gdtRewardVideo42 = GdtRewardVideo.this;
                GdtRewardVideoAdapter.this.notifyAdLoaded(gdtRewardVideo42);
                Logger.d("GdtRewardVideoAdapter", TTLogUtil.getTagThirdLevelById(GdtRewardVideoAdapter.this.getAdapterRit(), GdtRewardVideoAdapter.this.getAdSlotId()) + "eCPM = " + GdtRewardVideo.this.f8559do.getECPM() + " , eCPMLevel = " + GdtRewardVideo.this.f8559do.getECPMLevel());
            }

            @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
            @JProtect
            public void onADShow() {
                ITTAdatperCallback iTTAdatperCallback = GdtRewardVideo.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterRewardedAdListener) {
                    ((ITTAdapterRewardedAdListener) iTTAdatperCallback).onRewardedAdShow();
                }
            }

            @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
            @JProtect
            public void onError(com.qq.e.comm.util.AdError adError) {
                GdtRewardVideo gdtRewardVideo = GdtRewardVideo.this;
                gdtRewardVideo.f8561if = false;
                if (adError != null) {
                    GdtRewardVideoAdapter.this.notifyAdFailed(new AdError(adError.getErrorCode(), adError.getErrorMsg()));
                } else {
                    GdtRewardVideoAdapter.this.notifyAdFailed(new AdError());
                }
            }

            @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
            @JProtect
            public void onReward(final Map<String, Object> map) {
                ITTAdatperCallback iTTAdatperCallback = GdtRewardVideo.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterRewardedAdListener) {
                    ((ITTAdapterRewardedAdListener) iTTAdatperCallback).onRewardVerify(new RewardItem() { // from class: com.bytedance.msdk.adapter.gdt.GdtRewardVideoAdapter.GdtRewardVideo.1.1
                        @Override // com.bytedance.msdk.api.reward.RewardItem
                        public float getAmount() {
                            GMAdSlotRewardVideo gMAdSlotRewardVideo = GdtRewardVideoAdapter.this.mGMAdSlotRewardVideo;
                            if (gMAdSlotRewardVideo != null) {
                                return gMAdSlotRewardVideo.getRewardAmount();
                            }
                            return 0.0f;
                        }

                        @Override // com.bytedance.msdk.api.reward.RewardItem
                        public Map<String, Object> getCustomData() {
                            Map map2 = map;
                            if (map2 == null || map2.isEmpty()) {
                                return null;
                            }
                            map.put(RewardItem.KEY_ADN_NAME, "gdt");
                            return map;
                        }

                        @Override // com.bytedance.msdk.api.reward.RewardItem
                        public String getRewardName() {
                            GMAdSlotRewardVideo gMAdSlotRewardVideo = GdtRewardVideoAdapter.this.mGMAdSlotRewardVideo;
                            return gMAdSlotRewardVideo != null ? gMAdSlotRewardVideo.getRewardName() : "";
                        }

                        @Override // com.bytedance.msdk.api.reward.RewardItem
                        public boolean rewardVerify() {
                            return true;
                        }
                    });
                }
            }

            @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
            @JProtect
            public void onVideoCached() {
                GdtRewardVideo gdtRewardVideo = GdtRewardVideo.this;
                GdtRewardVideoAdapter.this.notifyAdVideoCache(gdtRewardVideo, (AdError) null);
            }

            @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
            @JProtect
            public void onVideoComplete() {
                ITTAdatperCallback iTTAdatperCallback = GdtRewardVideo.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterRewardedAdListener) {
                    ((ITTAdapterRewardedAdListener) iTTAdatperCallback).onVideoComplete();
                }
            }
        };

        /* renamed from: if  reason: not valid java name */
        public boolean f8561if;

        public GdtRewardVideo() {
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean adnHasAdVideoCachedApi() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidLoseNotify(Map<String, Object> map) {
            if (!isClientBiddingAd() || this.f8559do == null || map == null) {
                return;
            }
            try {
                Object obj = map.get("bidding_lose_reason");
                if (obj instanceof GMAdConstant.BiddingLossReason) {
                    this.f8559do.sendLossNotification(0, GDTAdapterUtils.getBiddingLossReason((GMAdConstant.BiddingLossReason) obj), null);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidWinNotify(Map<String, Object> map) {
            RewardVideoAD rewardVideoAD;
            if (isClientBiddingAd() && (rewardVideoAD = this.f8559do) != null) {
                try {
                    rewardVideoAD.sendWinNotification((int) getCpm());
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8559do == null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            RewardVideoAD rewardVideoAD = this.f8559do;
            return (rewardVideoAD == null || !rewardVideoAD.isValid()) ? GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            if (this.f8559do != null) {
                this.f8559do = null;
                this.mTTAdatperCallback = null;
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void showAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
            if (this.f8559do != null) {
                if (GdtRewardVideoAdapter.this.isServerBidding()) {
                    RewardVideoAD rewardVideoAD = this.f8559do;
                    rewardVideoAD.setBidECPM(rewardVideoAD.getECPM());
                }
                this.f8559do.showAD(activity);
            }
        }
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public void destroy() {
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getAdNetWorkName() {
        return "gdt";
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getSdkVersion() {
        try {
            return SDKStatus.getSDKVersion();
        } catch (Exception unused) {
            return PangleRewardVideoAdapter.VERSION_00;
        }
    }

    @Override // com.bytedance.msdk.adapter.ad.GMRewardBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @JProtect
    public void loadAd(Context context, Map<String, Object> map) {
        RewardVideoAD rewardVideoAD;
        String str;
        super.loadAd(context, map);
        if (this.mGMAdSlotRewardVideo == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
            return;
        }
        this.f8558extends = context;
        if (map != null) {
            String str2 = (String) map.get("tt_ad_network_config_appid");
            GdtRewardVideo gdtRewardVideo = new GdtRewardVideo();
            GMAdSlotRewardVideo gMAdSlotRewardVideo = GdtRewardVideoAdapter.this.mGMAdSlotRewardVideo;
            boolean z = (gMAdSlotRewardVideo == null || gMAdSlotRewardVideo.isMuted()) ? false : true;
            if (!TextUtils.isEmpty(GdtRewardVideoAdapter.this.getAdm())) {
                GdtRewardVideoAdapter gdtRewardVideoAdapter = GdtRewardVideoAdapter.this;
                rewardVideoAD = new RewardVideoAD(gdtRewardVideoAdapter.f8558extends, gdtRewardVideoAdapter.getAdSlotId(), gdtRewardVideo.f8560for, z, GdtRewardVideoAdapter.this.getAdm());
            } else {
                GdtRewardVideoAdapter gdtRewardVideoAdapter2 = GdtRewardVideoAdapter.this;
                rewardVideoAD = new RewardVideoAD(gdtRewardVideoAdapter2.f8558extends, gdtRewardVideoAdapter2.getAdSlotId(), gdtRewardVideo.f8560for, z);
            }
            gdtRewardVideo.f8559do = rewardVideoAD;
            if (GdtRewardVideoAdapter.this.mGMAdSlotRewardVideo != null) {
                ServerSideVerificationOptions.Builder builder = new ServerSideVerificationOptions.Builder();
                String userID = GdtRewardVideoAdapter.this.mGMAdSlotRewardVideo.getUserID();
                if (userID != null) {
                    builder.setUserId(userID);
                }
                Map<String, String> customData = GdtRewardVideoAdapter.this.mGMAdSlotRewardVideo.getCustomData();
                if (customData != null && (str = customData.get("gdt")) != null) {
                    builder.setCustomData(str);
                }
                if (userID != null || customData != null) {
                    gdtRewardVideo.f8559do.setServerSideVerificationOptions(builder.build());
                }
            }
            gdtRewardVideo.f8559do.loadAD();
        }
    }
}
