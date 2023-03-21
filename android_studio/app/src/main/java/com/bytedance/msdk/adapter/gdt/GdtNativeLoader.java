package com.bytedance.msdk.adapter.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.format.TTMediaView;
import com.bytedance.msdk.api.format.TTNativeAdView;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import com.bytedance.msdk.base.TTBaseAd;
import com.qq.e.ads.cfg.DownAPPConfirmPolicy;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.MediaView;
import com.qq.e.ads.nativ.NativeADEventListener;
import com.qq.e.ads.nativ.NativeADMediaListener;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.ads.nativ.VideoPreloadListener;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes8.dex */
public class GdtNativeLoader {

    /* renamed from: break  reason: not valid java name */
    public FrameLayout.LayoutParams f8538break;

    /* renamed from: case  reason: not valid java name */
    public int f8539case;

    /* renamed from: catch  reason: not valid java name */
    public TTAbsAdLoaderAdapter f8540catch;

    /* renamed from: do  reason: not valid java name */
    public NativeUnifiedADData f8541do;

    /* renamed from: else  reason: not valid java name */
    public Context f8542else;

    /* renamed from: for  reason: not valid java name */
    public String f8543for;

    /* renamed from: goto  reason: not valid java name */
    public GMAdSlotGDTOption f8544goto;

    /* renamed from: if  reason: not valid java name */
    public NativeUnifiedAD f8545if;

    /* renamed from: new  reason: not valid java name */
    public int f8546new;

    /* renamed from: this  reason: not valid java name */
    public VideoOption f8547this;

    /* renamed from: try  reason: not valid java name */
    public int f8548try;

