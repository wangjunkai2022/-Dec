package com.bytedance.msdk.adapter.pangle;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.ad.draw.GMDrawAdListener;
import com.bytedance.msdk.api.v2.ad.draw.GMDrawExpressAdListener;
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
public class PangleDrawExpressLoader {

    /* loaded from: classes8.dex */
    public static class PangleDrawExpressAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public TTNativeExpressAd f8639do;

        /* renamed from: if  reason: not valid java name */
        public boolean f8641if;

        /* renamed from: for  reason: not valid java name */
        public TTNativeExpressAd.ExpressAdInteractionListener f8640for = new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleDrawExpressLoader.PangleDrawExpressAd.2
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onAdClicked(View view, int i) {
                GMDrawAdListener gMDrawAdListener = PangleDrawExpressAd.this.mGMDrawAdListener;
                if (gMDrawAdListener != null) {
                    gMDrawAdListener.onAdClick();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onAdShow(View view, int i) {
                GMDrawAdListener gMDrawAdListener = PangleDrawExpressAd.this.mGMDrawAdListener;
                if (gMDrawAdListener != null) {
                    gMDrawAdListener.onAdShow();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onRenderFail(View view, String str, int i) {
                GMDrawAdListener gMDrawAdListener = PangleDrawExpressAd.this.mGMDrawAdListener;
                if (gMDrawAdListener instanceof GMDrawExpressAdListener) {
                    ((GMDrawExpressAdListener) gMDrawAdListener).onRenderFail(view, str, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onRenderSuccess(View view, float f, float f2) {
                GMDrawAdListener gMDrawAdListener = PangleDrawExpressAd.this.mGMDrawAdListener;
                if (gMDrawAdListener instanceof GMDrawExpressAdListener) {
                    ((GMDrawExpressAdListener) gMDrawAdListener).onRenderSuccess(f, f2);
                }
            }
        };

        /* renamed from: new  reason: not valid java name */
        public TTNativeExpressAd.ExpressVideoAdListener f8642new = new TTNativeExpressAd.ExpressVideoAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleDrawExpressLoader.PangleDrawExpressAd.3
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
                GMVideoListener gMVideoListener = PangleDrawExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onProgressUpdate(j, j2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onVideoAdComplete() {
                GMVideoListener gMVideoListener = PangleDrawExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoCompleted();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onVideoAdContinuePlay() {
                GMVideoListener gMVideoListener = PangleDrawExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoResume();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onVideoAdPaused() {
                GMVideoListener gMVideoListener = PangleDrawExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoPause();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @JProtect
            public void onVideoAdStartPlay() {
                GMVideoListener gMVideoListener = PangleDrawExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    gMVideoListener.onVideoStart();
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:24:0x0017, code lost:
                continue;
             */
            /* JADX WARN: Code restructure failed: missing block: B:28:0x0031, code lost:
                continue;
             */
            /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            @com.bytedance.JProtect
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onVideoError(int r4, int r5) {
                /*
                    r3 = this;
                    com.bytedance.msdk.adapter.pangle.PangleDrawExpressLoader$PangleDrawExpressAd r0 = com.bytedance.msdk.adapter.pangle.PangleDrawExpressLoader.PangleDrawExpressAd.this
                    com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener r0 = r0.mTTVideoListener
                    if (r0 == 0) goto L36
                    com.bytedance.msdk.api.AdError r1 = new com.bytedance.msdk.api.AdError
                    java.lang.String r2 = "MediaPlayer inter error code:"
                    java.lang.String r5 = com.apk.Cgoto.m1003implements(r2, r5)
                    r1.<init>(r4, r5)
                    r0.onVideoError(r1)
                    r4 = 55
                    r5 = 0
                L17:
                    r0 = 72
                L19:
                    switch(r0) {
                        case 72: goto L31;
                        case 73: goto L2c;
                        case 74: goto L1d;
                        default: goto L1c;
                    }
                L1c:
                    goto L17
                L1d:
                    r0 = 52
                    if (r5 == r0) goto L17
                    r0 = 53
                    if (r5 == r0) goto L26
                    goto L31
                L26:
                    switch(r4) {
                        case 29: goto L36;
                        case 30: goto L17;
                        case 31: goto L1d;
                        default: goto L29;
                    }
                L29:
                    r4 = 30
                    goto L26
                L2c:
                    r0 = 57
                    if (r5 > r0) goto L31
                    goto L36
                L31:
                    r0 = 73
                    r5 = 16
                    goto L19
                L36:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleDrawExpressLoader.PangleDrawExpressAd.AnonymousClass3.onVideoError(int, int):void");
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressVideoAdListener
            public void onVideoLoad() {
            }
        };

        public PangleDrawExpressAd(TTNativeExpressAd tTNativeExpressAd, boolean z) {
            Map<String, Object> mediaExtraInfo;
            this.f8639do = tTNativeExpressAd;
            this.f8641if = z;
            setImageMode(tTNativeExpressAd.getImageMode());
            setInteractionType(this.f8639do.getInteractionType());
            setExpressAd(true);
            this.f8639do.setExpressInteractionListener(this.f8640for);
            this.f8639do.setVideoAdListener(this.f8642new);
            if (!this.f8641if || (mediaExtraInfo = tTNativeExpressAd.getMediaExtraInfo()) == null) {
                return;
            }
            double value = PangleAdapterUtils.getValue(mediaExtraInfo.get("price"));
            Logger.d("TTMediationSDK_ECMP", "pangle 模板draw 返回的 cpm价格：" + value);
            setCpm(value <= 0.0d ? 0.0d : value);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getAdId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8639do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getAdId(tTNativeExpressAd.getMediaExtraInfo()) : super.getAdId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public View getAdView() {
            TTNativeExpressAd tTNativeExpressAd = this.f8639do;
            if (tTNativeExpressAd != null) {
                return tTNativeExpressAd.getExpressAdView();
            }
            return null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getCreativeId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8639do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getCreativeId(tTNativeExpressAd.getMediaExtraInfo()) : super.getCreativeId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            TTNativeExpressAd tTNativeExpressAd = this.f8639do;
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
            TTNativeExpressAd tTNativeExpressAd = this.f8639do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getReqId(tTNativeExpressAd.getMediaExtraInfo()) : super.getReqId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8639do == null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDislike() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            TTNativeExpressAd tTNativeExpressAd = this.f8639do;
            if (tTNativeExpressAd != null) {
                tTNativeExpressAd.destroy();
                this.f8639do = null;
            }
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
                com.bytedance.sdk.openadsdk.TTNativeExpressAd r0 = r2.f8639do
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
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleDrawExpressLoader.PangleDrawExpressAd.render():void");
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void setDislikeCallback(Activity activity, final GMDislikeCallback gMDislikeCallback) {
            TTNativeExpressAd tTNativeExpressAd = this.f8639do;
            if (tTNativeExpressAd != null) {
                tTNativeExpressAd.setDislikeCallback(activity, new TTAdDislike.DislikeInteractionCallback() { // from class: com.bytedance.msdk.adapter.pangle.PangleDrawExpressLoader.PangleDrawExpressAd.1
                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onCancel() {
                        GMDislikeCallback gMDislikeCallback2 = GMDislikeCallback.this;
                        if (gMDislikeCallback2 != null) {
                            gMDislikeCallback2.onCancel();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onSelected(int i, String str, boolean z) {
                        GMDislikeCallback gMDislikeCallback2 = GMDislikeCallback.this;
                        if (gMDislikeCallback2 != null) {
                            gMDislikeCallback2.onSelected(i, str);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public void onShow() {
                        GMDislikeCallback gMDislikeCallback2 = GMDislikeCallback.this;
                        if (gMDislikeCallback2 != null) {
                            gMDislikeCallback2.onShow();
                        }
                    }
                });
            }
        }
    }

    @JProtect
    public void loadAd(Context context, final boolean z, TTAdNative tTAdNative, AdSlot adSlot, final TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter) {
        if (tTAdNative == null || tTAbsAdLoaderAdapter == null) {
            return;
        }
        tTAdNative.loadExpressDrawFeedAd(adSlot, new TTAdNative.NativeExpressAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleDrawExpressLoader.1
            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
            public void onError(int i, String str) {
                TTAbsAdLoaderAdapter.this.notifyAdFailed(new AdError(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
            public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                if (list == null || list.size() == 0) {
                    TTAbsAdLoaderAdapter.this.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (TTNativeExpressAd tTNativeExpressAd : list) {
                    if (tTNativeExpressAd != null) {
                        arrayList.add(new PangleDrawExpressAd(tTNativeExpressAd, z));
                    }
                }
                TTAbsAdLoaderAdapter.this.notifyAdLoaded(arrayList);
            }
        });
    }
}
