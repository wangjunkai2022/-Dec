package com.bytedance.msdk.adapter.pangle;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.apk.Cgoto;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener;
import com.bytedance.msdk.base.TTBaseAd;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class PangleNativeExpressLoader {

    /* renamed from: do  reason: not valid java name */
    public boolean f8673do;

    /* renamed from: if  reason: not valid java name */
    public TTAbsAdLoaderAdapter f8674if;

    /* loaded from: classes8.dex */
    public class PangleNativeExpressAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public TTNativeExpressAd f8677do;

        /* renamed from: if  reason: not valid java name */
        public volatile boolean f8679if = false;

        /* renamed from: for  reason: not valid java name */
        public TTNativeExpressAd.ExpressAdInteractionListener f8678for = new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeExpressLoader.PangleNativeExpressAd.3
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onAdClicked(View view, int i) {
                GMNativeAdListener gMNativeAdListener = PangleNativeExpressAd.this.mTTNativeAdListener;
                if (gMNativeAdListener != null) {
                    gMNativeAdListener.onAdClick();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onAdShow(View view, int i) {
                GMNativeAdListener gMNativeAdListener = PangleNativeExpressAd.this.mTTNativeAdListener;
                if (gMNativeAdListener != null) {
                    gMNativeAdListener.onAdShow();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onRenderFail(View view, String str, int i) {
                GMNativeAdListener gMNativeAdListener = PangleNativeExpressAd.this.mTTNativeAdListener;
                if (gMNativeAdListener instanceof GMNativeExpressAdListener) {
                    ((GMNativeExpressAdListener) gMNativeAdListener).onRenderFail(view, str, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onRenderSuccess(View view, float f, float f2) {
                GMNativeAdListener gMNativeAdListener = PangleNativeExpressAd.this.mTTNativeAdListener;
                if (gMNativeAdListener instanceof GMNativeExpressAdListener) {
                    ((GMNativeExpressAdListener) gMNativeAdListener).onRenderSuccess(f, f2);
                }
            }
        };

        /* renamed from: new  reason: not valid java name */
        public TTNativeExpressAd.ExpressVideoAdListener f8680new = new TTNativeExpressAd.ExpressVideoAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeExpressLoader.PangleNativeExpressAd.4
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

        public PangleNativeExpressAd(TTNativeExpressAd tTNativeExpressAd) {
            Map<String, Object> mediaExtraInfo;
            this.f8677do = tTNativeExpressAd;
            setImageMode(tTNativeExpressAd.getImageMode());
            setInteractionType(this.f8677do.getInteractionType());
            setExpressAd(true);
            this.f8677do.setExpressInteractionListener(this.f8678for);
            this.f8677do.setVideoAdListener(this.f8680new);
            if (!PangleNativeExpressLoader.this.f8673do || (mediaExtraInfo = tTNativeExpressAd.getMediaExtraInfo()) == null) {
                return;
            }
            double value = PangleAdapterUtils.getValue(mediaExtraInfo.get("price"));
            Logger.d("TTMediationSDK_ECMP", "pangle 模板native 返回的 cpm价格：" + value);
            setCpm(value <= 0.0d ? 0.0d : value);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getAdId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8677do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getAdId(tTNativeExpressAd.getMediaExtraInfo()) : super.getAdId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public View getAdView() {
            TTNativeExpressAd tTNativeExpressAd = this.f8677do;
            if (tTNativeExpressAd != null) {
                return tTNativeExpressAd.getExpressAdView();
            }
            return null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getCreativeId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8677do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getCreativeId(tTNativeExpressAd.getMediaExtraInfo()) : super.getCreativeId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            TTNativeExpressAd tTNativeExpressAd = this.f8677do;
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
            TTNativeExpressAd tTNativeExpressAd = this.f8677do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getReqId(tTNativeExpressAd.getMediaExtraInfo()) : super.getReqId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8679if;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDislike() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            this.f8679if = true;
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeExpressLoader.PangleNativeExpressAd.1
                @Override // java.lang.Runnable
                public void run() {
                    TTNativeExpressAd tTNativeExpressAd = PangleNativeExpressAd.this.f8677do;
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
                com.bytedance.sdk.openadsdk.TTNativeExpressAd r0 = r2.f8677do
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
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleNativeExpressLoader.PangleNativeExpressAd.render():void");
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void setDislikeCallback(Activity activity, final GMDislikeCallback gMDislikeCallback) {
            TTNativeExpressAd tTNativeExpressAd = this.f8677do;
            if (tTNativeExpressAd != null) {
                tTNativeExpressAd.setDislikeCallback(activity, new TTAdDislike.DislikeInteractionCallback() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeExpressLoader.PangleNativeExpressAd.2
                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onCancel() {
                        GMDislikeCallback gMDislikeCallback2 = gMDislikeCallback;
                        if (gMDislikeCallback2 != null) {
                            gMDislikeCallback2.onCancel();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onSelected(int i, String str, boolean z) {
                        if (gMDislikeCallback != null) {
                            PangleNativeExpressAd pangleNativeExpressAd = PangleNativeExpressAd.this;
                            TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = PangleNativeExpressLoader.this.f8674if;
                            if (tTAbsAdLoaderAdapter != null) {
                                tTAbsAdLoaderAdapter.nativeDislikeClick(pangleNativeExpressAd, str, null);
                            }
                            gMDislikeCallback.onSelected(i, str);
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

    @JProtect
    public void loadAd(Context context, boolean z, TTAdNative tTAdNative, AdSlot adSlot, final TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter) {
        if (tTAdNative == null || tTAbsAdLoaderAdapter == null) {
            return;
        }
        this.f8674if = tTAbsAdLoaderAdapter;
        this.f8673do = z;
        tTAdNative.loadNativeExpressAd(adSlot, new TTAdNative.NativeExpressAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleNativeExpressLoader.1
            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
            public void onError(int i, String str) {
                tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
            public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                if (list == null || list.size() == 0) {
                    tTAbsAdLoaderAdapter.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (TTNativeExpressAd tTNativeExpressAd : list) {
                    if (tTNativeExpressAd != null) {
                        arrayList.add(new PangleNativeExpressAd(tTNativeExpressAd));
                    }
                }
                tTAbsAdLoaderAdapter.notifyAdLoaded(arrayList);
            }
        });
    }
}
