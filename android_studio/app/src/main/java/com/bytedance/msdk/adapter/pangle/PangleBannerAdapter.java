package com.bytedance.msdk.adapter.pangle;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMBannerBaseAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdapterBannerAdListener;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.adapter.util.UIUtils;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.format.TTMediaView;
import com.bytedance.msdk.api.format.TTNativeAdView;
import com.bytedance.msdk.api.v2.GMAdDislike;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import com.bytedance.msdk.base.TTBaseAd;
import com.bytedance.sdk.openadsdk.ComplianceInfo;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes8.dex */
public class PangleBannerAdapter extends GMBannerBaseAdapter {

    /* renamed from: extends  reason: not valid java name */
    public Context f8595extends;

    /* loaded from: classes8.dex */
    public class PangleNativeAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public TTFeedAd f8599do;

        /* renamed from: if  reason: not valid java name */
        public volatile boolean f8601if = false;

        /* renamed from: for  reason: not valid java name */
        public TTNativeAd.AdInteractionListener f8600for = new TTNativeAd.AdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeAd.3
            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            @JProtect
            public void onAdClicked(View view, TTNativeAd tTNativeAd) {
                ITTAdatperCallback iTTAdatperCallback = PangleNativeAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            @JProtect
            public void onAdCreativeClick(View view, TTNativeAd tTNativeAd) {
                ITTAdatperCallback iTTAdatperCallback = PangleNativeAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            @JProtect
            public void onAdShow(TTNativeAd tTNativeAd) {
                ITTAdatperCallback iTTAdatperCallback = PangleNativeAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdShow();
                }
            }
        };

