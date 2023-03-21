package com.bytedance.msdk.adapter.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMDrawBaseAdapter;
import com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.format.TTMediaView;
import com.bytedance.msdk.api.format.TTNativeAdView;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.ad.draw.GMDrawAdListener;
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
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.util.AdError;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class GdtDrawAdapter extends GMDrawBaseAdapter {
    public static final String TAG = "GdtDrawAdapter";

    /* renamed from: finally  reason: not valid java name */
    public VideoOption f8487finally;

    /* loaded from: classes8.dex */
    public static class GMGdtDrawAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public NativeUnifiedADData f8489do;

        /* renamed from: if  reason: not valid java name */
        public VideoOption f8491if;

        /* renamed from: for  reason: not valid java name */
        public volatile boolean f8490for = false;

        /* renamed from: new  reason: not valid java name */
        public NativeADMediaListener f8492new = new NativeADMediaListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtDrawAdapter.GMGdtDrawAd.3
            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            @JProtect
            public void onVideoClicked() {
                GMDrawAdListener gMDrawAdListener = GMGdtDrawAd.this.mGMDrawAdListener;
                if (gMDrawAdListener != null) {
                    gMDrawAdListener.onAdClick();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            @JProtect
            public void onVideoCompleted() {
                GMVideoListener gMVideoListener = GMGdtDrawAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoCompleted();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            @JProtect
            public void onVideoError(AdError adError) {
                GMVideoListener gMVideoListener = GMGdtDrawAd.this.mTTVideoListener;
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
                GMVideoListener gMVideoListener = GMGdtDrawAd.this.mTTVideoListener;
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
                GMVideoListener gMVideoListener = GMGdtDrawAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoResume();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            @JProtect
            public void onVideoStart() {
                GMVideoListener gMVideoListener = GMGdtDrawAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoStart();
                }
            }

            @Override // com.qq.e.ads.nativ.NativeADMediaListener
            public void onVideoStop() {
            }
        };

        public GMGdtDrawAd(NativeUnifiedADData nativeUnifiedADData, GdtDrawAdapter gdtDrawAdapter, VideoOption videoOption) {
            StringBuilder sb;
            this.f8489do = nativeUnifiedADData;
            this.f8491if = videoOption;
            NativeUnifiedADAppMiitInfo appMiitInfo = nativeUnifiedADData.getAppMiitInfo();
            if (appMiitInfo != null) {
                setAppName(appMiitInfo.getAppName());
                setAuthorName(appMiitInfo.getAuthorName());
                setPackageSizeBytes(appMiitInfo.getPackageSizeBytes());
                setPermissionsUrl(appMiitInfo.getPermissionsUrl());
                setPrivacyAgreement(appMiitInfo.getPrivacyAgreement());
                setVersionName(appMiitInfo.getVersionName());
            }
            setTitle(this.f8489do.getTitle());
            setAdDescription(this.f8489do.getDesc());
            setActionText(this.f8489do.getCTAText());
            setIconUrl(this.f8489do.getIconUrl());
            setImageUrl(this.f8489do.getImgUrl());
            setImageWidth(this.f8489do.getPictureWidth());
            setImageHeight(this.f8489do.getPictureHeight());
            setImages(this.f8489do.getImgList());
            setRating(this.f8489do.getAppScore());
            setSource(this.f8489do.getTitle());
            setIsAppDownload(this.f8489do.isAppAd());
            setExpressAd(false);
            if (gdtDrawAdapter != null) {
                if (gdtDrawAdapter.isClientBidding()) {
                    setCpm(this.f8489do.getECPM() != -1 ? this.f8489do.getECPM() : 0.0d);
                    sb = new StringBuilder();
                    sb.append("GDT_clientBidding draw 返回的 cpm价格：");
                    sb.append(this.f8489do.getECPM());
                } else if (gdtDrawAdapter.isMultiBidding()) {
                    setLevelTag(this.f8489do.getECPMLevel());
                    sb = new StringBuilder();
                    sb.append("GDT_多阶底价 draw 返回的 价格标签：");
                    sb.append(this.f8489do.getECPMLevel());
                }
                Logger.d("TTMediationSDK_ECMP", sb.toString());
            }
            if (this.f8489do.getAdPatternType() == 2) {
                setImageMode(5);
                this.f8489do.preloadVideo(new VideoPreloadListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtDrawAdapter.GMGdtDrawAd.1
                    @Override // com.qq.e.ads.nativ.VideoPreloadListener
                    public void onVideoCacheFailed(int i, String str) {
                    }

                    @Override // com.qq.e.ads.nativ.VideoPreloadListener
                    public void onVideoCached() {
                    }
                });
            } else if (this.f8489do.getAdPatternType() == 4 || this.f8489do.getAdPatternType() == 1) {
                setImageMode(3);
            } else if (this.f8489do.getAdPatternType() == 3) {
                setImageMode(4);
            }
            if (this.f8489do.isAppAd()) {
                setInteractionType(4);
            } else {
                setInteractionType(3);
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidLoseNotify(Map<String, Object> map) {
            if (!isClientBiddingAd() || this.f8489do == null || map == null) {
                return;
            }
            try {
                Object obj = map.get("bidding_lose_reason");
                if (obj instanceof GMAdConstant.BiddingLossReason) {
                    this.f8489do.sendLossNotification(0, GDTAdapterUtils.getBiddingLossReason((GMAdConstant.BiddingLossReason) obj), null);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidWinNotify(Map<String, Object> map) {
            NativeUnifiedADData nativeUnifiedADData;
            if (isClientBiddingAd() && (nativeUnifiedADData = this.f8489do) != null) {
                try {
                    nativeUnifiedADData.sendWinNotification((int) getCpm());
                } catch (Exception unused) {
                }
            }
        }

        @JProtect
        /* renamed from: do  reason: not valid java name */
        public final void m3561do(Context context, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
            NativeAdContainer nativeAdContainer;
            Object tag;
            if (this.f8489do == null || !(viewGroup instanceof TTNativeAdView)) {
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
            this.f8489do.bindAdToView(context, nativeAdContainer2, null, list, list2);
            if (tTMediaView != null && getImageMode() == 5) {
                MediaView mediaView = new MediaView(context);
                tTMediaView.removeAllViews();
                tTMediaView.addView(mediaView, -1, -1);
                this.f8489do.bindMediaView(mediaView, this.f8491if, this.f8492new);
            }
            if (!TextUtils.isEmpty(this.f8489do.getCTAText())) {
                View findViewById = tTNativeAdView.findViewById(gMViewBinder.callToActionId);
                ArrayList arrayList = new ArrayList();
                arrayList.add(findViewById);
                this.f8489do.bindCTAViews(arrayList);
            }
            this.f8489do.setNativeAdEventListener(new NativeADEventListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtDrawAdapter.GMGdtDrawAd.2
                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADClicked() {
                    GMDrawAdListener gMDrawAdListener = GMGdtDrawAd.this.mGMDrawAdListener;
                    if (gMDrawAdListener != null) {
                        gMDrawAdListener.onAdClick();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADError(AdError adError) {
                    adError.getErrorCode();
                    adError.getErrorMsg();
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADExposed() {
                    GMDrawAdListener gMDrawAdListener = GMGdtDrawAd.this.mGMDrawAdListener;
                    if (gMDrawAdListener != null) {
                        gMDrawAdListener.onAdShow();
                    }
                }

                @Override // com.qq.e.ads.nativ.NativeADEventListener
                public void onADStatusChanged() {
                }
            });
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8490for;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            NativeUnifiedADData nativeUnifiedADData = this.f8489do;
            return (nativeUnifiedADData == null || !nativeUnifiedADData.isValid()) ? GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            this.f8490for = true;
            NativeUnifiedADData nativeUnifiedADData = this.f8489do;
            if (nativeUnifiedADData != null) {
                nativeUnifiedADData.destroy();
            }
            super.onDestroy();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onPause() {
            super.onPause();
            NativeUnifiedADData nativeUnifiedADData = this.f8489do;
            if (nativeUnifiedADData != null) {
                nativeUnifiedADData.pauseVideo();
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onResume() {
            super.onResume();
            NativeUnifiedADData nativeUnifiedADData = this.f8489do;
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
            m3561do(activity, viewGroup, list, list4, gMViewBinder);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void registerViewForInteraction(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
            super.registerViewForInteraction(viewGroup, list, list2, gMViewBinder);
            m3561do(viewGroup.getContext(), viewGroup, list, list2, gMViewBinder);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void unregisterView() {
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

    @Override // com.bytedance.msdk.adapter.ad.GMDrawBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @JProtect
    public void loadAd(Context context, Map<String, Object> map) {
        int i;
        DownAPPConfirmPolicy downAPPConfirmPolicy;
        super.loadAd(context, map);
        if (this.mGMAdSlotDraw == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
        } else if (TextUtils.isEmpty(getAdSlotId())) {
            notifyAdFailed(new com.bytedance.msdk.api.AdError(com.bytedance.msdk.api.AdError.ERROR_MEDIA_REQUEST_ID_MSG));
        } else {
            NativeUnifiedAD nativeUnifiedAD = new NativeUnifiedAD(context, getAdSlotId(), new NativeADUnifiedListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtDrawAdapter.1
                @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
                public void onADLoaded(List<NativeUnifiedADData> list) {
                    if (list == null || list.size() <= 0) {
                        GdtDrawAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError(com.bytedance.msdk.api.AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (NativeUnifiedADData nativeUnifiedADData : list) {
                        GdtDrawAdapter gdtDrawAdapter = GdtDrawAdapter.this;
                        arrayList.add(new GMGdtDrawAd(nativeUnifiedADData, gdtDrawAdapter, gdtDrawAdapter.f8487finally));
                    }
                    GdtDrawAdapter.this.notifyAdLoaded(arrayList);
                }

                @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
                public void onNoAD(AdError adError) {
                    if (adError != null) {
                        GdtDrawAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError(adError.getErrorCode(), adError.getErrorMsg()));
                    } else {
                        GdtDrawAdapter.this.notifyAdFailed(new com.bytedance.msdk.api.AdError());
                    }
                }
            });
            GMAdSlotGDTOption gMAdSlotGDTOption = this.mGMAdSlotDraw.getGMAdSlotGDTOption();
            int i2 = 0;
            if (gMAdSlotGDTOption != null) {
                int gDTMaxVideoDuration = gMAdSlotGDTOption.getGDTMaxVideoDuration();
                int gDTMinVideoDuration = gMAdSlotGDTOption.getGDTMinVideoDuration();
                this.f8487finally = GDTAdapterUtils.getGMVideoOption(gMAdSlotGDTOption);
                if (gMAdSlotGDTOption.getDownAPPConfirmPolicy() == 0) {
                    downAPPConfirmPolicy = DownAPPConfirmPolicy.Default;
                } else {
                    if (gMAdSlotGDTOption.getDownAPPConfirmPolicy() == 1) {
                        downAPPConfirmPolicy = DownAPPConfirmPolicy.NOConfirm;
                    }
                    i = gDTMaxVideoDuration;
                    i2 = gDTMinVideoDuration;
                }
                nativeUnifiedAD.setDownAPPConfirmPolicy(downAPPConfirmPolicy);
                i = gDTMaxVideoDuration;
                i2 = gDTMinVideoDuration;
            } else {
                i = 0;
            }
            if (i2 > 0) {
                nativeUnifiedAD.setMinVideoDuration(i2);
            }
            if (i > 0) {
                nativeUnifiedAD.setMaxVideoDuration(i);
            }
            nativeUnifiedAD.loadData(this.mGMAdSlotDraw.getAdCount());
        }
    }
}
