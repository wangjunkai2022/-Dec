package com.bytedance.msdk.adapter.gdt;

import android.app.Activity;
import android.content.Context;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMFullVideoBaseAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdapterFullVideoAdListener;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.slot.GMAdSlotFullVideo;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import com.bytedance.msdk.base.TTBaseAd;
import com.qq.e.ads.interstitial2.ADRewardListener;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.util.AdError;
import java.util.Map;

/* loaded from: classes8.dex */
public class GdtFullVideoAdapter extends GMFullVideoBaseAdapter {

    /* renamed from: extends  reason: not valid java name */
    public Context f8495extends;

    /* renamed from: finally  reason: not valid java name */
    public GMAdSlotGDTOption f8496finally;

    /* renamed from: package  reason: not valid java name */
    public int f8497package;

    /* renamed from: private  reason: not valid java name */
    public int f8498private;

    /* loaded from: classes8.dex */
    public class GdtFullVideoAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public UnifiedInterstitialAD f8500do;

        /* renamed from: if  reason: not valid java name */
        public boolean f8502if;

        /* renamed from: for  reason: not valid java name */
        public UnifiedInterstitialADListener f8501for = new UnifiedInterstitialADListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.1
            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onADClicked() {
                ITTAdatperCallback iTTAdatperCallback = GdtFullVideoAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                    ((ITTAdapterFullVideoAdListener) iTTAdatperCallback).onFullVideoAdClick();
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onADClosed() {
                ITTAdatperCallback iTTAdatperCallback = GdtFullVideoAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                    ((ITTAdapterFullVideoAdListener) iTTAdatperCallback).onFullVideoAdClosed();
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onADExposure() {
                ITTAdatperCallback iTTAdatperCallback = GdtFullVideoAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                    ((ITTAdapterFullVideoAdListener) iTTAdatperCallback).onFullVideoAdShow();
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            public void onADLeftApplication() {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            public void onADOpened() {
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x00a9  */
            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @com.bytedance.JProtect
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onADReceive() {
                /*
                    r3 = this;
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    r1 = 1
                    r0.f8502if = r1
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.this
                    boolean r0 = r0.isClientBidding()
                    if (r0 == 0) goto L54
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r0.f8500do
                    int r1 = r1.getECPM()
                    r2 = -1
                    if (r1 == r2) goto L22
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r1 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r1.f8500do
                    int r1 = r1.getECPM()
                    double r1 = (double) r1
                    goto L24
                L22:
                    r1 = 0
                L24:
                    r0.setCpm(r1)
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r1 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter r1 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.this
                    java.lang.String r1 = r1.getAdapterRit()
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r2 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter r2 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.this
                    java.lang.String r2 = r2.getAdSlotId()
                    java.lang.String r1 = com.bytedance.msdk.adapter.util.TTLogUtil.getTagThirdLevelById(r1, r2)
                    r0.append(r1)
                    java.lang.String r1 = "GDT_clientBidding FullVideo 返回的 cpm价格："
                    r0.append(r1)
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r1 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r1.f8500do
                    int r1 = r1.getECPM()
                    r0.append(r1)
                    goto L95
                L54:
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.this
                    boolean r0 = r0.isMultiBidding()
                    if (r0 == 0) goto L9e
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r0.f8500do
                    java.lang.String r1 = r1.getECPMLevel()
                    r0.setLevelTag(r1)
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r1 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter r1 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.this
                    java.lang.String r1 = r1.getAdapterRit()
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r2 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter r2 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.this
                    java.lang.String r2 = r2.getAdSlotId()
                    java.lang.String r1 = com.bytedance.msdk.adapter.util.TTLogUtil.getTagThirdLevelById(r1, r2)
                    r0.append(r1)
                    java.lang.String r1 = "GDT_多阶底价 FullVideo 返回的价格标签："
                    r0.append(r1)
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r1 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r1.f8500do
                    java.lang.String r1 = r1.getECPMLevel()
                    r0.append(r1)
                L95:
                    java.lang.String r0 = r0.toString()
                    java.lang.String r1 = "TTMediationSDK_ECMP"
                    com.bytedance.msdk.adapter.util.Logger.d(r1, r0)
                L9e:
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r0 = r0.f8500do
                    int r0 = r0.getAdPatternType()
                    r1 = 2
                    if (r0 != r1) goto Lc1
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    r1 = 5
                    r0.setImageMode(r1)
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r0.f8500do
                    com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener r0 = r0.f8503new
                    r1.setMediaListener(r0)
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r0.f8500do
                    com.qq.e.ads.interstitial2.ADRewardListener r0 = r0.f8504try
                    r1.setRewardListener(r0)
                Lc1:
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter$GdtFullVideoAd r0 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.this
                    com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter r1 = com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.this
                    r1.notifyAdLoaded(r0)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.AnonymousClass1.onADReceive():void");
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onNoAD(AdError adError) {
                GdtFullVideoAd gdtFullVideoAd = GdtFullVideoAd.this;
                gdtFullVideoAd.f8502if = false;
                if (adError != null) {
                    GdtFullVideoAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError(adError.getErrorCode(), adError.getErrorMsg()));
                } else {
                    GdtFullVideoAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError());
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            public void onRenderFail() {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            public void onRenderSuccess() {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onVideoCached() {
                GdtFullVideoAd gdtFullVideoAd = GdtFullVideoAd.this;
                GdtFullVideoAdapter.this.notifyAdVideoCache(gdtFullVideoAd, (com.bytedance.msdk.api.AdError) null);
            }
        };

        /* renamed from: new  reason: not valid java name */
        public UnifiedInterstitialMediaListener f8503new = new UnifiedInterstitialMediaListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.2
            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
            @JProtect
            public void onVideoComplete() {
                ITTAdatperCallback iTTAdatperCallback = GdtFullVideoAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                    ((ITTAdapterFullVideoAdListener) iTTAdatperCallback).onVideoComplete();
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
            @JProtect
            public void onVideoError(AdError adError) {
                ITTAdatperCallback iTTAdatperCallback = GdtFullVideoAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                    ((ITTAdapterFullVideoAdListener) iTTAdatperCallback).onVideoError();
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
            public void onVideoInit() {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
            public void onVideoLoading() {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
            public void onVideoPageClose() {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
            public void onVideoPageOpen() {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
            public void onVideoPause() {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
            public void onVideoReady(long j) {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
            public void onVideoStart() {
            }
        };

        /* renamed from: try  reason: not valid java name */
        public ADRewardListener f8504try = new ADRewardListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.3
            @Override // com.qq.e.comm.listeners.ADRewardListener
            public void onReward(final Map<String, Object> map) {
                ITTAdatperCallback iTTAdatperCallback = GdtFullVideoAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                    ((ITTAdapterFullVideoAdListener) iTTAdatperCallback).onRewardVerify(new RewardItem() { // from class: com.bytedance.msdk.adapter.gdt.GdtFullVideoAdapter.GdtFullVideoAd.3.1
                        @Override // com.bytedance.msdk.api.reward.RewardItem
                        public float getAmount() {
                            GMAdSlotFullVideo gMAdSlotFullVideo = GdtFullVideoAdapter.this.mGMAdSlotFullVideo;
                            if (gMAdSlotFullVideo != null) {
                                return gMAdSlotFullVideo.getRewardAmount();
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
                            GMAdSlotFullVideo gMAdSlotFullVideo = GdtFullVideoAdapter.this.mGMAdSlotFullVideo;
                            return gMAdSlotFullVideo != null ? gMAdSlotFullVideo.getRewardName() : "";
                        }

                        @Override // com.bytedance.msdk.api.reward.RewardItem
                        public boolean rewardVerify() {
                            return true;
                        }
                    });
                }
            }
        };

        public GdtFullVideoAd() {
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean adnHasAdVideoCachedApi() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidLoseNotify(Map<String, Object> map) {
            if (!isClientBiddingAd() || this.f8500do == null || map == null) {
                return;
            }
            try {
                Object obj = map.get("bidding_lose_reason");
                if (obj instanceof GMAdConstant.BiddingLossReason) {
                    this.f8500do.sendLossNotification(0, GDTAdapterUtils.getBiddingLossReason((GMAdConstant.BiddingLossReason) obj), null);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidWinNotify(Map<String, Object> map) {
            UnifiedInterstitialAD unifiedInterstitialAD;
            if (isClientBiddingAd() && (unifiedInterstitialAD = this.f8500do) != null) {
                try {
                    unifiedInterstitialAD.sendWinNotification((int) getCpm());
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8500do == null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            UnifiedInterstitialAD unifiedInterstitialAD = this.f8500do;
            return (unifiedInterstitialAD == null || !unifiedInterstitialAD.isValid()) ? GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            UnifiedInterstitialAD unifiedInterstitialAD = this.f8500do;
            if (unifiedInterstitialAD != null) {
                unifiedInterstitialAD.destroy();
                this.f8500do = null;
            }
            this.mTTAdatperCallback = null;
            super.onDestroy();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void showAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
            UnifiedInterstitialAD unifiedInterstitialAD = this.f8500do;
            if (unifiedInterstitialAD != null) {
                unifiedInterstitialAD.showFullScreenAD(activity);
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

    @Override // com.bytedance.msdk.adapter.ad.GMFullVideoBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @JProtect
    public void loadAd(Context context, Map<String, Object> map) {
        String str;
        super.loadAd(context, map);
        GMAdSlotFullVideo gMAdSlotFullVideo = this.mGMAdSlotFullVideo;
        if (gMAdSlotFullVideo == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
            return;
        }
        this.f8495extends = context;
        if (map != null) {
            GMAdSlotGDTOption gMAdSlotGDTOption = gMAdSlotFullVideo.getGMAdSlotGDTOption();
            this.f8496finally = gMAdSlotGDTOption;
            if (gMAdSlotGDTOption != null) {
                this.f8497package = gMAdSlotGDTOption.getGDTMinVideoDuration();
                this.f8498private = this.f8496finally.getGDTMaxVideoDuration();
            }
            GdtFullVideoAd gdtFullVideoAd = new GdtFullVideoAd();
            GdtFullVideoAdapter gdtFullVideoAdapter = GdtFullVideoAdapter.this;
            Context context2 = gdtFullVideoAdapter.f8495extends;
            if (context2 instanceof Activity) {
                gdtFullVideoAd.f8500do = new UnifiedInterstitialAD((Activity) context2, gdtFullVideoAdapter.getAdSlotId(), gdtFullVideoAd.f8501for);
                gdtFullVideoAd.f8500do.setVideoOption(GDTAdapterUtils.getGMVideoOption(GdtFullVideoAdapter.this.f8496finally));
                int i = GdtFullVideoAdapter.this.f8498private;
                if (i > 0) {
                    gdtFullVideoAd.f8500do.setMaxVideoDuration(i);
                }
                int i2 = GdtFullVideoAdapter.this.f8497package;
                if (i2 > 0) {
                    gdtFullVideoAd.f8500do.setMinVideoDuration(i2);
                }
                if (GdtFullVideoAdapter.this.mGMAdSlotFullVideo != null) {
                    ServerSideVerificationOptions.Builder builder = new ServerSideVerificationOptions.Builder();
                    String userID = GdtFullVideoAdapter.this.mGMAdSlotFullVideo.getUserID();
                    if (userID != null) {
                        builder.setUserId(userID);
                    }
                    Map<String, String> customData = GdtFullVideoAdapter.this.mGMAdSlotFullVideo.getCustomData();
                    if (customData != null && (str = customData.get("gdt")) != null) {
                        builder.setCustomData(str);
                    }
                    if (userID != null || customData != null) {
                        gdtFullVideoAd.f8500do.setServerSideVerificationOptions(builder.build());
                    }
                }
                gdtFullVideoAd.f8500do.loadFullScreenAD();
            }
        }
    }
}
