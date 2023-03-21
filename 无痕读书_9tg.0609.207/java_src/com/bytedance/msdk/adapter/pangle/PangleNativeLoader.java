package com.bytedance.msdk.adapter.pangle;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.GMAdDislike;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import com.bytedance.msdk.base.TTBaseAd;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class PangleNativeLoader {

    /* renamed from: do  reason: not valid java name */
    public boolean f8687do;

    /* renamed from: for  reason: not valid java name */
    public TTAbsAdLoaderAdapter f8688for;

    /* renamed from: if  reason: not valid java name */
    public Context f8689if;

    /* renamed from: new  reason: not valid java name */
    public int f8690new;

    /* loaded from: classes8.dex */
    public class PangleNativeAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public TTFeedAd f8693do;

        /* renamed from: if  reason: not valid java name */
        public TTNativeAd.AdInteractionListener f8695if = new TTNativeAd.AdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeLoader.PangleNativeAd.4
            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            @JProtect
            public void onAdClicked(View view, TTNativeAd tTNativeAd) {
                GMNativeAdListener gMNativeAdListener = PangleNativeAd.this.mTTNativeAdListener;
                if (gMNativeAdListener != null) {
                    gMNativeAdListener.onAdClick();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            @JProtect
            public void onAdCreativeClick(View view, TTNativeAd tTNativeAd) {
                GMNativeAdListener gMNativeAdListener = PangleNativeAd.this.mTTNativeAdListener;
                if (gMNativeAdListener != null) {
                    gMNativeAdListener.onAdClick();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
            @JProtect
            public void onAdShow(TTNativeAd tTNativeAd) {
                GMNativeAdListener gMNativeAdListener = PangleNativeAd.this.mTTNativeAdListener;
                if (gMNativeAdListener != null) {
                    gMNativeAdListener.onAdShow();
                }
            }
        };

        /* renamed from: for  reason: not valid java name */
        public TTFeedAd.VideoAdListener f8694for = new TTFeedAd.VideoAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeLoader.PangleNativeAd.5
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

        /* renamed from: new  reason: not valid java name */
        public TTAppDownloadListener f8696new = new TTAppDownloadListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeLoader.PangleNativeAd.6
            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadActive(long j, long j2, String str, String str2) {
                PangleNativeAd pangleNativeAd = PangleNativeAd.this;
                GMAdAppDownloadListener gMAdAppDownloadListener = pangleNativeAd.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    PangleNativeLoader.this.f8690new = 2;
                    gMAdAppDownloadListener.onDownloadProgress(j, j2, -1, 1);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadFailed(long j, long j2, String str, String str2) {
                PangleNativeAd pangleNativeAd = PangleNativeAd.this;
                GMAdAppDownloadListener gMAdAppDownloadListener = pangleNativeAd.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    PangleNativeLoader.this.f8690new = 4;
                    gMAdAppDownloadListener.onDownloadFailed(j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadFinished(long j, String str, String str2) {
                PangleNativeAd pangleNativeAd = PangleNativeAd.this;
                GMAdAppDownloadListener gMAdAppDownloadListener = pangleNativeAd.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    PangleNativeLoader.this.f8690new = 5;
                    gMAdAppDownloadListener.onDownloadFinished(j, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadPaused(long j, long j2, String str, String str2) {
                PangleNativeAd pangleNativeAd = PangleNativeAd.this;
                GMAdAppDownloadListener gMAdAppDownloadListener = pangleNativeAd.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    PangleNativeLoader.this.f8690new = 3;
                    gMAdAppDownloadListener.onDownloadPaused(j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onIdle() {
                PangleNativeAd pangleNativeAd = PangleNativeAd.this;
                GMAdAppDownloadListener gMAdAppDownloadListener = pangleNativeAd.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    PangleNativeLoader.this.f8690new = 0;
                    gMAdAppDownloadListener.onIdle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onInstalled(String str, String str2) {
                PangleNativeAd pangleNativeAd = PangleNativeAd.this;
                GMAdAppDownloadListener gMAdAppDownloadListener = pangleNativeAd.mTTAdAppDownloadListener;
                if (gMAdAppDownloadListener != null) {
                    PangleNativeLoader.this.f8690new = 6;
                    gMAdAppDownloadListener.onInstalled(str, str2);
                }
            }
        };

        /* JADX WARN: Code restructure failed: missing block: B:52:0x0148, code lost:
            if (r0 != null) goto L61;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public PangleNativeAd(com.bytedance.sdk.openadsdk.TTFeedAd r6) {
            /*
                Method dump skipped, instructions count: 456
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleNativeLoader.PangleNativeAd.<init>(com.bytedance.msdk.adapter.pangle.PangleNativeLoader, com.bytedance.sdk.openadsdk.TTFeedAd):void");
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void cancelDownload() {
            TTFeedAd tTFeedAd = this.f8693do;
            if (tTFeedAd == null || tTFeedAd.getDownloadStatusController() == null) {
                return;
            }
            this.f8693do.getDownloadStatusController().cancelDownload();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getAdId() {
            TTFeedAd tTFeedAd = this.f8693do;
            return tTFeedAd != null ? PangleAdapterUtils.getAdId(tTFeedAd.getMediaExtraInfo()) : super.getAdId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getCreativeId() {
            TTFeedAd tTFeedAd = this.f8693do;
            return tTFeedAd != null ? PangleAdapterUtils.getCreativeId(tTFeedAd.getMediaExtraInfo()) : super.getCreativeId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdDislike getDislikeDialog(Activity activity, Map<String, Object> map) {
            if (this.f8693do != null) {
                final TTDislikeDialogAbstract tTDislikeDialogAbstract = null;
                if (map != null && (map.get(GMAdConstant.PANGLE_CUSTOM_DIALOG) instanceof TTDislikeDialogAbstract)) {
                    tTDislikeDialogAbstract = (TTDislikeDialogAbstract) map.get(GMAdConstant.PANGLE_CUSTOM_DIALOG);
                }
                if (tTDislikeDialogAbstract == null) {
                    final TTAdDislike dislikeDialog = this.f8693do.getDislikeDialog(activity);
                    return new GMAdDislike() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeLoader.PangleNativeAd.3
                        @Override // com.bytedance.msdk.api.v2.GMAdDislike
                        public void setDislikeCallback(final GMDislikeCallback gMDislikeCallback) {
                            if (gMDislikeCallback != null) {
                                dislikeDialog.setDislikeInteractionCallback(new TTAdDislike.DislikeInteractionCallback() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeLoader.PangleNativeAd.3.1
                                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                                    public void onCancel() {
                                        gMDislikeCallback.onCancel();
                                    }

                                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                                    public void onSelected(int i, String str, boolean z) {
                                        try {
                                            if (PangleNativeLoader.this.f8688for != null) {
                                                PangleNativeLoader.this.f8688for.nativeDislikeClick(PangleNativeAd.this, str, null);
                                            }
                                        } catch (Throwable th) {
                                            th.printStackTrace();
                                        }
                                        gMDislikeCallback.onSelected(i, str);
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

                        @Override // com.bytedance.msdk.api.v2.GMAdDislike
                        public void showDislikeDialog() {
                            TTAdDislike tTAdDislike = dislikeDialog;
                            if (tTAdDislike != null) {
                                tTAdDislike.showDislikeDialog();
                            }
                        }
                    };
                }
                Logger.e("TTMediationSDK", "---pangle_getDislikeDialog_custom_dialog---");
                this.f8693do.setDislikeDialog(tTDislikeDialogAbstract);
                return new GMAdDislike() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeLoader.PangleNativeAd.2
                    @Override // com.bytedance.msdk.api.v2.GMAdDislike
                    public void setDislikeCallback(GMDislikeCallback gMDislikeCallback) {
                    }

                    @Override // com.bytedance.msdk.api.v2.GMAdDislike
                    public void showDislikeDialog() {
                        TTDislikeDialogAbstract tTDislikeDialogAbstract2 = TTDislikeDialogAbstract.this;
                        if (tTDislikeDialogAbstract2 != null) {
                            tTDislikeDialogAbstract2.show();
                        }
                    }
                };
            }
            return super.getDislikeDialog(activity, map);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public int getDownloadStatus() {
            return PangleNativeLoader.this.f8690new;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMNativeCustomVideoReporter getGMNativeCustomVideoReporter() {
            if (isUseCustomVideo()) {
                return new GMNativeCustomVideoReporter() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeLoader.PangleNativeAd.1
                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter
                    public void reportVideoAutoStart() {
                        TTFeedAd tTFeedAd = PangleNativeAd.this.f8693do;
                        if (tTFeedAd == null || tTFeedAd.getCustomVideo() == null) {
                            return;
                        }
                        PangleNativeAd.this.f8693do.getCustomVideo().reportVideoAutoStart();
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter
                    public void reportVideoBreak(long j) {
                        TTFeedAd tTFeedAd = PangleNativeAd.this.f8693do;
                        if (tTFeedAd == null || tTFeedAd.getCustomVideo() == null) {
                            return;
                        }
                        PangleNativeAd.this.f8693do.getCustomVideo().reportVideoBreak(j);
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter
                    public void reportVideoContinue(long j) {
                        TTFeedAd tTFeedAd = PangleNativeAd.this.f8693do;
                        if (tTFeedAd == null || tTFeedAd.getCustomVideo() == null) {
                            return;
                        }
                        PangleNativeAd.this.f8693do.getCustomVideo().reportVideoContinue(j);
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter
                    public void reportVideoError(long j, int i, int i2) {
                        TTFeedAd tTFeedAd = PangleNativeAd.this.f8693do;
                        if (tTFeedAd == null || tTFeedAd.getCustomVideo() == null) {
                            return;
                        }
                        PangleNativeAd.this.f8693do.getCustomVideo().reportVideoError(j, i, i2);
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter
                    public void reportVideoFinish() {
                        TTFeedAd tTFeedAd = PangleNativeAd.this.f8693do;
                        if (tTFeedAd == null || tTFeedAd.getCustomVideo() == null) {
                            return;
                        }
                        PangleNativeAd.this.f8693do.getCustomVideo().reportVideoFinish();
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter
                    public void reportVideoPause(long j) {
                        TTFeedAd tTFeedAd = PangleNativeAd.this.f8693do;
                        if (tTFeedAd == null || tTFeedAd.getCustomVideo() == null) {
                            return;
                        }
                        PangleNativeAd.this.f8693do.getCustomVideo().reportVideoPause(j);
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter
                    public void reportVideoStart() {
                        TTFeedAd tTFeedAd = PangleNativeAd.this.f8693do;
                        if (tTFeedAd == null || tTFeedAd.getCustomVideo() == null) {
                            return;
                        }
                        PangleNativeAd.this.f8693do.getCustomVideo().reportVideoStart();
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter
                    public void reportVideoStartError(int i, int i2) {
                        TTFeedAd tTFeedAd = PangleNativeAd.this.f8693do;
                        if (tTFeedAd == null || tTFeedAd.getCustomVideo() == null) {
                            return;
                        }
                        PangleNativeAd.this.f8693do.getCustomVideo().reportVideoStartError(i, i2);
                    }
                };
            }
            return null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            TTFeedAd tTFeedAd = this.f8693do;
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
            TTFeedAd tTFeedAd = this.f8693do;
            return tTFeedAd != null ? PangleAdapterUtils.getReqId(tTFeedAd.getMediaExtraInfo()) : super.getReqId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public int getVideoHeight() {
            TTFeedAd tTFeedAd = this.f8693do;
            if (tTFeedAd != null) {
                return tTFeedAd.getAdViewHeight();
            }
            return 0;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public String getVideoUrl() {
            TTFeedAd tTFeedAd;
            if (!isUseCustomVideo() || (tTFeedAd = this.f8693do) == null || tTFeedAd.getCustomVideo() == null) {
                return null;
            }
            return this.f8693do.getCustomVideo().getVideoUrl();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public int getVideoWidth() {
            TTFeedAd tTFeedAd = this.f8693do;
            if (tTFeedAd != null) {
                return tTFeedAd.getAdViewWidth();
            }
            return 0;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8693do == null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDislike() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            TTFeedAd tTFeedAd = this.f8693do;
            if (tTFeedAd != null) {
                tTFeedAd.setVideoAdListener(null);
                this.f8693do = null;
            }
            super.onDestroy();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void pauseAppDownload() {
            TTFeedAd tTFeedAd = this.f8693do;
            if (tTFeedAd == null || tTFeedAd.getDownloadStatusController() == null || PangleNativeLoader.this.f8690new != 2) {
                return;
            }
            this.f8693do.getDownloadStatusController().changeDownloadStatus();
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00be -> B:36:0x00c0). Please submit an issue!!! */
        @Override // com.bytedance.msdk.base.TTBaseAd
        @com.bytedance.JProtect
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void registerViewForInteraction(@androidx.annotation.NonNull android.app.Activity r9, @androidx.annotation.NonNull android.view.ViewGroup r10, java.util.List<android.view.View> r11, java.util.List<android.view.View> r12, java.util.List<android.view.View> r13, com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder r14) {
            /*
                r8 = this;
                super.registerViewForInteraction(r10, r11, r12, r14)
                boolean r9 = r10 instanceof com.bytedance.msdk.api.format.TTNativeAdView
                if (r9 == 0) goto Lc4
                com.bytedance.sdk.openadsdk.TTFeedAd r0 = r8.f8693do
                if (r0 == 0) goto L16
                com.bytedance.sdk.openadsdk.TTNativeAd$AdInteractionListener r7 = r8.f8695if
                r2 = 0
                r6 = 0
                r1 = r10
                r3 = r11
                r4 = r12
                r5 = r13
                r0.registerViewForInteraction(r1, r2, r3, r4, r5, r6, r7)
            L16:
                com.bytedance.sdk.openadsdk.TTFeedAd r9 = r8.f8693do
                r11 = -1
                if (r9 == 0) goto L7e
                android.graphics.Bitmap r9 = r9.getAdLogo()
                if (r9 == 0) goto L7e
                int r9 = r14.logoLayoutId
                android.view.View r9 = r10.findViewById(r9)
                if (r9 == 0) goto L7e
                r12 = 0
                r9.setVisibility(r12)
                boolean r12 = r9 instanceof android.view.ViewGroup
                if (r12 == 0) goto L6f
                r12 = r9
                android.view.ViewGroup r12 = (android.view.ViewGroup) r12
                r12.removeAllViews()
                android.widget.ImageView r13 = new android.widget.ImageView
                com.bytedance.msdk.adapter.pangle.PangleNativeLoader r0 = com.bytedance.msdk.adapter.pangle.PangleNativeLoader.this
                android.content.Context r0 = r0.f8689if
                r13.<init>(r0)
                com.bytedance.sdk.openadsdk.TTFeedAd r0 = r8.f8693do
                android.graphics.Bitmap r0 = r0.getAdLogo()
                r13.setImageBitmap(r0)
                android.widget.ImageView$ScaleType r0 = android.widget.ImageView.ScaleType.CENTER_INSIDE
                r13.setScaleType(r0)
                android.view.ViewGroup$LayoutParams r0 = r9.getLayoutParams()
                com.bytedance.msdk.adapter.pangle.PangleNativeLoader r1 = com.bytedance.msdk.adapter.pangle.PangleNativeLoader.this
                android.content.Context r1 = r1.f8689if
                r2 = 1108869120(0x42180000, float:38.0)
                int r1 = com.bytedance.msdk.adapter.util.UIUtils.dp2px(r1, r2)
                r0.width = r1
                com.bytedance.msdk.adapter.pangle.PangleNativeLoader r1 = com.bytedance.msdk.adapter.pangle.PangleNativeLoader.this
                android.content.Context r1 = r1.f8689if
                int r1 = com.bytedance.msdk.adapter.util.UIUtils.dp2px(r1, r2)
                r0.height = r1
                r9.setLayoutParams(r0)
                r12.addView(r13, r11, r11)
                goto L7e
            L6f:
                boolean r12 = r9 instanceof android.widget.ImageView
                if (r12 == 0) goto L7e
                android.widget.ImageView r9 = (android.widget.ImageView) r9
                com.bytedance.sdk.openadsdk.TTFeedAd r12 = r8.f8693do
                android.graphics.Bitmap r12 = r12.getAdLogo()
                r9.setImageBitmap(r12)
            L7e:
                boolean r9 = r8.isUseCustomVideo()
                if (r9 == 0) goto L9e
                com.bytedance.sdk.openadsdk.TTFeedAd r9 = r8.f8693do
                if (r9 == 0) goto L9e
                com.bytedance.sdk.openadsdk.TTFeedAd$CustomizeVideo r9 = r9.getCustomVideo()
                if (r9 == 0) goto L9e
                com.bytedance.sdk.openadsdk.TTFeedAd r9 = r8.f8693do
                com.bytedance.sdk.openadsdk.TTFeedAd$CustomizeVideo r9 = r9.getCustomVideo()
                java.lang.String r9 = r9.getVideoUrl()
                boolean r9 = android.text.TextUtils.isEmpty(r9)
                if (r9 == 0) goto Lc4
            L9e:
                int r9 = r14.mediaViewId
                android.view.View r9 = r10.findViewById(r9)
                com.bytedance.msdk.api.format.TTMediaView r9 = (com.bytedance.msdk.api.format.TTMediaView) r9
                if (r9 == 0) goto Lc4
                com.bytedance.sdk.openadsdk.TTFeedAd r10 = r8.f8693do
                if (r10 == 0) goto Lc4
                android.view.View r10 = r10.getAdView()
                if (r10 != 0) goto Lb5
                r9 = 20
                goto Lc0
            Lb5:
                r8.removeSelfFromParent(r10)
                r9.removeAllViews()
                r9.addView(r10, r11, r11)
            Lbe:
                r9 = 19
            Lc0:
                switch(r9) {
                    case 18: goto Lc4;
                    case 19: goto Lc4;
                    case 20: goto Lc4;
                    default: goto Lc3;
                }
            Lc3:
                goto Lbe
            Lc4:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleNativeLoader.PangleNativeAd.registerViewForInteraction(android.app.Activity, android.view.ViewGroup, java.util.List, java.util.List, java.util.List, com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder):void");
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void registerViewForInteraction(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
            registerViewForInteraction(null, viewGroup, list, list2, null, gMViewBinder);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void resumeAppDownload() {
            TTFeedAd tTFeedAd = this.f8693do;
            if (tTFeedAd == null || tTFeedAd.getDownloadStatusController() == null || PangleNativeLoader.this.f8690new != 3) {
                return;
            }
            this.f8693do.getDownloadStatusController().changeDownloadStatus();
        }
    }

    @JProtect
    public void loadAd(Context context, boolean z, TTAdNative tTAdNative, AdSlot adSlot, final TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter) {
        if (tTAdNative == null || tTAbsAdLoaderAdapter == null) {
            return;
        }
        this.f8688for = tTAbsAdLoaderAdapter;
        this.f8689if = context;
        this.f8687do = z;
        tTAdNative.loadFeedAd(adSlot, new TTAdNative.FeedAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeLoader.1
            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
            public void onError(int i, String str) {
                tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
            public void onFeedAdLoad(List<TTFeedAd> list) {
                if (list == null || list.isEmpty()) {
                    tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (TTFeedAd tTFeedAd : list) {
                    arrayList.add(new PangleNativeAd(tTFeedAd));
                }
                tTAbsAdLoaderAdapter.notifyAdLoaded(arrayList);
            }
        });
    }
}