        /* renamed from: new  reason: not valid java name */
        public TTFeedAd.VideoAdListener f8602new = new TTFeedAd.VideoAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeAd.4
            @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
            public void onProgressUpdate(long j, long j2) {
                GMVideoListener gMVideoListener = PangleNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onProgressUpdate(j, j2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
            @JProtect
            public void onVideoAdComplete(TTFeedAd tTFeedAd) {
                GMVideoListener gMVideoListener = PangleNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoCompleted();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
            @JProtect
            public void onVideoAdContinuePlay(TTFeedAd tTFeedAd) {
                GMVideoListener gMVideoListener = PangleNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoResume();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
            @JProtect
            public void onVideoAdPaused(TTFeedAd tTFeedAd) {
                GMVideoListener gMVideoListener = PangleNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoPause();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
            @JProtect
            public void onVideoAdStartPlay(TTFeedAd tTFeedAd) {
                GMVideoListener gMVideoListener = PangleNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoStart();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
            @JProtect
            public void onVideoError(int i, int i2) {
                GMVideoListener gMVideoListener = PangleNativeAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoError(new AdError(i, Cgoto.m1003implements("Android MediaPlay Error Code :", i2)));
                    for (char c = 'I'; c != 'H'; c = 'H') {
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
            public void onVideoLoad(TTFeedAd tTFeedAd) {
            }
        };

        /* renamed from: try  reason: not valid java name */
        public TTAppDownloadListener f8603try = new TTAppDownloadListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeAd.5
            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadActive(long j, long j2, String str, String str2) {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onDownloadProgress(j, j2, -1, 1);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadFailed(long j, long j2, String str, String str2) {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onDownloadFailed(j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadFinished(long j, String str, String str2) {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onDownloadFinished(j, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadPaused(long j, long j2, String str, String str2) {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onDownloadPaused(j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onIdle() {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onIdle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onInstalled(String str, String str2) {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onInstalled(str, str2);
                }
            }
        };

        public PangleNativeAd(TTFeedAd tTFeedAd) {
            Map<String, Object> mediaExtraInfo;
            this.f8599do = tTFeedAd;
            ComplianceInfo complianceInfo = tTFeedAd.getComplianceInfo();
            if (complianceInfo != null) {
                setAppName(complianceInfo.getAppName());
                setAuthorName(complianceInfo.getDeveloperName());
                setPrivacyAgreement(complianceInfo.getPrivacyUrl());
                setVersionName(complianceInfo.getAppVersion());
                HashMap hashMap = new HashMap();
                Map<String, String> permissionsMap = complianceInfo.getPermissionsMap();
                if (permissionsMap != null && permissionsMap.size() > 0) {
                    hashMap.putAll(permissionsMap);
                }
                setPermissionsMap(hashMap);
            }
            setTitle(tTFeedAd.getTitle());
            setAdDescription(tTFeedAd.getDescription());
            setActionText(tTFeedAd.getButtonText());
            setIconUrl(tTFeedAd.getIcon() != null ? tTFeedAd.getIcon().getImageUrl() : null);
            setImageMode(tTFeedAd.getImageMode());
            setInteractionType(tTFeedAd.getInteractionType());
            setSource(tTFeedAd.getSource());
            setRating(tTFeedAd.getAppScore());
            setIsAppDownload(tTFeedAd.getInteractionType() == 4);
            setExpressAd(false);
            this.f8599do.getMediaExtraInfo();
            if (tTFeedAd.getImageMode() == 16 || tTFeedAd.getImageMode() == 3 || tTFeedAd.getImageMode() == 2) {
                if (tTFeedAd.getImageList() != null && !tTFeedAd.getImageList().isEmpty() && tTFeedAd.getImageList().get(0) != null) {
                    TTImage tTImage = tTFeedAd.getImageList().get(0);
                    setImageUrl(tTImage.getImageUrl());
                    setImageHeight(tTImage.getHeight());
                    setImageWidth(tTImage.getWidth());
                }
            } else if (tTFeedAd.getImageMode() == 4 && tTFeedAd.getImageList() != null && tTFeedAd.getImageList().size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (TTImage tTImage2 : tTFeedAd.getImageList()) {
                    arrayList.add(tTImage2.getImageUrl());
                }
                setImages(arrayList);
            }
            if (PangleBannerAdapter.this.isClientBidding() && (mediaExtraInfo = tTFeedAd.getMediaExtraInfo()) != null) {
                double value = PangleAdapterUtils.getValue(mediaExtraInfo.get("price"));
                Logger.d("TTMediationSDK_ECMP", "pangle native 返回的 cpm价格：" + value);
                setCpm(value <= 0.0d ? 0.0d : value);
            }
            this.f8599do.setVideoAdListener(this.f8602new);
            this.f8599do.setDownloadListener(this.f8603try);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getAdId() {
            TTFeedAd tTFeedAd = this.f8599do;
            return tTFeedAd != null ? PangleAdapterUtils.getAdId(tTFeedAd.getMediaExtraInfo()) : super.getAdId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getCreativeId() {
            TTFeedAd tTFeedAd = this.f8599do;
            return tTFeedAd != null ? PangleAdapterUtils.getCreativeId(tTFeedAd.getMediaExtraInfo()) : super.getCreativeId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdDislike getDislikeDialog(Activity activity, Map<String, Object> map) {
            TTFeedAd tTFeedAd = this.f8599do;
            if (tTFeedAd != null) {
                final TTAdDislike dislikeDialog = tTFeedAd.getDislikeDialog(activity);
                return new GMAdDislike() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeAd.1
                    @Override // com.bytedance.msdk.api.v2.GMAdDislike
                    public void setDislikeCallback(final GMDislikeCallback gMDislikeCallback) {
                        if (gMDislikeCallback != null) {
                            dislikeDialog.setDislikeInteractionCallback(new TTAdDislike.DislikeInteractionCallback() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeAd.1.1
                                @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                                public void onCancel() {
                                    gMDislikeCallback.onCancel();
                                }

                                @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                                public void onSelected(int i, String str, boolean z) {
                                    gMDislikeCallback.onSelected(i, str);
                                    ITTAdatperCallback iTTAdatperCallback = PangleNativeAd.this.mTTAdatperCallback;
                                    if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                                        ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClosed();
                                    }
                                }

                                @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                                public void onShow() {
                                    gMDislikeCallback.onShow();
                                }
                            });
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.GMAdDislike
                    public void showDislikeDialog() {
                        TTAdDislike tTAdDislike = dislikeDialog;
                        if (tTAdDislike != null) {
                            tTAdDislike.showDislikeDialog();
                        }
                    }
                };
            }
            return super.getDislikeDialog(activity, map);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            TTFeedAd tTFeedAd = this.f8599do;
            if (tTFeedAd == null || (mediaExtraInfo = tTFeedAd.getMediaExtraInfo()) == null) {
                return super.getMediaExtraInfo();
            }
            HashMap hashMap = new HashMap();
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_COUPON, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_COUPON));
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_LIVE_ROOM, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_LIVE_ROOM));
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_PRODUCT, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_PRODUCT));
            return hashMap;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public String getReqId() {
            TTFeedAd tTFeedAd = this.f8599do;
            return tTFeedAd != null ? PangleAdapterUtils.getReqId(tTFeedAd.getMediaExtraInfo()) : super.getReqId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public int getVideoHeight() {
            TTFeedAd tTFeedAd = this.f8599do;
            if (tTFeedAd != null) {
                return tTFeedAd.getAdViewHeight();
            }
            return 0;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public int getVideoWidth() {
            TTFeedAd tTFeedAd = this.f8599do;
            if (tTFeedAd != null) {
                return tTFeedAd.getAdViewWidth();
            }
            return 0;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8601if;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDislike() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            this.f8601if = true;
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeAd.2
                @Override // java.lang.Runnable
                public void run() {
                    TTFeedAd tTFeedAd = PangleNativeAd.this.f8599do;
                    if (tTFeedAd != null) {
                        tTFeedAd.setVideoAdListener(null);
                    }
                }
            });
            super.onDestroy();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void registerViewForInteraction(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
            TTFeedAd tTFeedAd;
            View adView;
            View findViewById;
            super.registerViewForInteraction(viewGroup, list, list2, gMViewBinder);
            if (viewGroup instanceof TTNativeAdView) {
                TTFeedAd tTFeedAd2 = this.f8599do;
                if (tTFeedAd2 != null) {
                    tTFeedAd2.registerViewForInteraction(viewGroup, list, list2, this.f8600for);
                }
                TTFeedAd tTFeedAd3 = this.f8599do;
                if (tTFeedAd3 != null && tTFeedAd3.getAdLogo() != null && (findViewById = viewGroup.findViewById(gMViewBinder.logoLayoutId)) != null) {
                    findViewById.setVisibility(0);
                    if (findViewById instanceof ViewGroup) {
                        ViewGroup viewGroup2 = (ViewGroup) findViewById;
                        viewGroup2.removeAllViews();
                        ImageView imageView = new ImageView(PangleBannerAdapter.this.f8595extends);
                        imageView.setImageBitmap(this.f8599do.getAdLogo());
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                        layoutParams.width = UIUtils.dp2px(PangleBannerAdapter.this.f8595extends, 38.0f);
                        layoutParams.height = UIUtils.dp2px(PangleBannerAdapter.this.f8595extends, 38.0f);
                        findViewById.setLayoutParams(layoutParams);
                        viewGroup2.addView(imageView, -1, -1);
                    } else if (findViewById instanceof ImageView) {
                        ((ImageView) findViewById).setImageBitmap(this.f8599do.getAdLogo());
                    }
                }
                TTMediaView tTMediaView = (TTMediaView) viewGroup.findViewById(gMViewBinder.mediaViewId);
                if (tTMediaView == null || (tTFeedAd = this.f8599do) == null || (adView = tTFeedAd.getAdView()) == null) {
                    return;
                }
                removeSelfFromParent(adView);
                tTMediaView.removeAllViews();
                tTMediaView.addView(adView, -1, -1);
            }
        }
    }

    /* loaded from: classes8.dex */
    public class PangleNativeExpressAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public TTNativeExpressAd f8613do;

        /* renamed from: if  reason: not valid java name */
        public volatile boolean f8615if = false;

        /* renamed from: for  reason: not valid java name */
        public TTNativeExpressAd.ExpressAdInteractionListener f8614for = new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeExpressAd.3
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onAdClicked(View view, int i) {
                ITTAdatperCallback iTTAdatperCallback = PangleNativeExpressAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onAdShow(View view, int i) {
                ITTAdatperCallback iTTAdatperCallback = PangleNativeExpressAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdShow();
                }
            }

            /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
                	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
                	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
                	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
                	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
                	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
                	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
                	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
                	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
                	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
                	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
                	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
                	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
                	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
                	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
                	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
                */
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @com.bytedance.JProtect
            public void onRenderFail(android.view.View r1, java.lang.String r2, int r3) {
                /*
                    r0 = this;
                    com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$PangleNativeExpressAd r1 = com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeExpressAd.this
                    com.bytedance.msdk.adapter.pangle.PangleBannerAdapter r1 = com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.this
                    com.bytedance.msdk.api.AdError r2 = new com.bytedance.msdk.api.AdError
                    java.lang.String r3 = "渲染失败"
                    r2.<init>(r3)
                    r1.notifyAdFailed(r2)
                    r1 = 92
                L10:
                    r2 = 14
                L12:
                    switch(r2) {
                        case 13: goto L1b;
                        case 14: goto L1d;
                        case 15: goto L16;
                        default: goto L15;
                    }
                L15:
                    goto L10
                L16:
                    switch(r1) {
                        case 94: goto L1d;
                        case 95: goto L1a;
                        case 96: goto L1d;
                        default: goto L19;
                    }
                L19:
                    goto L1d
                L1a:
                    return
                L1b:
                    r2 = 72
                L1d:
                    r2 = 15
                    r1 = 95
                    goto L12
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeExpressAd.AnonymousClass3.onRenderFail(android.view.View, java.lang.String, int):void");
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onRenderSuccess(View view, float f, float f2) {
                PangleNativeExpressAd pangleNativeExpressAd = PangleNativeExpressAd.this;
                PangleBannerAdapter.this.notifyAdLoaded(pangleNativeExpressAd);
                while (true) {
                    char c = 15;
                    while (true) {
                        switch (c) {
                            case '\r':
                                break;
                            case 14:
                                return;
                            case 15:
                            default:
                                c = 14;
                        }
                    }
                }
            }
        };

        /* renamed from: new  reason: not valid java name */
        public TTNativeExpressAd.ExpressVideoAdListener f8616new = new TTNativeExpressAd.ExpressVideoAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeExpressAd.4
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onClickRetry() {
                while (true) {
                    char c = '^';
                    char c2 = 'K';
                    while (true) {
                        if (c == '\\') {
                            switch (c2) {
                                case 21:
                                    return;
                                case 22:
                                case 23:
                                    c = ']';
                                    c2 = ']';
                            }
                        } else if (c != ']') {
                            c = ']';
                            c2 = ']';
                        }
                    }
                    while (true) {
                        switch (c2) {
                            case '[':
                                break;
                            case '\\':
                            case ']':
                                return;
                            default:
                                c2 = '[';
                        }
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onProgressUpdate(long j, long j2) {
                GMVideoListener gMVideoListener = PangleNativeExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onProgressUpdate(j, j2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onVideoAdComplete() {
                GMVideoListener gMVideoListener = PangleNativeExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoCompleted();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onVideoAdContinuePlay() {
                GMVideoListener gMVideoListener = PangleNativeExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoResume();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onVideoAdPaused() {
                GMVideoListener gMVideoListener = PangleNativeExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoPause();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onVideoAdStartPlay() {
                GMVideoListener gMVideoListener = PangleNativeExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoStart();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onVideoError(int i, int i2) {
                GMVideoListener gMVideoListener = PangleNativeExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoError(new AdError(i, Cgoto.m1003implements("MediaPlayer inter error code:", i2)));
                    for (char c = 'I'; c != 'H'; c = 'H') {
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            public void onVideoLoad() {
            }
        };

        /* renamed from: try  reason: not valid java name */
        public TTAppDownloadListener f8617try = new TTAppDownloadListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeExpressAd.5
            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadActive(long j, long j2, String str, String str2) {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeExpressAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onDownloadProgress(j, j2, -1, 1);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadFailed(long j, long j2, String str, String str2) {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeExpressAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onDownloadFailed(j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadFinished(long j, String str, String str2) {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeExpressAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onDownloadFinished(j, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadPaused(long j, long j2, String str, String str2) {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeExpressAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onDownloadPaused(j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onIdle() {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeExpressAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onIdle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onInstalled(String str, String str2) {
                GMAdAppDownloadListener gMAdAppDownloadListener = PangleNativeExpressAd.this.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    gMAdAppDownloadListener.onInstalled(str, str2);
                }
            }
        };

        public PangleNativeExpressAd(TTNativeExpressAd tTNativeExpressAd) {
            Map<String, Object> mediaExtraInfo;
            this.f8613do = tTNativeExpressAd;
            setImageMode(tTNativeExpressAd.getImageMode());
            setInteractionType(this.f8613do.getInteractionType());
            setExpressAd(true);
            this.f8613do.setExpressInteractionListener(this.f8614for);
            this.f8613do.setDownloadListener(this.f8617try);
            if (tTNativeExpressAd.getImageMode() == 5) {
                this.f8613do.setVideoAdListener(this.f8616new);
            }
            if (!PangleBannerAdapter.this.isClientBidding() || (mediaExtraInfo = tTNativeExpressAd.getMediaExtraInfo()) == null) {
                return;
            }
            double value = PangleAdapterUtils.getValue(mediaExtraInfo.get("price"));
            Logger.d("TTMediationSDK_ECMP", "banner混存 pangle 模板native 返回的 cpm价格：" + value);
            setCpm(value <= 0.0d ? 0.0d : value);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getAdId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8613do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getAdId(tTNativeExpressAd.getMediaExtraInfo()) : super.getAdId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public View getAdView() {
            TTNativeExpressAd tTNativeExpressAd = this.f8613do;
            if (tTNativeExpressAd != null) {
                return tTNativeExpressAd.getExpressAdView();
            }
            return null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getCreativeId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8613do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getCreativeId(tTNativeExpressAd.getMediaExtraInfo()) : super.getCreativeId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            TTNativeExpressAd tTNativeExpressAd = this.f8613do;
            if (tTNativeExpressAd == null || (mediaExtraInfo = tTNativeExpressAd.getMediaExtraInfo()) == null) {
                return super.getMediaExtraInfo();
            }
            HashMap hashMap = new HashMap();
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_COUPON, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_COUPON));
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_LIVE_ROOM, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_LIVE_ROOM));
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_PRODUCT, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_PRODUCT));
            return hashMap;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public String getReqId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8613do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getReqId(tTNativeExpressAd.getMediaExtraInfo()) : super.getReqId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8615if;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDislike() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            this.f8615if = true;
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeExpressAd.1
                @Override // java.lang.Runnable
                public void run() {
                    TTNativeExpressAd tTNativeExpressAd = PangleNativeExpressAd.this.f8613do;
                    if (tTNativeExpressAd != null) {
                        tTNativeExpressAd.destroy();
                    }
                }
            });
            super.onDestroy();
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
            	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
            	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
            	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
            	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
            	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
            */
        @Override // com.bytedance.msdk.base.TTBaseAd
        @com.bytedance.JProtect
        public void render() {
            /*
                r2 = this;
                com.bytedance.sdk.openadsdk.TTNativeExpressAd r0 = r2.f8613do
                if (r0 == 0) goto L1a
                r0.render()
                r0 = 92
            L9:
                r1 = 14
            Lb:
                switch(r1) {
                    case 13: goto L13;
                    case 14: goto L15;
                    case 15: goto Lf;
                    default: goto Le;
                }
            Le:
                goto L9
            Lf:
                switch(r0) {
                    case 94: goto L15;
                    case 95: goto L1a;
                    case 96: goto L15;
                    default: goto L12;
                }
            L12:
                goto L15
            L13:
                r1 = 72
            L15:
                r1 = 15
                r0 = 95
                goto Lb
            L1a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeExpressAd.render():void");
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void setDislikeCallback(Activity activity, final GMDislikeCallback gMDislikeCallback) {
            TTNativeExpressAd tTNativeExpressAd = this.f8613do;
            if (tTNativeExpressAd != null) {
                tTNativeExpressAd.setDislikeCallback(activity, new TTAdDislike.DislikeInteractionCallback() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.PangleNativeExpressAd.2
                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onCancel() {
                        GMDislikeCallback gMDislikeCallback2 = gMDislikeCallback;
                        if (gMDislikeCallback2 != null) {
                            gMDislikeCallback2.onCancel();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onSelected(int i, String str, boolean z) {
                        GMDislikeCallback gMDislikeCallback2 = gMDislikeCallback;
                        if (gMDislikeCallback2 != null) {
                            gMDislikeCallback2.onSelected(i, str);
                            ITTAdatperCallback iTTAdatperCallback = PangleNativeExpressAd.this.mTTAdatperCallback;
                            if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                                ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClosed();
                            }
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onShow() {
                        GMDislikeCallback gMDislikeCallback2 = gMDislikeCallback;
                        if (gMDislikeCallback2 != null) {
                            gMDislikeCallback2.onShow();
                        }
                    }
                });
            }
        }
    }

    /* loaded from: classes8.dex */
    public class TTBannerView extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public TTNativeExpressAd f8625do;

        /* renamed from: if  reason: not valid java name */
        public View f8628if;

        /* renamed from: new  reason: not valid java name */
        public boolean f8629new;

        /* renamed from: for  reason: not valid java name */
        public final Object f8627for = new Object();

        /* renamed from: try  reason: not valid java name */
        public volatile boolean f8630try = false;

        /* renamed from: case  reason: not valid java name */
        public TTNativeExpressAd.ExpressAdInteractionListener f8624case = new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.TTBannerView.4
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onAdClicked(View view, int i) {
                ITTAdatperCallback iTTAdatperCallback = TTBannerView.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onAdShow(View view, int i) {
                ITTAdatperCallback iTTAdatperCallback = TTBannerView.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterBannerAdListener) {
                    ((ITTAdapterBannerAdListener) iTTAdatperCallback).onAdShow();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onRenderFail(View view, String str, int i) {
                TTBannerView.this.f8629new = false;
                Logger.e("TTMediationSDK_banner", TTLogUtil.getTagThirdLevelById(PangleBannerAdapter.this.getAdapterRit(), PangleBannerAdapter.this.getAdSlotId()) + "TTBannerView onRenderFail -> code=" + i + ",msg=" + str);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onRenderSuccess(View view, float f, float f2) {
                Logger.e("TTMediationSDK_banner", TTLogUtil.getTagThirdLevelById(PangleBannerAdapter.this.getAdapterRit(), PangleBannerAdapter.this.getAdSlotId()) + "TTBannerView onRenderSuccess 渲染成功！！");
                TTBannerView tTBannerView = TTBannerView.this;
                if (tTBannerView.f8628if instanceof FrameLayout) {
                    PangleBannerAdapter.this.removeFromParent(view);
                    ((FrameLayout) TTBannerView.this.f8628if).addView(view, new ViewGroup.LayoutParams(-1, -1));
                }
                TTBannerView.this.f8629new = true;
                char c = 18;
                while (true) {
                    char c2 = '\r';
                    while (true) {
                        switch (c2) {
                            case '\r':
                                c2 = 15;
                                c = '\r';
                            case 14:
                                while (true) {
                                    switch (c) {
                                        case '\n':
                                        case 11:
                                            break;
                                        case '\f':
                                            break;
                                        default:
                                            c = '\f';
                                    }
                                }
                                c2 = 15;
                                c = '\r';
                                break;
                            case 15:
                                while (true) {
                                    switch (c) {
                                        case '\r':
                                            return;
                                    }
                                }
                                break;
                        }
                    }
                }
                while (true) {
                }
            }
        };

        public TTBannerView() {
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getAdId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8625do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getAdId(tTNativeExpressAd.getMediaExtraInfo()) : super.getAdId();
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0015, code lost:
            r0 = r6.f8627for;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0017, code lost:
            monitor-enter(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x001a, code lost:
            if (r6.f8628if != null) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x001c, code lost:
            r1 = android.os.SystemClock.uptimeMillis();
            r3 = androidx.recyclerview.widget.ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS + r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0025, code lost:
            if (r6.f8629new != false) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0029, code lost:
            if (r1 >= r3) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x002b, code lost:
            r6.f8627for.wait(r3 - r1);
            r1 = android.os.SystemClock.uptimeMillis();
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0037, code lost:
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0038, code lost:
            r1.printStackTrace();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0001, code lost:
            continue;
         */
        @Override // com.bytedance.msdk.base.TTBaseAd
        @com.bytedance.JProtect
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public synchronized android.view.View getAdView() {
            /*
                r6 = this;
                monitor-enter(r6)
            L1:
                r0 = 95
                r1 = 95
            L5:
                switch(r0) {
                    case 94: goto L10;
                    case 95: goto L9;
                    case 96: goto Lc;
                    default: goto L8;
                }
            L8:
                goto L46
            L9:
                switch(r1) {
                    case 94: goto L1;
                    case 95: goto L46;
                    case 96: goto L1;
                    default: goto Lc;
                }
            Lc:
                switch(r1) {
                    case 55: goto L46;
                    case 56: goto L46;
                    case 57: goto L46;
                    default: goto Lf;
                }
            Lf:
                goto L15
            L10:
                r0 = 39
                if (r1 != r0) goto L15
                goto L1
            L15:
                java.lang.Object r0 = r6.f8627for     // Catch: java.lang.Throwable -> L43
                monitor-enter(r0)     // Catch: java.lang.Throwable -> L43
                android.view.View r1 = r6.f8628if     // Catch: java.lang.Throwable -> L40
                if (r1 != 0) goto L3b
                long r1 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.InterruptedException -> L37 java.lang.Throwable -> L40
                r3 = 2000(0x7d0, double:9.88E-321)
                long r3 = r3 + r1
            L23:
                boolean r5 = r6.f8629new     // Catch: java.lang.InterruptedException -> L37 java.lang.Throwable -> L40
                if (r5 != 0) goto L3b
                int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                if (r5 >= 0) goto L3b
                java.lang.Object r5 = r6.f8627for     // Catch: java.lang.InterruptedException -> L37 java.lang.Throwable -> L40
                long r1 = r3 - r1
                r5.wait(r1)     // Catch: java.lang.InterruptedException -> L37 java.lang.Throwable -> L40
                long r1 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.InterruptedException -> L37 java.lang.Throwable -> L40
                goto L23
            L37:
                r1 = move-exception
                r1.printStackTrace()     // Catch: java.lang.Throwable -> L40
            L3b:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L40
                android.view.View r0 = r6.f8628if     // Catch: java.lang.Throwable -> L43
                monitor-exit(r6)
                return r0
            L40:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L40
                throw r1     // Catch: java.lang.Throwable -> L43
            L43:
                r0 = move-exception
                monitor-exit(r6)
                throw r0
            L46:
                r0 = 94
                r1 = 125(0x7d, float:1.75E-43)
                goto L5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.TTBannerView.getAdView():android.view.View");
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getCreativeId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8625do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getCreativeId(tTNativeExpressAd.getMediaExtraInfo()) : super.getCreativeId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            TTNativeExpressAd tTNativeExpressAd = this.f8625do;
            if (tTNativeExpressAd == null || (mediaExtraInfo = tTNativeExpressAd.getMediaExtraInfo()) == null) {
                return super.getMediaExtraInfo();
            }
            HashMap hashMap = new HashMap();
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_COUPON, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_COUPON));
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_LIVE_ROOM, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_LIVE_ROOM));
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_PRODUCT, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_PRODUCT));
            return hashMap;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public String getReqId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8625do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getReqId(tTNativeExpressAd.getMediaExtraInfo()) : super.getReqId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8630try;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDislike() {
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0073 A[LOOP:3: B:12:0x006e->B:15:0x0073, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0072 A[SYNTHETIC] */
        @com.bytedance.JProtect
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void loadAd() {
            /*
                r9 = this;
                com.bytedance.sdk.openadsdk.TTAdManager r0 = com.bytedance.sdk.openadsdk.TTAdSdk.getAdManager()
                com.bytedance.msdk.adapter.pangle.PangleBannerAdapter r1 = com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.this
                android.content.Context r1 = r1.f8595extends
                com.bytedance.sdk.openadsdk.TTAdNative r0 = r0.createAdNative(r1)
                com.bytedance.msdk.adapter.pangle.PangleBannerAdapter r1 = com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.this
                com.bytedance.msdk.api.AdSlot r2 = r1.mAdSlot
                com.bytedance.msdk.api.v2.slot.GMAdSlotBanner r3 = r1.mGMAdSlotBanner
                java.lang.String r4 = r1.getAdSlotId()
                com.bytedance.msdk.adapter.pangle.PangleBannerAdapter r1 = com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.this
                java.lang.String r5 = r1.mWaterfallAbTestParam
                java.lang.String r6 = r1.getClientReqId()
                com.bytedance.msdk.adapter.pangle.PangleBannerAdapter r1 = com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.this
                java.lang.String r7 = r1.getAdm()
                r8 = 0
                com.bytedance.sdk.openadsdk.AdSlot$Builder r1 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.buildPangleAdSlot(r2, r3, r4, r5, r6, r7, r8)
                com.bytedance.msdk.adapter.pangle.PangleBannerAdapter r2 = com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.this
                com.bytedance.msdk.api.v2.slot.GMAdSlotBanner r3 = r2.mGMAdSlotBanner
                int r3 = r3.getBannerSize()
                com.bytedance.msdk.adapter.pangle.PangleBannerAdapter r4 = com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.this
                com.bytedance.msdk.api.v2.slot.GMAdSlotBanner r4 = r4.mGMAdSlotBanner
                int[] r2 = r2.getBannerSize(r3, r4)
                r3 = 0
                r3 = r2[r3]
                float r3 = (float) r3
                r4 = 1
                r2 = r2[r4]
                float r2 = (float) r2
                r1.setExpressViewAcceptedSize(r3, r2)
                com.bytedance.sdk.openadsdk.AdSlot r1 = r1.build()
                com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$TTBannerView$1 r2 = new com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$TTBannerView$1
                r2.<init>()
                r0.loadBannerExpressAd(r1, r2)
                r0 = 61
                r1 = 12
                r2 = 61
            L56:
                r3 = 8
                r4 = 9
                r5 = 9
            L5c:
                r6 = 7
                r7 = 27
                if (r5 == r6) goto L6c
                if (r5 == r3) goto L66
                if (r5 == r4) goto L7a
                goto L56
            L66:
                switch(r2) {
                    case 37: goto L72;
                    case 38: goto L6e;
                    case 39: goto L7a;
                    default: goto L69;
                }
            L69:
                r2 = 39
                goto L66
            L6c:
                if (r2 >= r7) goto L76
            L6e:
                switch(r1) {
                    case 25: goto L72;
                    case 26: goto L7a;
                    case 27: goto L56;
                    default: goto L71;
                }
            L71:
                goto L73
            L72:
                return
            L73:
                r1 = 27
                goto L6e
            L76:
                if (r1 <= r0) goto L7a
            L78:
            L79:
                goto L78
            L7a:
                r2 = 37
                r5 = 8
                goto L5c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.TTBannerView.loadAd():void");
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            this.f8630try = true;
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.TTBannerView.3
                @Override // java.lang.Runnable
                public void run() {
                    TTNativeExpressAd tTNativeExpressAd = TTBannerView.this.f8625do;
                    if (tTNativeExpressAd != null) {
                        tTNativeExpressAd.setExpressInteractionListener((TTNativeExpressAd.AdInteractionListener) null);
                        TTBannerView.this.f8625do.destroy();
                    }
                }
            });
            super.onDestroy();
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0021 A[PHI: r4 
          PHI: (r4v3 char) = (r4v2 char), (r4v4 char) binds: [B:6:0x0015, B:4:0x0004] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:5:0x0011  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0019  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:5:0x0011 -> B:6:0x0015). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:6:0x0015 -> B:12:0x0021). Please submit an issue!!! */
        @Override // com.bytedance.msdk.base.TTBaseAd
        @com.bytedance.JProtect
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void setDislikeCallback(android.app.Activity r3, final com.bytedance.msdk.api.v2.GMDislikeCallback r4) {
            /*
                r2 = this;
                com.bytedance.sdk.openadsdk.TTNativeExpressAd r0 = r2.f8625do
                if (r0 == 0) goto L11
                com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$TTBannerView$2 r1 = new com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$TTBannerView$2
                r1.<init>()
                r0.setDislikeCallback(r3, r1)
                r3 = 92
                r4 = 92
                goto L21
            L11:
                r3 = 15
                r4 = 95
            L15:
                switch(r3) {
                    case 13: goto L1e;
                    case 14: goto L11;
                    case 15: goto L19;
                    default: goto L18;
                }
            L18:
                goto L21
            L19:
                switch(r4) {
                    case 94: goto L11;
                    case 95: goto L1d;
                    case 96: goto L11;
                    default: goto L1c;
                }
            L1c:
                goto L11
            L1d:
                return
            L1e:
                r3 = 72
                goto L11
            L21:
                r3 = 14
                goto L15
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.TTBannerView.setDislikeCallback(android.app.Activity, com.bytedance.msdk.api.v2.GMDislikeCallback):void");
        }
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public void destroy() {
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getAdNetWorkName() {
        return "pangle";
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getSdkVersion() {
        try {
            return TTAdSdk.getAdManager().getSDKVersion();
        } catch (Exception unused) {
            return PangleRewardVideoAdapter.VERSION_00;
        }
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f4 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00f1 -> B:24:0x00ef). Please submit an issue!!! */
    @Override // com.bytedance.msdk.adapter.ad.GMBannerBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @com.bytedance.JProtect
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void loadAd(android.content.Context r10, java.util.Map<java.lang.String, java.lang.Object> r11) {
        /*
            r9 = this;
            super.loadAd(r10, r11)
            r9.f8595extends = r10
            com.bytedance.msdk.api.v2.slot.GMAdSlotBanner r10 = r9.mGMAdSlotBanner
            r0 = 90
            if (r10 == 0) goto Lec
            if (r11 == 0) goto Lef
            java.lang.String r10 = "tt_ad_sub_type"
            java.lang.Object r10 = r11.get(r10)
            if (r10 == 0) goto Le1
            java.lang.Integer r10 = (java.lang.Integer) r10
            int r10 = r10.intValue()
            r1 = 4
            if (r10 != r1) goto Le1
            java.lang.String r10 = "tt_ad_origin_type"
            java.lang.Object r10 = r11.get(r10)
            if (r10 == 0) goto Lef
            java.lang.Integer r10 = (java.lang.Integer) r10
            int r10 = r10.intValue()
            r11 = 0
            r1 = 1
            if (r10 != r1) goto L86
            com.bytedance.sdk.openadsdk.TTAdManager r10 = com.bytedance.sdk.openadsdk.TTAdSdk.getAdManager()
            android.content.Context r2 = r9.f8595extends
            com.bytedance.sdk.openadsdk.TTAdNative r10 = r10.createAdNative(r2)
            com.bytedance.msdk.api.AdSlot r2 = r9.mAdSlot
            com.bytedance.msdk.api.v2.slot.GMAdSlotBanner r3 = r9.mGMAdSlotBanner
            java.lang.String r4 = r9.getAdSlotId()
            java.lang.String r5 = r9.mWaterfallAbTestParam
            java.lang.String r6 = r9.getClientReqId()
            java.lang.String r7 = r9.getAdm()
            r8 = 0
            com.bytedance.sdk.openadsdk.AdSlot$Builder r2 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.buildPangleAdSlot(r2, r3, r4, r5, r6, r7, r8)
            com.bytedance.msdk.api.v2.slot.GMAdSlotBanner r3 = r9.mGMAdSlotBanner
            int r3 = r3.getBannerSize()
            com.bytedance.msdk.api.v2.slot.GMAdSlotBanner r4 = r9.mGMAdSlotBanner
            int[] r3 = r9.getBannerSize(r3, r4)
            r11 = r3[r11]
            android.content.Context r4 = r9.f8595extends
            int r11 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.dp2px(r4, r11)
            r1 = r3[r1]
            android.content.Context r3 = r9.f8595extends
            int r1 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.dp2px(r3, r1)
            r2.setImageAcceptedSize(r11, r1)
            float r11 = (float) r11
            if (r1 <= 0) goto L75
            float r1 = (float) r1
            goto L76
        L75:
            r1 = 0
        L76:
            r2.setExpressViewAcceptedSize(r11, r1)
            com.bytedance.sdk.openadsdk.AdSlot r11 = r2.build()
            com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$1 r1 = new com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$1
            r1.<init>()
            r10.loadNativeExpressAd(r11, r1)
            goto Lef
        L86:
            r2 = 2
            if (r10 != r2) goto Ld6
            com.bytedance.sdk.openadsdk.TTAdManager r10 = com.bytedance.sdk.openadsdk.TTAdSdk.getAdManager()
            android.content.Context r2 = r9.f8595extends
            com.bytedance.sdk.openadsdk.TTAdNative r10 = r10.createAdNative(r2)
            com.bytedance.msdk.api.AdSlot r2 = r9.mAdSlot
            com.bytedance.msdk.api.v2.slot.GMAdSlotBanner r3 = r9.mGMAdSlotBanner
            java.lang.String r4 = r9.getAdSlotId()
            java.lang.String r5 = r9.mWaterfallAbTestParam
            java.lang.String r6 = r9.getClientReqId()
            java.lang.String r7 = r9.getAdm()
            r8 = 0
            com.bytedance.sdk.openadsdk.AdSlot$Builder r2 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.buildPangleAdSlot(r2, r3, r4, r5, r6, r7, r8)
            com.bytedance.msdk.api.v2.slot.GMAdSlotBanner r3 = r9.mGMAdSlotBanner
            int r3 = r3.getBannerSize()
            com.bytedance.msdk.api.v2.slot.GMAdSlotBanner r4 = r9.mGMAdSlotBanner
            int[] r3 = r9.getBannerSize(r3, r4)
            r11 = r3[r11]
            android.content.Context r4 = r9.f8595extends
            int r11 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.dp2px(r4, r11)
            r1 = r3[r1]
            android.content.Context r3 = r9.f8595extends
            int r1 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.dp2px(r3, r1)
            r2.setImageAcceptedSize(r11, r1)
            com.bytedance.sdk.openadsdk.AdSlot r11 = r2.build()
            com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$2 r1 = new com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$2
            r1.<init>()
            r10.loadFeedAd(r11, r1)
            goto Lef
        Ld6:
            com.bytedance.msdk.api.AdError r10 = new com.bytedance.msdk.api.AdError
            java.lang.String r11 = "渲染类型错误"
            r10.<init>(r11)
            r9.notifyAdFailed(r10)
            goto Lef
        Le1:
            com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$TTBannerView r10 = new com.bytedance.msdk.adapter.pangle.PangleBannerAdapter$TTBannerView
            r10.<init>()
            r10.loadAd()
            r10 = 91
            goto Lf1
        Lec:
            r9.notifyLoadFailBecauseGMAdSlotIsNull()
        Lef:
            r10 = 90
        Lf1:
            if (r10 == r0) goto Lf4
            goto Lef
        Lf4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleBannerAdapter.loadAd(android.content.Context, java.util.Map):void");
    }
}
