package com.bytedance.msdk.adapter.gdt;

import android.app.Activity;
import android.content.Context;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMInterstitialBaseAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdapterInterstitialListener;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.TTGlobalConfig;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import com.bytedance.msdk.base.TTBaseAd;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.util.AdError;
import java.util.Map;

/* loaded from: classes8.dex */
public class GdtInterstitialAdapter extends GMInterstitialBaseAdapter {

    /* renamed from: extends  reason: not valid java name */
    public Context f8510extends;

    /* renamed from: finally  reason: not valid java name */
    public GMAdSlotGDTOption f8511finally;

    /* renamed from: package  reason: not valid java name */
    public int f8512package;

    /* renamed from: private  reason: not valid java name */
    public int f8513private;

    /* loaded from: classes8.dex */
    public class GdtIntersitialAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public UnifiedInterstitialAD f8514do;

        /* renamed from: for  reason: not valid java name */
        public UnifiedInterstitialADListener f8515for = new UnifiedInterstitialADListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.1
            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onADClicked() {
                ITTAdatperCallback iTTAdatperCallback = GdtIntersitialAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterInterstitialListener) {
                    ((ITTAdapterInterstitialListener) iTTAdatperCallback).onInterstitialAdClick();
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onADClosed() {
                ITTAdatperCallback iTTAdatperCallback = GdtIntersitialAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterInterstitialListener) {
                    ((ITTAdapterInterstitialListener) iTTAdatperCallback).onInterstitialClosed();
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onADExposure() {
                ITTAdatperCallback iTTAdatperCallback = GdtIntersitialAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterInterstitialListener) {
                    ((ITTAdapterInterstitialListener) iTTAdatperCallback).onInterstitialShow();
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onADLeftApplication() {
                ITTAdatperCallback iTTAdatperCallback = GdtIntersitialAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterInterstitialListener) {
                    ((ITTAdapterInterstitialListener) iTTAdatperCallback).onAdLeftApplication();
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onADOpened() {
                ITTAdatperCallback iTTAdatperCallback = GdtIntersitialAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterInterstitialListener) {
                    ((ITTAdapterInterstitialListener) iTTAdatperCallback).onAdOpened();
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x00a9  */
            /* JADX WARN: Removed duplicated region for block: B:16:0x00ad  */
            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @com.bytedance.JProtect
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onADReceive() {
                /*
                    r3 = this;
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r0 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    r1 = 1
                    r0.f8516if = r1
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter r0 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.this
                    boolean r0 = r0.isClientBidding()
                    if (r0 == 0) goto L54
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r0 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r0.f8514do
                    int r1 = r1.getECPM()
                    r2 = -1
                    if (r1 == r2) goto L22
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r1 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r1.f8514do
                    int r1 = r1.getECPM()
                    double r1 = (double) r1
                    goto L24
                L22:
                    r1 = 0
                L24:
                    r0.setCpm(r1)
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r1 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter r1 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.this
                    java.lang.String r1 = r1.getAdapterRit()
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r2 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter r2 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.this
                    java.lang.String r2 = r2.getAdSlotId()
                    java.lang.String r1 = com.bytedance.msdk.adapter.util.TTLogUtil.getTagThirdLevelById(r1, r2)
                    r0.append(r1)
                    java.lang.String r1 = "GDT_clientBidding 插屏 返回的 cpm价格："
                    r0.append(r1)
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r1 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r1.f8514do
                    int r1 = r1.getECPM()
                    r0.append(r1)
                    goto L95
                L54:
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r0 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter r0 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.this
                    boolean r0 = r0.isMultiBidding()
                    if (r0 == 0) goto L9e
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r0 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r0.f8514do
                    java.lang.String r1 = r1.getECPMLevel()
                    r0.setLevelTag(r1)
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r1 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter r1 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.this
                    java.lang.String r1 = r1.getAdapterRit()
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r2 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter r2 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.this
                    java.lang.String r2 = r2.getAdSlotId()
                    java.lang.String r1 = com.bytedance.msdk.adapter.util.TTLogUtil.getTagThirdLevelById(r1, r2)
                    r0.append(r1)
                    java.lang.String r1 = "GDT_多阶底价 插屏 返回的价格标签："
                    r0.append(r1)
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r1 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r1 = r1.f8514do
                    java.lang.String r1 = r1.getECPMLevel()
                    r0.append(r1)
                L95:
                    java.lang.String r0 = r0.toString()
                    java.lang.String r1 = "TTMediationSDK_ECMP"
                    com.bytedance.msdk.adapter.util.Logger.d(r1, r0)
                L9e:
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r0 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.qq.e.ads.interstitial2.UnifiedInterstitialAD r0 = r0.f8514do
                    int r0 = r0.getAdPatternType()
                    r1 = 2
                    if (r0 != r1) goto Lad
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r0 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    r1 = 5
                    goto Lb0
                Lad:
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r0 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    r1 = 3
                Lb0:
                    r0.setImageMode(r1)
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter$GdtIntersitialAd r0 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.this
                    com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter r1 = com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.this
                    r1.notifyAdLoaded(r0)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.gdt.GdtInterstitialAdapter.GdtIntersitialAd.AnonymousClass1.onADReceive():void");
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            @JProtect
            public void onNoAD(AdError adError) {
                GdtIntersitialAd gdtIntersitialAd = GdtIntersitialAd.this;
                gdtIntersitialAd.f8516if = false;
                if (adError != null) {
                    GdtInterstitialAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError(adError.getErrorCode(), adError.getErrorMsg()));
                } else {
                    GdtInterstitialAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError());
                }
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            public void onRenderFail() {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            public void onRenderSuccess() {
            }

            @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
            public void onVideoCached() {
            }
        };

        /* renamed from: if  reason: not valid java name */
        public boolean f8516if;

        public GdtIntersitialAd() {
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidLoseNotify(Map<String, Object> map) {
            if (!isClientBiddingAd() || this.f8514do == null || map == null) {
                return;
            }
            try {
                Object obj = map.get("bidding_lose_reason");
                if (obj instanceof GMAdConstant.BiddingLossReason) {
                    this.f8514do.sendLossNotification(0, GDTAdapterUtils.getBiddingLossReason((GMAdConstant.BiddingLossReason) obj), null);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidWinNotify(Map<String, Object> map) {
            UnifiedInterstitialAD unifiedInterstitialAD;
            if (isClientBiddingAd() && (unifiedInterstitialAD = this.f8514do) != null) {
                try {
                    unifiedInterstitialAD.sendWinNotification((int) getCpm());
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8514do == null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            UnifiedInterstitialAD unifiedInterstitialAD = this.f8514do;
            return (unifiedInterstitialAD == null || !unifiedInterstitialAD.isValid()) ? GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            UnifiedInterstitialAD unifiedInterstitialAD = this.f8514do;
            if (unifiedInterstitialAD != null) {
                unifiedInterstitialAD.destroy();
                this.f8514do = null;
            }
            this.mTTAdatperCallback = null;
            super.onDestroy();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void showAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
            if (this.f8514do == null || activity == null || activity.isFinishing()) {
                return;
            }
            this.f8514do.show(activity);
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

    @Override // com.bytedance.msdk.adapter.ad.GMInterstitialBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @JProtect
    public void loadAd(Context context, Map<String, Object> map) {
        super.loadAd(context, map);
        if (this.mGMAdSlotInterstitial == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
            return;
        }
        this.f8510extends = context;
        if (map != null) {
            this.f8512package = map.get(TTGlobalConfig.MIN_VIDEO_DURATION) != null ? ((Integer) map.get(TTGlobalConfig.MIN_VIDEO_DURATION)).intValue() : 0;
            this.f8513private = map.get(TTGlobalConfig.MAX_VIDEO_DURATION) != null ? ((Integer) map.get(TTGlobalConfig.MAX_VIDEO_DURATION)).intValue() : 0;
            this.f8511finally = this.mGMAdSlotInterstitial.getGMAdSlotGDTOption();
            GdtIntersitialAd gdtIntersitialAd = new GdtIntersitialAd();
            Logger.d("TTMediationSDK", "GdtIntersitialAd load");
            GdtInterstitialAdapter gdtInterstitialAdapter = GdtInterstitialAdapter.this;
            Context context2 = gdtInterstitialAdapter.f8510extends;
            if (!(context2 instanceof Activity)) {
                Logger.d("TTMediationSDK_interisitial", TTLogUtil.getTagThirdLevelById(GdtInterstitialAdapter.this.getAdapterRit(), GdtInterstitialAdapter.this.getAdSlotId()) + "GDT--插屏-传入mContext 不是 Activity 请求中断");
                return;
            }
            gdtIntersitialAd.f8514do = new UnifiedInterstitialAD((Activity) context2, gdtInterstitialAdapter.getAdSlotId(), gdtIntersitialAd.f8515for);
            gdtIntersitialAd.f8514do.setVideoOption(GDTAdapterUtils.getGMVideoOption(GdtInterstitialAdapter.this.f8511finally));
            int i = GdtInterstitialAdapter.this.f8513private;
            if (i > 0) {
                gdtIntersitialAd.f8514do.setMaxVideoDuration(i);
            }
            int i2 = GdtInterstitialAdapter.this.f8512package;
            if (i2 > 0) {
                gdtIntersitialAd.f8514do.setMinVideoDuration(i2);
            }
            gdtIntersitialAd.f8514do.loadAD();
        }
    }
}
