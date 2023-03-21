package com.bytedance.msdk.adapter.pangle;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.annotation.MainThread;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMSplashBaseAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdapterSplashAdListener;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.UIUtils;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTRequestExtraParams;
import com.bytedance.msdk.api.v2.slot.GMAdSlotSplash;
import com.bytedance.msdk.base.TTBaseAd;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ISplashCardListener;
import com.bytedance.sdk.openadsdk.ISplashClickEyeListener;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTSplashAd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public class PangleSplashAdapter extends GMSplashBaseAdapter {

    /* renamed from: extends  reason: not valid java name */
    public Context f8733extends;

    /* renamed from: finally  reason: not valid java name */
    public int f8734finally = 3000;

    /* renamed from: package  reason: not valid java name */
    public PangleSplashAd f8735package;

    /* loaded from: classes8.dex */
    public class PangleSplashAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public TTSplashAd f8736do;

        /* renamed from: for  reason: not valid java name */
        public TTAdNative.SplashAdListener f8737for = new TTAdNative.SplashAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleSplashAdapter.PangleSplashAd.1
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
            @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
            @androidx.annotation.MainThread
            @com.bytedance.JProtect
            public void onError(int r3, java.lang.String r4) {
                /*
                    r2 = this;
                    com.bytedance.msdk.adapter.pangle.PangleSplashAdapter$PangleSplashAd r0 = com.bytedance.msdk.adapter.pangle.PangleSplashAdapter.PangleSplashAd.this
                    com.bytedance.msdk.adapter.pangle.PangleSplashAdapter r0 = com.bytedance.msdk.adapter.pangle.PangleSplashAdapter.this
                    com.bytedance.msdk.api.AdError r1 = new com.bytedance.msdk.api.AdError
                    r1.<init>(r3, r4)
                    r0.notifyAdFailed(r1)
                    r3 = 92
                Le:
                    r4 = 14
                L10:
                    switch(r4) {
                        case 13: goto L19;
                        case 14: goto L1b;
                        case 15: goto L14;
                        default: goto L13;
                    }
                L13:
                    goto Le
                L14:
                    switch(r3) {
                        case 94: goto L1b;
                        case 95: goto L18;
                        case 96: goto L1b;
                        default: goto L17;
                    }
                L17:
                    goto L1b
                L18:
                    return
                L19:
                    r4 = 72
                L1b:
                    r4 = 15
                    r3 = 95
                    goto L10
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleSplashAdapter.PangleSplashAd.AnonymousClass1.onError(int, java.lang.String):void");
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener
            @MainThread
            @JProtect
            public void onSplashAdLoad(TTSplashAd tTSplashAd) {
                Map<String, Object> mediaExtraInfo;
                if (tTSplashAd == null) {
                    PangleSplashAdapter.this.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                    return;
                }
                PangleSplashAd pangleSplashAd = PangleSplashAd.this;
                pangleSplashAd.f8736do = tTSplashAd;
                pangleSplashAd.setExpressAd(true);
                PangleSplashAd pangleSplashAd2 = PangleSplashAd.this;
                pangleSplashAd2.setInteractionType(pangleSplashAd2.f8736do.getInteractionType());
                if (PangleSplashAdapter.this.isClientBidding() && (mediaExtraInfo = PangleSplashAd.this.f8736do.getMediaExtraInfo()) != null) {
                    double value = PangleAdapterUtils.getValue(mediaExtraInfo.get("price"));
                    Logger.d("TTMediationSDK_ECMP", TTLogUtil.getTagThirdLevelById(PangleSplashAdapter.this.getAdapterRit(), PangleSplashAdapter.this.getAdSlotId()) + "pangle Splash 返回的 cpm价格：" + value);
                    PangleSplashAd pangleSplashAd3 = PangleSplashAd.this;
                    if (value <= 0.0d) {
                        value = 0.0d;
                    }
                    pangleSplashAd3.setCpm(value);
                }
                PangleSplashAd.this.f8736do.setSplashInteractionListener(new TTSplashAd.AdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleSplashAdapter.PangleSplashAd.1.1
                    @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
                    public void onAdClicked(View view, int i) {
                        PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                        if (pangleSplashAd4.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                            PangleSplashAd.m3579do(pangleSplashAd4).onAdClicked();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
                    public void onAdShow(View view, int i) {
                        PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                        if (pangleSplashAd4.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                            PangleSplashAd.m3579do(pangleSplashAd4).onAdShow();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
                    public void onAdSkip() {
                        Logger.e("TTMediationSDK", "穿山甲_splash_onAdSkip");
                        PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                        if (pangleSplashAd4.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                            PangleSplashAd.m3579do(pangleSplashAd4).onAdSkip();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
                    public void onAdTimeOver() {
                        Logger.e("TTMediationSDK", "穿山甲_splash_onAdTimeOver");
                        PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                        if (pangleSplashAd4.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                            PangleSplashAd.m3579do(pangleSplashAd4).onAdDismiss();
                        }
                    }
                });
                PangleSplashAd.this.f8736do.setSplashClickEyeListener(new ISplashClickEyeListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleSplashAdapter.PangleSplashAd.1.2
                    @Override // com.bytedance.sdk.openadsdk.ISplashClickEyeListener
                    public boolean isSupportSplashClickEye(boolean z) {
                        Logger.e("TTMediationSDK", "穿山甲_splash_isSupportSplashClickEye:" + z);
                        PangleSplashAd.this.f8738if = z;
                        return false;
                    }

                    @Override // com.bytedance.sdk.openadsdk.ISplashClickEyeListener
                    public void onSplashClickEyeAnimationFinish() {
                        Logger.e("TTMediationSDK", "穿山甲_splash_onSplashClickEyeAnimationFinish");
                        PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                        if (pangleSplashAd4.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                            PangleSplashAd.m3579do(pangleSplashAd4).onMinWindowPlayFinish();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.ISplashClickEyeListener
                    public void onSplashClickEyeAnimationStart() {
                        Logger.e("TTMediationSDK", "穿山甲_splash_onSplashClickEyeAnimationStart");
                        PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                        if (pangleSplashAd4.f8738if && (pangleSplashAd4.mTTAdatperCallback instanceof ITTAdapterSplashAdListener)) {
                            PangleSplashAd.m3579do(pangleSplashAd4).onMinWindowStart();
                        }
                    }
                });
                PangleSplashAd.this.f8736do.setSplashCardListener(new ISplashCardListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleSplashAdapter.PangleSplashAd.1.3
                    @Override // com.bytedance.sdk.openadsdk.ISplashCardListener
                    public Activity getActivity() {
                        Logger.e("TTMediationSDK", "穿山甲_splash_getActivity");
                        PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                        if (pangleSplashAd4.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                            return PangleSplashAd.m3579do(pangleSplashAd4).getActivity();
                        }
                        return null;
                    }

                    @Override // com.bytedance.sdk.openadsdk.ISplashCardListener
                    public void onSplashClickEyeClose() {
                        Logger.e("TTMediationSDK", "穿山甲_splash_onSplashClickEyeClose");
                        PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                        if (pangleSplashAd4.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                            PangleSplashAd.m3579do(pangleSplashAd4).onSplashClickEyeClose();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.ISplashCardListener
                    public void onSplashEyeReady() {
                        Logger.e("TTMediationSDK", "穿山甲_splash_onSplashEyeReady");
                        PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                        if (pangleSplashAd4.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                            PangleSplashAd.m3579do(pangleSplashAd4).onSplashEyeReady();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.ISplashCardListener
                    public void setSupportSplashClickEye(boolean z) {
                        Logger.e("TTMediationSDK", "穿山甲_splash_setSupportSplashClickEye");
                        PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                        if (pangleSplashAd4.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                            PangleSplashAd.m3579do(pangleSplashAd4).setSupportSplashClickEye(z);
                        }
                    }
                });
                PangleSplashAd pangleSplashAd4 = PangleSplashAd.this;
                PangleSplashAdapter.this.notifyAdLoaded(pangleSplashAd4);
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener
            @MainThread
            @JProtect
            public void onTimeout() {
                PangleSplashAdapter.this.notifyAdFailed(new AdError("splash ad load timeout !"));
            }
        };

        /* renamed from: if  reason: not valid java name */
        public boolean f8738if;

        public PangleSplashAd() {
        }

        /* renamed from: do  reason: not valid java name */
        public static ITTAdapterSplashAdListener m3579do(PangleSplashAd pangleSplashAd) {
            while (true) {
                char c = ']';
                char c2 = ']';
                while (true) {
                    switch (c) {
                        case '\\':
                            switch (c2) {
                            }
                            c = '^';
                            c2 = 'K';
                            break;
                        case ']':
                            while (true) {
                                switch (c2) {
                                    default:
                                        c2 = '[';
                                    case '[':
                                    case '\\':
                                    case ']':
                                        break;
                                }
                            }
                            c = '^';
                            c2 = 'K';
                        case '^':
                            if (c2 > 4) {
                                break;
                            } else {
                                break;
                            }
                    }
                }
            }
            return (ITTAdapterSplashAdListener) pangleSplashAd.mTTAdatperCallback;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getAdId() {
            TTSplashAd tTSplashAd = this.f8736do;
            return tTSplashAd != null ? PangleAdapterUtils.getAdId(tTSplashAd.getMediaExtraInfo()) : super.getAdId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getCreativeId() {
            TTSplashAd tTSplashAd = this.f8736do;
            return tTSplashAd != null ? PangleAdapterUtils.getCreativeId(tTSplashAd.getMediaExtraInfo()) : super.getCreativeId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            TTSplashAd tTSplashAd = this.f8736do;
            if (tTSplashAd == null || (mediaExtraInfo = tTSplashAd.getMediaExtraInfo()) == null) {
                return super.getMediaExtraInfo();
            }
            HashMap hashMap = new HashMap();
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_COUPON, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_COUPON));
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_LIVE_ROOM, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_LIVE_ROOM));
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_PRODUCT, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_PRODUCT));
            return hashMap;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public int[] getMinWindowSize() {
            TTSplashAd tTSplashAd = this.f8736do;
            if (tTSplashAd != null) {
                tTSplashAd.getSplashClickEyeSizeToDp();
                return null;
            }
            return null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public String getReqId() {
            TTSplashAd tTSplashAd = this.f8736do;
            return tTSplashAd != null ? PangleAdapterUtils.getReqId(tTSplashAd.getMediaExtraInfo()) : super.getReqId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8736do == null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            TTSplashAd tTSplashAd = this.f8736do;
            if (tTSplashAd != null) {
                tTSplashAd.setSplashInteractionListener(null);
                this.f8736do.setDownloadListener(null);
                this.f8736do.renderExpressAd(null);
                this.f8736do = null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x003a, code lost:
            if (r5 <= '9') goto L28;
         */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0023 A[PHI: r1 r5 
          PHI: (r1v1 char) = (r1v0 char), (r1v2 char), (r1v2 char), (r1v3 char), (r1v4 char) binds: [B:11:0x0022, B:13:0x0025, B:23:0x003a, B:28:0x0023, B:27:0x0023] A[DONT_GENERATE, DONT_INLINE]
          PHI: (r5v2 char) = (r5v1 char), (r5v3 char), (r5v3 char), (r5v3 char), (r5v3 char) binds: [B:11:0x0022, B:13:0x0025, B:23:0x003a, B:28:0x0023, B:27:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0029 A[LOOP:0: B:15:0x0029->B:32:0x0029, LOOP_START, PHI: r1 
          PHI: (r1v3 char) = (r1v2 char), (r1v4 char) binds: [B:13:0x0025, B:32:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0042 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0023 -> B:13:0x0025). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x002f -> B:25:0x003d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x003a -> B:25:0x003d). Please submit an issue!!! */
        @Override // com.bytedance.msdk.base.TTBaseAd
        @com.bytedance.JProtect
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void showSplashAd(android.view.ViewGroup r5) {
            /*
                r4 = this;
                com.bytedance.sdk.openadsdk.TTSplashAd r0 = r4.f8736do
                r1 = 55
                if (r0 == 0) goto L22
                if (r5 == 0) goto L22
                android.view.View r0 = r0.getSplashView()
                if (r0 == 0) goto L22
                android.view.ViewParent r2 = r0.getParent()
                boolean r3 = r2 instanceof android.view.ViewGroup
                if (r3 == 0) goto L1b
                android.view.ViewGroup r2 = (android.view.ViewGroup) r2
                r2.removeView(r0)
            L1b:
                r5.removeAllViews()
                r5.addView(r0)
                goto L3d
            L22:
                r5 = 0
            L23:
                r0 = 72
            L25:
                switch(r0) {
                    case 72: goto L42;
                    case 73: goto L38;
                    case 74: goto L29;
                    default: goto L28;
                }
            L28:
                goto L23
            L29:
                r0 = 52
                if (r5 == r0) goto L23
                r0 = 53
                if (r5 == r0) goto L32
                goto L3d
            L32:
                switch(r1) {
                    case 29: goto L23;
                    case 30: goto L23;
                    case 31: goto L29;
                    default: goto L35;
                }
            L35:
                r1 = 30
                goto L32
            L38:
                r0 = 57
                if (r5 > r0) goto L3d
                goto L23
            L3d:
                r0 = 73
                r5 = 16
                goto L25
            L42:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleSplashAdapter.PangleSplashAd.showSplashAd(android.view.ViewGroup):void");
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void splashMinWindowAnimationFinish() {
            TTSplashAd tTSplashAd = this.f8736do;
            if (tTSplashAd != null) {
                tTSplashAd.splashClickEyeAnimationFinish();
            }
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

    @Override // com.bytedance.msdk.adapter.ad.GMSplashBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @JProtect
    public void loadAd(Context context, Map<String, Object> map) {
        super.loadAd(context, map);
        this.f8733extends = context;
        if (this.mGMAdSlotSplash == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
        } else if (map != null) {
            this.f8734finally = map.containsKey(TTRequestExtraParams.PARAM_AD_LOAD_TIMEOUT) ? ((Integer) map.get(TTRequestExtraParams.PARAM_AD_LOAD_TIMEOUT)).intValue() : this.f8734finally;
            PangleSplashAd pangleSplashAd = new PangleSplashAd();
            this.f8735package = pangleSplashAd;
            if (pangleSplashAd == null) {
                throw null;
            }
            TTAdNative createAdNative = TTAdSdk.getAdManager().createAdNative(PangleSplashAdapter.this.f8733extends);
            PangleSplashAdapter pangleSplashAdapter = PangleSplashAdapter.this;
            AdSlot adSlot = pangleSplashAdapter.mAdSlot;
            GMAdSlotSplash gMAdSlotSplash = pangleSplashAdapter.mGMAdSlotSplash;
            String adSlotId = pangleSplashAdapter.getAdSlotId();
            PangleSplashAdapter pangleSplashAdapter2 = PangleSplashAdapter.this;
            AdSlot.Builder buildPangleAdSlot = PangleAdapterUtils.buildPangleAdSlot(adSlot, gMAdSlotSplash, adSlotId, pangleSplashAdapter2.mWaterfallAbTestParam, pangleSplashAdapter2.getClientReqId(), PangleSplashAdapter.this.getAdm(), false);
            AdSlot.Builder imageAcceptedSize = buildPangleAdSlot.setImageAcceptedSize(PangleSplashAdapter.this.mGMAdSlotSplash.getWidth(), PangleSplashAdapter.this.mGMAdSlotSplash.getHeight());
            PangleSplashAdapter pangleSplashAdapter3 = PangleSplashAdapter.this;
            PangleSplashAdapter pangleSplashAdapter4 = PangleSplashAdapter.this;
            imageAcceptedSize.setExpressViewAcceptedSize(UIUtils.px2dip(pangleSplashAdapter3.f8733extends, pangleSplashAdapter3.mGMAdSlotSplash.getWidth()), UIUtils.px2dip(pangleSplashAdapter4.f8733extends, pangleSplashAdapter4.mGMAdSlotSplash.getHeight()));
            createAdNative.loadSplashAd(buildPangleAdSlot.build(), pangleSplashAd.f8737for, PangleSplashAdapter.this.f8734finally);
        }
    }
}