    @JProtect
    public void loadAd(Context context, boolean z, final TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter) {
        NativeUnifiedAD nativeUnifiedAD;
        DownAPPConfirmPolicy downAPPConfirmPolicy;
        NativeUnifiedAD nativeUnifiedAD2;
        DownAPPConfirmPolicy downAPPConfirmPolicy2;
        this.f8542else = context;
        this.f8540catch = tTAbsAdLoaderAdapter;
        NativeADUnifiedListener nativeADUnifiedListener = new NativeADUnifiedListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtNativeLoader.1
            @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
            public void onADLoaded(List<NativeUnifiedADData> list) {
                if (list == null || list.size() <= 0) {
                    tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (NativeUnifiedADData nativeUnifiedADData : list) {
                    arrayList.add(new GdtNativeAd(nativeUnifiedADData));
                }
                tTAbsAdLoaderAdapter.notifyAdLoaded(arrayList);
            }

            @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
            public void onNoAD(com.qq.e.comm.util.AdError adError) {
                if (adError != null) {
                    tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(adError.getErrorCode(), adError.getErrorMsg()));
                } else {
                    tTAbsAdLoaderAdapter.notifyAdFailed(new AdError());
                }
            }
        };
        if (TextUtils.isEmpty(tTAbsAdLoaderAdapter.getAdm())) {
            this.f8545if = new NativeUnifiedAD(context, this.f8543for, nativeADUnifiedListener);
        } else {
            this.f8545if = new NativeUnifiedAD(context, this.f8543for, nativeADUnifiedListener, tTAbsAdLoaderAdapter.getAdm());
        }
        GMAdSlotGDTOption gMAdSlotGDTOption = this.f8544goto;
        if (gMAdSlotGDTOption != null) {
            this.f8539case = gMAdSlotGDTOption.getGDTMaxVideoDuration();
            this.f8548try = this.f8544goto.getGDTMinVideoDuration();
            this.f8547this = GDTAdapterUtils.getGMVideoOption(this.f8544goto);
            if (this.f8544goto.getDownAPPConfirmPolicy() == 0) {
                nativeUnifiedAD2 = this.f8545if;
                downAPPConfirmPolicy2 = DownAPPConfirmPolicy.Default;
            } else if (this.f8544goto.getDownAPPConfirmPolicy() == 1) {
                nativeUnifiedAD2 = this.f8545if;
                downAPPConfirmPolicy2 = DownAPPConfirmPolicy.NOConfirm;
            }
            nativeUnifiedAD2.setDownAPPConfirmPolicy(downAPPConfirmPolicy2);
        }
        int i = this.f8548try;
        if (i > 0) {
            this.f8545if.setMinVideoDuration(i);
        }
        int i2 = this.f8539case;
        if (i2 > 0) {
            this.f8545if.setMaxVideoDuration(i2);
        }
        GMAdSlotGDTOption gMAdSlotGDTOption2 = this.f8544goto;
        if (gMAdSlotGDTOption2 != null) {
            if (gMAdSlotGDTOption2.getDownAPPConfirmPolicy() == 0) {
                nativeUnifiedAD = this.f8545if;
                downAPPConfirmPolicy = DownAPPConfirmPolicy.Default;
            } else if (this.f8544goto.getDownAPPConfirmPolicy() == 1) {
                nativeUnifiedAD = this.f8545if;
                downAPPConfirmPolicy = DownAPPConfirmPolicy.NOConfirm;
            }
            nativeUnifiedAD.setDownAPPConfirmPolicy(downAPPConfirmPolicy);
        }
        NativeUnifiedADData nativeUnifiedADData = this.f8541do;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.destroy();
            this.f8541do = null;
        }
        NativeUnifiedAD nativeUnifiedAD3 = this.f8545if;
        if (nativeUnifiedAD3 != null) {
            nativeUnifiedAD3.loadData(this.f8546new);
        }
    }

    /* loaded from: classes8.dex */
    public class GdtNativeAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public NativeUnifiedADData f8551do;

        /* renamed from: if  reason: not valid java name */
        public volatile boolean f8553if = false;

        /* renamed from: for  reason: not valid java name */
        public NativeADMediaListener f8552for = new NativeADMediaListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtNativeLoader.GdtNativeAd.4
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
            public void onVideoError(com.qq.e.comm.util.AdError adError) {
                GMVideoListener gMVideoListener = GdtNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoError(new AdError(adError.getErrorCode(), adError.getErrorMsg()));
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

        public GdtNativeAd(NativeUnifiedADData nativeUnifiedADData) {
            StringBuilder sb;
            this.f8551do = nativeUnifiedADData;
            NativeUnifiedADAppMiitInfo appMiitInfo = nativeUnifiedADData.getAppMiitInfo();
            if (appMiitInfo != null) {
                setAppName(appMiitInfo.getAppName());
                setAuthorName(appMiitInfo.getAuthorName());
                setPackageSizeBytes(appMiitInfo.getPackageSizeBytes());
                setPermissionsUrl(appMiitInfo.getPermissionsUrl());
                setPrivacyAgreement(appMiitInfo.getPrivacyAgreement());
                setVersionName(appMiitInfo.getVersionName());
            }
            setTitle(nativeUnifiedADData.getTitle());
            setAdDescription(nativeUnifiedADData.getDesc());
            setActionText(nativeUnifiedADData.getCTAText());
            setIconUrl(nativeUnifiedADData.getIconUrl());
            setImageUrl(nativeUnifiedADData.getImgUrl());
            setImageWidth(nativeUnifiedADData.getPictureWidth());
            setImageHeight(nativeUnifiedADData.getPictureHeight());
            setImages(nativeUnifiedADData.getImgList());
            setRating(nativeUnifiedADData.getAppScore());
            setSource(nativeUnifiedADData.getTitle());
            setIsAppDownload(nativeUnifiedADData.isAppAd());
            TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = GdtNativeLoader.this.f8540catch;
            if (tTAbsAdLoaderAdapter != null) {
                if (tTAbsAdLoaderAdapter.isClientBidding()) {
                    setCpm(nativeUnifiedADData.getECPM() != -1 ? nativeUnifiedADData.getECPM() : 0.0d);
                    sb = new StringBuilder();
                    sb.append("GDT_clientBidding 原生Native 返回的 cpm价格：");
                    sb.append(nativeUnifiedADData.getECPM());
                } else if (GdtNativeLoader.this.f8540catch.isMultiBidding()) {
                    setLevelTag(nativeUnifiedADData.getECPMLevel());
                    sb = new StringBuilder();
                    sb.append("GDT_多阶底价 原生Native 返回的 价格标签：");
                    sb.append(nativeUnifiedADData.getECPMLevel());
                }
                Logger.d("TTMediationSDK_ECMP", sb.toString());
            }
            if (nativeUnifiedADData.getAdPatternType() == 2) {
                setImageMode(5);
                nativeUnifiedADData.preloadVideo(new VideoPreloadListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtNativeLoader.GdtNativeAd.1
                    @Override // com.qq.e.ads.nativ.VideoPreloadListener
                    public void onVideoCacheFailed(int i, String str) {
                    }

                    @Override // com.qq.e.ads.nativ.VideoPreloadListener
                    public void onVideoCached() {
                    }
                });
            } else if (nativeUnifiedADData.getAdPatternType() == 4 || nativeUnifiedADData.getAdPatternType() == 1) {
                setImageMode(3);
            } else if (nativeUnifiedADData.getAdPatternType() == 3) {
                setImageMode(4);
            }
            if (nativeUnifiedADData.isAppAd()) {
                setInteractionType(4);
            } else {
                setInteractionType(3);
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidLoseNotify(Map<String, Object> map) {
            if (!isClientBiddingAd() || this.f8551do == null || map == null) {
                return;
            }
            try {
                Object obj = map.get("bidding_lose_reason");
                if (obj instanceof GMAdConstant.BiddingLossReason) {
                    this.f8551do.sendLossNotification(0, GDTAdapterUtils.getBiddingLossReason((GMAdConstant.BiddingLossReason) obj), null);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidWinNotify(Map<String, Object> map) {
            NativeUnifiedADData nativeUnifiedADData;
            if (isClientBiddingAd() && (nativeUnifiedADData = this.f8551do) != null) {
                try {
                    nativeUnifiedADData.sendWinNotification((int) getCpm());
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void dislikeClick(String str, Map<String, Object> map) {
            super.dislikeClick(str, map);
            NativeUnifiedADData nativeUnifiedADData = this.f8551do;
            if (nativeUnifiedADData != null) {
                nativeUnifiedADData.negativeFeedback();
            }
        }

        @JProtect
        /* renamed from: do  reason: not valid java name */
        public final void m3565do(Context context, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
            NativeAdContainer nativeAdContainer;
            Object tag;
            if (this.f8551do == null || !(viewGroup instanceof TTNativeAdView)) {
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
            this.f8551do.bindAdToView(context, nativeAdContainer2, GdtNativeLoader.this.f8538break, list, list2);
            if (tTMediaView != null && getImageMode() == 5) {
                MediaView mediaView = new MediaView(context);
                tTMediaView.removeAllViews();
                tTMediaView.addView(mediaView, -1, -1);
                this.f8551do.bindMediaView(mediaView, GdtNativeLoader.this.f8547this, this.f8552for);
            }
            if (!TextUtils.isEmpty(this.f8551do.getCTAText())) {
                View findViewById = tTNativeAdView.findViewById(gMViewBinder.callToActionId);
                ArrayList arrayList = new ArrayList();
                arrayList.add(findViewById);
                this.f8551do.bindCTAViews(arrayList);
            }
            this.f8551do.setNativeAdEventListener(new NativeADEventListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtNativeLoader.GdtNativeAd.2
                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADClicked() {
                    GMNativeAdListener gMNativeAdListener = GdtNativeAd.this.mTTNativeAdListener;
                    if (gMNativeAdListener != null) {
                        gMNativeAdListener.onAdClick();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADError(com.qq.e.comm.util.AdError adError) {
                    adError.getErrorCode();
                    adError.getErrorMsg();
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADExposed() {
                    GMNativeAdListener gMNativeAdListener = GdtNativeAd.this.mTTNativeAdListener;
                    if (gMNativeAdListener != null) {
                        gMNativeAdListener.onAdShow();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADStatusChanged() {
                }
            });
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public int getDownloadStatus() {
            NativeUnifiedADData nativeUnifiedADData = this.f8551do;
            if (nativeUnifiedADData != null) {
                int appStatus = nativeUnifiedADData.getAppStatus();
                if (appStatus == 0) {
                    return 0;
                }
                if (appStatus == 1) {
                    return 6;
                }
                if (appStatus == 2) {
                    return 8;
                }
                if (appStatus == 4) {
                    return 2;
                }
                if (appStatus == 8) {
                    return 5;
                }
                if (appStatus == 16) {
                    return 4;
                }
                if (appStatus == 32) {
                    return 3;
                }
                if (appStatus == 64) {
                    return 7;
                }
            }
            return 1;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8553if;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            NativeUnifiedADData nativeUnifiedADData = this.f8551do;
            return (nativeUnifiedADData == null || !nativeUnifiedADData.isValid()) ? GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            this.f8553if = true;
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.gdt.GdtNativeLoader.GdtNativeAd.3
                @Override // java.lang.Runnable
                public void run() {
                    NativeUnifiedADData nativeUnifiedADData = GdtNativeAd.this.f8551do;
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
            NativeUnifiedADData nativeUnifiedADData = this.f8551do;
            if (nativeUnifiedADData != null) {
                nativeUnifiedADData.pauseVideo();
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onResume() {
            super.onResume();
            NativeUnifiedADData nativeUnifiedADData = this.f8551do;
            if (nativeUnifiedADData != null) {
                nativeUnifiedADData.resume();
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void pauseAppDownload() {
            NativeUnifiedADData nativeUnifiedADData = this.f8551do;
            if (nativeUnifiedADData != null) {
                nativeUnifiedADData.pauseAppDownload();
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
            if (GdtNativeLoader.this.f8540catch.isServerBidding()) {
                NativeUnifiedADData nativeUnifiedADData = this.f8551do;
                nativeUnifiedADData.setBidECPM(nativeUnifiedADData.getECPM());
            }
            m3565do(activity, viewGroup, list, list4, gMViewBinder);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void resumeAppDownload() {
            NativeUnifiedADData nativeUnifiedADData = this.f8551do;
            if (nativeUnifiedADData != null) {
                nativeUnifiedADData.resumeAppDownload();
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void unregisterView() {
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void registerViewForInteraction(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
            super.registerViewForInteraction(viewGroup, list, list2, gMViewBinder);
            if (GdtNativeLoader.this.f8540catch.isServerBidding()) {
                NativeUnifiedADData nativeUnifiedADData = this.f8551do;
                nativeUnifiedADData.setBidECPM(nativeUnifiedADData.getECPM());
            }
            m3565do(GdtNativeLoader.this.f8542else, viewGroup, list, list2, gMViewBinder);
        }
    }
}
