package com.bytedance.msdk.adapter.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMBannerBaseAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdapterBannerAdListener;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.format.TTMediaView;
import com.bytedance.msdk.api.format.TTNativeAdView;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import com.bytedance.msdk.base.TTBaseAd;
import com.qq.e.ads.banner2.UnifiedBannerADListener;
import com.qq.e.ads.banner2.UnifiedBannerView;
import com.qq.e.ads.cfg.DownAPPConfirmPolicy;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.MediaView;
import com.qq.e.ads.nativ.NativeADEventListener;
import com.qq.e.ads.nativ.NativeADMediaListener;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.ads.nativ.NativeExpressMediaListener;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.pi.AdData;
import com.qq.e.comm.util.AdError;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class GdtBannerAdapter extends GMBannerBaseAdapter {

    /* renamed from: extends  reason: not valid java name */
    public Context f8462extends;

    /* renamed from: finally  reason: not valid java name */
    public FrameLayout.LayoutParams f8463finally;

    /* renamed from: package  reason: not valid java name */
    public VideoOption f8464package;

    /* loaded from: classes8.dex */
    public class GdtBanner extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public UnifiedBannerView f8468do;

        /* renamed from: if  reason: not valid java name */
        public boolean f8470if = false;

        /* renamed from: for  reason: not valid java name */
        public UnifiedBannerADListener f8469for = new UnifiedBannerADListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtBannerAdapter.GdtBanner.2
            @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
            @JProtect
            public void onADClicked() {
                ITTAdatperCallback iTTAdatperCallback = GdtBanner.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClicked();
                }
            }

            @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
            @JProtect
            public void onADClosed() {
                ITTAdatperCallback iTTAdatperCallback = GdtBanner.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClosed();
                }
            }

            @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
            @JProtect
            public void onADExposure() {
                ITTAdatperCallback iTTAdatperCallback = GdtBanner.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdShow();
                }
            }

            @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
            @JProtect
            public void onADLeftApplication() {
                ITTAdatperCallback iTTAdatperCallback = GdtBanner.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdLeftApplication();
                }
            }

            @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
            @JProtect
            public void onADReceive() {
                StringBuilder sb;
                GdtBanner gdtBanner = GdtBanner.this;
                if (gdtBanner.f8470if) {
                    return;
                }
                if (gdtBanner.f8468do != null) {
                    if (GdtBannerAdapter.this.isClientBidding()) {
                        int ecpm = GdtBanner.this.f8468do.getECPM();
                        GdtBanner.this.setCpm(ecpm > 0 ? ecpm : 0.0d);
                        sb = new StringBuilder();
                        sb.append(TTLogUtil.getTagThirdLevelById(GdtBannerAdapter.this.getAdapterRit(), GdtBannerAdapter.this.getAdSlotId()));
                        sb.append("GDT_clientBidding 插屏 返回的 cpm价格：");
                        sb.append(ecpm);
                    } else if (GdtBannerAdapter.this.isMultiBidding()) {
                        String eCPMLevel = GdtBanner.this.f8468do.getECPMLevel();
                        GdtBanner.this.setLevelTag(eCPMLevel);
                        sb = new StringBuilder();
                        sb.append(TTLogUtil.getTagThirdLevelById(GdtBannerAdapter.this.getAdapterRit(), GdtBannerAdapter.this.getAdSlotId()));
                        sb.append("GDT_多阶底价 插屏 返回的 价格标签：");
                        sb.append(eCPMLevel);
                    }
                    Logger.d("TTMediationSDK_ECMP", sb.toString());
                }
                GdtBanner gdtBanner2 = GdtBanner.this;
                GdtBannerAdapter.this.notifyAdLoaded(gdtBanner2);
                GdtBanner.this.f8470if = true;
            }

            @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
            @JProtect
            public void onNoAD(AdError adError) {
                GdtBanner gdtBanner = GdtBanner.this;
                if (gdtBanner.f8470if) {
                    return;
                }
                gdtBanner.f8470if = true;
                if (adError != null) {
                    GdtBannerAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError(adError.getErrorCode(), adError.getErrorMsg()));
                } else {
                    GdtBannerAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError());
                }
            }
        };

        public GdtBanner() {
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidLoseNotify(Map<String, Object> map) {
            if (!isClientBiddingAd() || this.f8468do == null || map == null) {
                return;
            }
            try {
                Object obj = map.get("bidding_lose_reason");
                if (obj instanceof GMAdConstant.BiddingLossReason) {
                    this.f8468do.sendLossNotification(0, GDTAdapterUtils.getBiddingLossReason((GMAdConstant.BiddingLossReason) obj), null);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidWinNotify(Map<String, Object> map) {
            UnifiedBannerView unifiedBannerView;
            if (isClientBiddingAd() && (unifiedBannerView = this.f8468do) != null) {
                try {
                    unifiedBannerView.sendWinNotification((int) getCpm());
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public View getAdView() {
            return this.f8468do;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.mTTAdatperCallback == null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            UnifiedBannerView unifiedBannerView = this.f8468do;
            return (unifiedBannerView == null || !unifiedBannerView.isValid()) ? GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.gdt.GdtBannerAdapter.GdtBanner.1
                @Override // java.lang.Runnable
                public void run() {
                    UnifiedBannerView unifiedBannerView = GdtBanner.this.f8468do;
                    if (unifiedBannerView != null) {
                        unifiedBannerView.destroy();
                    }
                }
            });
            this.mTTAdatperCallback = null;
            super.onDestroy();
        }
    }

    /* loaded from: classes8.dex */
    public class GdtNativeAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public NativeUnifiedADData f8474do;

        /* renamed from: if  reason: not valid java name */
        public volatile boolean f8476if = false;

        /* renamed from: for  reason: not valid java name */
        public NativeADMediaListener f8475for = new NativeADMediaListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtBannerAdapter.GdtNativeAd.4
            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            @JProtect
            public void onVideoClicked() {
                GMNativeAdListener gMNativeAdListener = GdtNativeAd.this.mTTNativeAdListener;
                if (gMNativeAdListener != null) {
                    gMNativeAdListener.onAdClick();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            @JProtect
            public void onVideoCompleted() {
                GMVideoListener gMVideoListener = GdtNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoCompleted();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            @JProtect
            public void onVideoError(AdError adError) {
                GMVideoListener gMVideoListener = GdtNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoError(new com.bytedance.msdk.api.AdError(adError.getErrorCode(), adError.getErrorMsg()));
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            public void onVideoInit() {
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            public void onVideoLoaded(int i) {
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            public void onVideoLoading() {
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            @JProtect
            public void onVideoPause() {
                GMVideoListener gMVideoListener = GdtNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoPause();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            public void onVideoReady() {
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            @JProtect
            public void onVideoResume() {
                GMVideoListener gMVideoListener = GdtNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoResume();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            @JProtect
            public void onVideoStart() {
                GMVideoListener gMVideoListener = GdtNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoStart();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            public void onVideoStop() {
            }
        };

        /* JADX WARN: Removed duplicated region for block: B:18:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00f6  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0117  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x011b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public GdtNativeAd(com.qq.e.ads.nativ.NativeUnifiedADData r5) {
            /*
                Method dump skipped, instructions count: 287
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.gdt.GdtBannerAdapter.GdtNativeAd.<init>(com.bytedance.msdk.adapter.gdt.GdtBannerAdapter, com.qq.e.ads.nativ.NativeUnifiedADData):void");
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidLoseNotify(Map<String, Object> map) {
            if (!isClientBiddingAd() || this.f8474do == null || map == null) {
                return;
            }
            try {
                Object obj = map.get("bidding_lose_reason");
                if (obj instanceof GMAdConstant.BiddingLossReason) {
                    this.f8474do.sendLossNotification(0, GDTAdapterUtils.getBiddingLossReason((GMAdConstant.BiddingLossReason) obj), null);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidWinNotify(Map<String, Object> map) {
            NativeUnifiedADData nativeUnifiedADData;
            if (isClientBiddingAd() && (nativeUnifiedADData = this.f8474do) != null) {
                try {
                    nativeUnifiedADData.sendWinNotification((int) getCpm());
                } catch (Exception unused) {
                }
            }
        }

        @JProtect
        /* renamed from: do  reason: not valid java name */
        public final void m3560do(Context context, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
            NativeAdContainer nativeAdContainer;
            Object tag;
            if (this.f8474do == null || !(viewGroup instanceof TTNativeAdView)) {
                return;
            }
            TTNativeAdView tTNativeAdView = (TTNativeAdView) viewGroup;
            int i = 0;
            if (tTNativeAdView.getChildAt(0) instanceof NativeAdContainer) {
                nativeAdContainer = (NativeAdContainer) tTNativeAdView.getChildAt(0);
                while (i < nativeAdContainer.getChildCount()) {
                    View childAt = nativeAdContainer.getChildAt(i);
                    if (childAt == null || ((tag = childAt.getTag(R.id.tt_mediation_gdt_developer_view_tag_key)) != null && (tag instanceof String) && ((String) tag).equals("tt_gdt_developer_view"))) {
                        i++;
                    } else {
                        nativeAdContainer.removeView(childAt);
                    }
                }
            } else {
                nativeAdContainer = new NativeAdContainer(context);
                nativeAdContainer.setTag(R.id.tt_mediation_gdt_developer_view_root_tag_key, "tt_gdt_developer_view_root");
                while (tTNativeAdView.getChildCount() > 0) {
                    View childAt2 = tTNativeAdView.getChildAt(0);
                    childAt2.setTag(R.id.tt_mediation_gdt_developer_view_tag_key, "tt_gdt_developer_view");
                    int indexOfChild = tTNativeAdView.indexOfChild(childAt2);
                    tTNativeAdView.removeViewInLayout(childAt2);
                    nativeAdContainer.addView(childAt2, indexOfChild, childAt2.getLayoutParams());
                }
                tTNativeAdView.removeAllViews();
                tTNativeAdView.addView(nativeAdContainer, -1, -1);
            }
            NativeAdContainer nativeAdContainer2 = nativeAdContainer;
            TTMediaView tTMediaView = (TTMediaView) tTNativeAdView.findViewById(gMViewBinder.mediaViewId);
            this.f8474do.bindAdToView(context, nativeAdContainer2, GdtBannerAdapter.this.f8463finally, list, list2);
            if (tTMediaView != null && getImageMode() == 5) {
                MediaView mediaView = new MediaView(context);
                tTMediaView.removeAllViews();
                tTMediaView.addView(mediaView, -1, -1);
                this.f8474do.bindMediaView(mediaView, GdtBannerAdapter.this.f8464package, this.f8475for);
            }
            if (!TextUtils.isEmpty(this.f8474do.getCTAText())) {
                View findViewById = tTNativeAdView.findViewById(gMViewBinder.callToActionId);
                ArrayList arrayList = new ArrayList();
                arrayList.add(findViewById);
                this.f8474do.bindCTAViews(arrayList);
            }
            this.f8474do.setNativeAdEventListener(new NativeADEventListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtBannerAdapter.GdtNativeAd.2
                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADClicked() {
                    ITTAdatperCallback iTTAdatperCallback = GdtNativeAd.this.mTTAdatperCallback;
                    if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                        ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClicked();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADError(AdError adError) {
                    adError.getErrorCode();
                    adError.getErrorMsg();
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADExposed() {
                    ITTAdatperCallback iTTAdatperCallback = GdtNativeAd.this.mTTAdatperCallback;
                    if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                        ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdShow();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADStatusChanged() {
                }
            });
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8476if;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            NativeUnifiedADData nativeUnifiedADData = this.f8474do;
            return (nativeUnifiedADData == null || !nativeUnifiedADData.isValid()) ? GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            this.f8476if = true;
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.gdt.GdtBannerAdapter.GdtNativeAd.3
                @Override // java.lang.Runnable
                public void run() {
                    NativeUnifiedADData nativeUnifiedADData = GdtNativeAd.this.f8474do;
                    if (nativeUnifiedADData != null) {
                        nativeUnifiedADData.destroy();
                    }
                }
            });
            super.onDestroy();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onPause() {
            super.onPause();
            NativeUnifiedADData nativeUnifiedADData = this.f8474do;
            if (nativeUnifiedADData != null) {
                nativeUnifiedADData.pauseVideo();
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onResume() {
            super.onResume();
            NativeUnifiedADData nativeUnifiedADData = this.f8474do;
            if (nativeUnifiedADData != null) {
                nativeUnifiedADData.resume();
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void registerViewForInteraction(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, GMViewBinder gMViewBinder) {
            if (list3 != null) {
                if (list2 == null) {
                    list2 = new ArrayList<>();
                }
                list2.addAll(list3);
            }
            List<View> list4 = list2;
            super.registerViewForInteraction(viewGroup, list, list4, gMViewBinder);
            m3560do(activity, viewGroup, list, list4, gMViewBinder);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void registerViewForInteraction(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
            super.registerViewForInteraction(viewGroup, list, list2, gMViewBinder);
            m3560do(GdtBannerAdapter.this.f8462extends, viewGroup, list, list2, gMViewBinder);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void unregisterView() {
        }
    }

    /* loaded from: classes8.dex */
    public class TTExpressAd extends TTBaseAd implements ITTAdapterBannerAdListener {

        /* renamed from: do  reason: not valid java name */
        public NativeExpressADView f8481do;

        /* renamed from: if  reason: not valid java name */
        public GMDislikeCallback f8483if;

        /* renamed from: for  reason: not valid java name */
        public volatile boolean f8482for = false;

        /* renamed from: new  reason: not valid java name */
        public final NativeExpressMediaListener f8484new = new NativeExpressMediaListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtBannerAdapter.TTExpressAd.2
            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoCached(NativeExpressADView nativeExpressADView) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            @JProtect
            public void onVideoComplete(NativeExpressADView nativeExpressADView) {
                GMVideoListener gMVideoListener = TTExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoCompleted();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            @JProtect
            public void onVideoError(NativeExpressADView nativeExpressADView, AdError adError) {
                GMVideoListener gMVideoListener = TTExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    if (adError != null) {
                        gMVideoListener.onVideoError(new com.bytedance.msdk.api.AdError(adError.getErrorCode(), adError.getErrorMsg()));
                    } else {
                        gMVideoListener.onVideoError(new com.bytedance.msdk.api.AdError());
                    }
                }
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoInit(NativeExpressADView nativeExpressADView) {
                TTExpressAd tTExpressAd = TTExpressAd.this;
                AdData.VideoPlayer videoPlayer = (AdData.VideoPlayer) nativeExpressADView.getBoundData().getProperty(AdData.VideoPlayer.class);
                if (tTExpressAd == null) {
                    throw null;
                }
                if (videoPlayer != null) {
                    StringBuilder m1016super = Cgoto.m1016super("{state:");
                    m1016super.append(videoPlayer.getVideoState());
                    m1016super.append(",");
                    m1016super.append("duration:");
                    m1016super.append(videoPlayer.getDuration());
                    m1016super.append(",");
                    m1016super.append("position:");
                    m1016super.append(videoPlayer.getCurrentPosition());
                    m1016super.append("}");
                    m1016super.toString();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoLoading(NativeExpressADView nativeExpressADView) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoPageClose(NativeExpressADView nativeExpressADView) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoPageOpen(NativeExpressADView nativeExpressADView) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            @JProtect
            public void onVideoPause(NativeExpressADView nativeExpressADView) {
                GMVideoListener gMVideoListener = TTExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoPause();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoReady(NativeExpressADView nativeExpressADView, long j) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            @JProtect
            public void onVideoStart(NativeExpressADView nativeExpressADView) {
                GMVideoListener gMVideoListener = TTExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoStart();
                }
            }
        };

        public TTExpressAd(GdtBannerAdapter gdtBannerAdapter, NativeExpressADView nativeExpressADView) {
            StringBuilder sb;
            this.f8481do = nativeExpressADView;
            AdData boundData = nativeExpressADView.getBoundData();
            if (boundData.getAdPatternType() == 2) {
                nativeExpressADView.preloadVideo();
                nativeExpressADView.setMediaListener(this.f8484new);
                setImageMode(5);
            } else if (boundData.getAdPatternType() == 4 || boundData.getAdPatternType() == 1 || boundData.getAdPatternType() != 3) {
                setImageMode(3);
            } else {
                setImageMode(4);
            }
            setExpressAd(true);
            setTitle(boundData.getTitle());
            setAdDescription(boundData.getDesc());
            setInteractionType(3);
            if (gdtBannerAdapter.isClientBidding()) {
                setCpm(boundData.getECPM() != -1 ? boundData.getECPM() : 0.0d);
                Logger.d("");
                sb = new StringBuilder();
                sb.append("GDT_clientBidding 模板Native 返回的 cpm价格：");
                sb.append(boundData.getECPM());
            } else if (!gdtBannerAdapter.isMultiBidding()) {
                return;
            } else {
                setLevelTag(boundData.getECPMLevel());
                Logger.d("");
                sb = new StringBuilder();
                sb.append("GDT_多阶底价 模板Native 返回的 价格标签：");
                sb.append(boundData.getECPMLevel());
            }
            Logger.d("TTMediationSDK_ECMP", sb.toString());
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidLoseNotify(Map<String, Object> map) {
            if (!isClientBiddingAd() || this.f8481do == null || map == null) {
                return;
            }
            try {
                Object obj = map.get("bidding_lose_reason");
                if (obj instanceof GMAdConstant.BiddingLossReason) {
                    this.f8481do.sendLossNotification(0, GDTAdapterUtils.getBiddingLossReason((GMAdConstant.BiddingLossReason) obj), null);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidWinNotify(Map<String, Object> map) {
            NativeExpressADView nativeExpressADView;
            if (isClientBiddingAd() && (nativeExpressADView = this.f8481do) != null) {
                try {
                    nativeExpressADView.sendWinNotification((int) getCpm());
                } catch (Exception unused) {
                }
            }
        }

        public void closeAd() {
            GMDislikeCallback gMDislikeCallback = this.f8483if;
            if (gMDislikeCallback != null) {
                gMDislikeCallback.onSelected(-1, "ad close !");
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public View getAdView() {
            return this.f8481do;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8482for;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDislike() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            NativeExpressADView nativeExpressADView = this.f8481do;
            return (nativeExpressADView == null || !nativeExpressADView.isValid()) ? GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdClicked() {
            ITTAdatperCallback iTTAdatperCallback = this.mTTAdatperCallback;
            if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClicked();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdClosed() {
            ITTAdatperCallback iTTAdatperCallback = this.mTTAdatperCallback;
            if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClosed();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdLeftApplication() {
            ITTAdatperCallback iTTAdatperCallback = this.mTTAdatperCallback;
            if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdLeftApplication();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdOpened() {
            ITTAdatperCallback iTTAdatperCallback = this.mTTAdatperCallback;
            if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdOpened();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdShow() {
            ITTAdatperCallback iTTAdatperCallback = this.mTTAdatperCallback;
            if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdShow();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdShowFail(@NonNull com.bytedance.msdk.api.AdError adError) {
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.gdt.GdtBannerAdapter.TTExpressAd.1
                @Override // java.lang.Runnable
                public void run() {
                    NativeExpressADView nativeExpressADView = TTExpressAd.this.f8481do;
                    if (nativeExpressADView != null) {
                        nativeExpressADView.destroy();
                    }
                }
            });
            this.f8482for = true;
            super.onDestroy();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void render() {
            NativeExpressADView nativeExpressADView = this.f8481do;
            if (nativeExpressADView != null) {
                nativeExpressADView.render();
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void setDislikeCallback(Activity activity, GMDislikeCallback gMDislikeCallback) {
            this.f8483if = gMDislikeCallback;
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

    @Override // com.bytedance.msdk.adapter.ad.GMBannerBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @JProtect
    public void loadAd(Context context, Map<String, Object> map) {
        DownAPPConfirmPolicy downAPPConfirmPolicy;
        DownAPPConfirmPolicy downAPPConfirmPolicy2;
        DownAPPConfirmPolicy downAPPConfirmPolicy3;
        super.loadAd(context, map);
        this.f8462extends = context;
        if (this.mGMAdSlotBanner == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
        } else if (map != null) {
            String str = (String) map.get("tt_ad_network_config_appid");
            Object obj = map.get("tt_ad_sub_type");
            if (obj == null || ((Integer) obj).intValue() != 4) {
                GdtBanner gdtBanner = new GdtBanner();
                if (GdtBannerAdapter.this.f8462extends instanceof Activity) {
                    GdtBannerAdapter gdtBannerAdapter = GdtBannerAdapter.this;
                    UnifiedBannerView unifiedBannerView = new UnifiedBannerView((Activity) gdtBannerAdapter.f8462extends, gdtBannerAdapter.getAdSlotId(), gdtBanner.f8469for);
                    gdtBanner.f8468do = unifiedBannerView;
                    unifiedBannerView.setRefresh(0);
                    gdtBanner.f8468do.loadAD();
                    return;
                }
                return;
            }
            Object obj2 = map.get("tt_ad_origin_type");
            if (obj2 != null) {
                int intValue = ((Integer) obj2).intValue();
                if (intValue == 1) {
                    Context context2 = this.f8462extends;
                    int[] bannerSize = getBannerSize(this.mGMAdSlotBanner.getBannerSize(), this.mGMAdSlotBanner);
                    NativeExpressAD nativeExpressAD = new NativeExpressAD(context2, new ADSize(bannerSize[0], bannerSize[1]), getAdSlotId(), new NativeExpressAD.NativeExpressADListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtBannerAdapter.1

                        /* renamed from: do  reason: not valid java name */
                        public TTExpressAd f8465do;

                        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                        public void onADClicked(NativeExpressADView nativeExpressADView) {
                            TTExpressAd tTExpressAd = this.f8465do;
                            if (tTExpressAd != null) {
                                tTExpressAd.onAdClicked();
                            }
                        }

                        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                        public void onADClosed(NativeExpressADView nativeExpressADView) {
                            TTExpressAd tTExpressAd = this.f8465do;
                            if (tTExpressAd != null) {
                                tTExpressAd.onAdClosed();
                            }
                        }

                        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                        public void onADExposure(NativeExpressADView nativeExpressADView) {
                            TTExpressAd tTExpressAd = this.f8465do;
                            if (tTExpressAd != null) {
                                tTExpressAd.onAdShow();
                            }
                        }

                        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                        public void onADLeftApplication(NativeExpressADView nativeExpressADView) {
                            TTExpressAd tTExpressAd = this.f8465do;
                            if (tTExpressAd != null) {
                                tTExpressAd.onAdLeftApplication();
                            }
                        }

                        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                        public void onADLoaded(List<NativeExpressADView> list) {
                            if (list == null || list.size() == 0) {
                                GdtBannerAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError(com.bytedance.msdk.api.AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                                return;
                            }
                            for (NativeExpressADView nativeExpressADView : list) {
                                if (nativeExpressADView != null) {
                                    TTExpressAd tTExpressAd = new TTExpressAd(GdtBannerAdapter.this, nativeExpressADView);
                                    this.f8465do = tTExpressAd;
                                    tTExpressAd.render();
                                    return;
                                }
                            }
                        }

                        @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
                        public void onNoAD(AdError adError) {
                            if (adError != null) {
                                GdtBannerAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError(adError.getErrorCode(), adError.getErrorMsg()));
                            } else {
                                GdtBannerAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError());
                            }
                        }

                        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                        public void onRenderFail(NativeExpressADView nativeExpressADView) {
                            GdtBannerAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError(com.bytedance.msdk.api.AdError.ERROR_MEDIA_RENDER_MSG));
                        }

                        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
                        public void onRenderSuccess(NativeExpressADView nativeExpressADView) {
                            GdtBannerAdapter.this.notifyAdLoaded(this.f8465do);
                        }
                    });
                    GMAdSlotGDTOption gMAdSlotGDTOption = this.mGMAdSlotBanner.getGMAdSlotGDTOption();
                    if (gMAdSlotGDTOption != null) {
                        nativeExpressAD.setMinVideoDuration(gMAdSlotGDTOption.getGDTMinVideoDuration());
                        nativeExpressAD.setMaxVideoDuration(gMAdSlotGDTOption.getGDTMaxVideoDuration());
                        nativeExpressAD.setVideoOption(GDTAdapterUtils.getGMVideoOption(gMAdSlotGDTOption));
                        if (gMAdSlotGDTOption.getDownAPPConfirmPolicy() == 0) {
                            downAPPConfirmPolicy3 = DownAPPConfirmPolicy.Default;
                        } else if (gMAdSlotGDTOption.getDownAPPConfirmPolicy() == 1) {
                            downAPPConfirmPolicy3 = DownAPPConfirmPolicy.NOConfirm;
                        }
                        nativeExpressAD.setDownAPPConfirmPolicy(downAPPConfirmPolicy3);
                    }
                    nativeExpressAD.loadAD(1);
                } else if (intValue == 2) {
                    NativeUnifiedAD nativeUnifiedAD = new NativeUnifiedAD(this.f8462extends, getAdSlotId(), new NativeADUnifiedListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtBannerAdapter.2
                        @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
                        public void onADLoaded(List<NativeUnifiedADData> list) {
                            if (list == null || list.size() <= 0) {
                                GdtBannerAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError(com.bytedance.msdk.api.AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                                return;
                            }
                            for (NativeUnifiedADData nativeUnifiedADData : list) {
                                if (nativeUnifiedADData != null) {
                                    GdtBannerAdapter gdtBannerAdapter2 = GdtBannerAdapter.this;
                                    gdtBannerAdapter2.notifyAdLoaded(new GdtNativeAd(nativeUnifiedADData));
                                    return;
                                }
                            }
                        }

                        @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
                        public void onNoAD(AdError adError) {
                            if (adError != null) {
                                GdtBannerAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError(adError.getErrorCode(), adError.getErrorMsg()));
                            } else {
                                GdtBannerAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError());
                            }
                        }
                    });
                    GMAdSlotGDTOption gMAdSlotGDTOption2 = this.mGMAdSlotBanner.getGMAdSlotGDTOption();
                    if (gMAdSlotGDTOption2 != null) {
                        this.f8463finally = gMAdSlotGDTOption2.getNativeAdLogoParams();
                        this.f8464package = GDTAdapterUtils.getGMVideoOption(gMAdSlotGDTOption2);
                        int gDTMaxVideoDuration = gMAdSlotGDTOption2.getGDTMaxVideoDuration();
                        int gDTMinVideoDuration = gMAdSlotGDTOption2.getGDTMinVideoDuration();
                        if (gDTMinVideoDuration > 0) {
                            nativeUnifiedAD.setMinVideoDuration(gDTMinVideoDuration);
                        }
                        if (gDTMaxVideoDuration > 0) {
                            nativeUnifiedAD.setMaxVideoDuration(gDTMaxVideoDuration);
                        }
                        if (gMAdSlotGDTOption2.getDownAPPConfirmPolicy() == 0) {
                            downAPPConfirmPolicy2 = DownAPPConfirmPolicy.Default;
                        } else if (gMAdSlotGDTOption2.getDownAPPConfirmPolicy() == 1) {
                            downAPPConfirmPolicy2 = DownAPPConfirmPolicy.NOConfirm;
                        }
                        nativeUnifiedAD.setDownAPPConfirmPolicy(downAPPConfirmPolicy2);
                    }
                    if (gMAdSlotGDTOption2 != null) {
                        if (gMAdSlotGDTOption2.getDownAPPConfirmPolicy() == 0) {
                            downAPPConfirmPolicy = DownAPPConfirmPolicy.Default;
                        } else if (gMAdSlotGDTOption2.getDownAPPConfirmPolicy() == 1) {
                            downAPPConfirmPolicy = DownAPPConfirmPolicy.NOConfirm;
                        }
                        nativeUnifiedAD.setDownAPPConfirmPolicy(downAPPConfirmPolicy);
                    }
                    nativeUnifiedAD.loadData(1);
                } else {
                    notifyAdFailed(new com.bytedance.msdk.api.AdError(com.bytedance.msdk.api.AdError.ERROR_MEDIA_CODE_RENDER_TYPE_MISMATCH_MSG));
                }
            }
        }
    }
}
