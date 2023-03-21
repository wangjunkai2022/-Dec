package com.bytedance.msdk.adapter.pangle;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMInterstitialBaseAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdapterInterstitialListener;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.base.TTBaseAd;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class PangleInterstitialAdapter extends GMInterstitialBaseAdapter {
    public static final String TAG = "PangleInterstitialAdapter";

    /* renamed from: extends  reason: not valid java name */
    public PangleExpressInterstitialAd f8664extends;

    /* renamed from: finally  reason: not valid java name */
    public Context f8665finally;

    /* loaded from: classes8.dex */
    public class PangleExpressInterstitialAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public TTNativeExpressAd f8666do;

        /* renamed from: for  reason: not valid java name */
        public TTNativeExpressAd.AdInteractionListener f8667for = new TTNativeExpressAd.AdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleInterstitialAdapter.PangleExpressInterstitialAd.2
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onAdClicked(View view, int i) {
                PangleExpressInterstitialAd pangleExpressInterstitialAd = PangleExpressInterstitialAd.this;
                if (pangleExpressInterstitialAd.mTTAdatperCallback instanceof ITTAdapterInterstitialListener) {
                    PangleExpressInterstitialAd.m3574do(pangleExpressInterstitialAd).onInterstitialAdClick();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.AdInteractionListener
            @JProtect
            public void onAdDismiss() {
                PangleExpressInterstitialAd pangleExpressInterstitialAd = PangleExpressInterstitialAd.this;
                if (pangleExpressInterstitialAd.mTTAdatperCallback instanceof ITTAdapterInterstitialListener) {
                    PangleExpressInterstitialAd.m3574do(pangleExpressInterstitialAd).onInterstitialClosed();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onAdShow(View view, int i) {
                PangleExpressInterstitialAd pangleExpressInterstitialAd = PangleExpressInterstitialAd.this;
                if (pangleExpressInterstitialAd.mTTAdatperCallback instanceof ITTAdapterInterstitialListener) {
                    PangleExpressInterstitialAd.m3574do(pangleExpressInterstitialAd).onInterstitialShow();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onRenderFail(View view, String str, int i) {
                Logger.e("TTMediationSDK_interisitial", TTLogUtil.getTagThirdLevelById(PangleInterstitialAdapter.this.getAdapterRit(), PangleInterstitialAdapter.this.getAdSlotId()) + "PangleExpressInterstitialAd onRenderFail -> code=" + i + ",msg=" + str);
                PangleInterstitialAdapter.this.notifyAdFailed(new AdError(i, str));
                char c = 'F';
                while (true) {
                    char c2 = '*';
                    while (true) {
                        if (c2 != '(') {
                            if (c2 != '*') {
                                break;
                            }
                            c = '\\';
                            c2 = '(';
                        } else if (c == '\\') {
                            return;
                        }
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            @JProtect
            public void onRenderSuccess(View view, float f, float f2) {
                char c;
                PangleExpressInterstitialAd.this.f8668if = true;
                Logger.d("TTMediationSDK_interisitial", TTLogUtil.getTagThirdLevelById(PangleInterstitialAdapter.this.getAdapterRit(), PangleInterstitialAdapter.this.getAdSlotId()) + "穿山甲SDK--插屏-onRenderSucces");
                PangleExpressInterstitialAd pangleExpressInterstitialAd = PangleExpressInterstitialAd.this;
                PangleInterstitialAdapter.this.notifyAdLoaded(pangleExpressInterstitialAd);
                do {
                    c = 'P';
                    while (c == 'P') {
                        c = 'R';
                    }
                } while (c != 'R');
            }
        };

        /* renamed from: if  reason: not valid java name */
        public boolean f8668if;

        public PangleExpressInterstitialAd() {
        }

        /* renamed from: do  reason: not valid java name */
        public static ITTAdapterInterstitialListener m3574do(PangleExpressInterstitialAd pangleExpressInterstitialAd) {
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
            return (ITTAdapterInterstitialListener) pangleExpressInterstitialAd.mTTAdatperCallback;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getAdId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8666do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getAdId(tTNativeExpressAd.getMediaExtraInfo()) : super.getAdId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getCreativeId() {
            TTNativeExpressAd tTNativeExpressAd = this.f8666do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getCreativeId(tTNativeExpressAd.getMediaExtraInfo()) : super.getCreativeId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            TTNativeExpressAd tTNativeExpressAd = this.f8666do;
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
            TTNativeExpressAd tTNativeExpressAd = this.f8666do;
            return tTNativeExpressAd != null ? PangleAdapterUtils.getReqId(tTNativeExpressAd.getMediaExtraInfo()) : super.getReqId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8666do == null;
        }

        @JProtect
        public void loadAd() {
            TTAdNative createAdNative = TTAdSdk.getAdManager().createAdNative(PangleInterstitialAdapter.this.f8665finally);
            PangleInterstitialAdapter pangleInterstitialAdapter = PangleInterstitialAdapter.this;
            AdSlot adSlot = pangleInterstitialAdapter.mAdSlot;
            GMAdSlotBase gMAdSlotBase = pangleInterstitialAdapter.mGMAdSlotBase;
            String adSlotId = pangleInterstitialAdapter.getAdSlotId();
            PangleInterstitialAdapter pangleInterstitialAdapter2 = PangleInterstitialAdapter.this;
            AdSlot.Builder buildPangleAdSlot = PangleAdapterUtils.buildPangleAdSlot(adSlot, gMAdSlotBase, adSlotId, pangleInterstitialAdapter2.mWaterfallAbTestParam, pangleInterstitialAdapter2.getClientReqId(), PangleInterstitialAdapter.this.getAdm(), false);
            buildPangleAdSlot.setExpressViewAcceptedSize(PangleInterstitialAdapter.this.mGMAdSlotInterstitial.getWidth(), PangleInterstitialAdapter.this.mGMAdSlotInterstitial.getHeight());
            createAdNative.loadInteractionExpressAd(buildPangleAdSlot.build(), new TTAdNative.NativeExpressAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleInterstitialAdapter.PangleExpressInterstitialAd.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
                public void onError(int i, String str) {
                    PangleInterstitialAdapter.this.notifyAdFailed(new AdError(i, str));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
                public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                    Map<String, Object> mediaExtraInfo;
                    if (list == null || list.size() == 0) {
                        PangleInterstitialAdapter.this.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                        return;
                    }
                    Logger.d("TTMediationSDK_interisitial", TTLogUtil.getTagThirdLevelById(PangleInterstitialAdapter.this.getAdapterRit(), PangleInterstitialAdapter.this.getAdSlotId()) + "穿山甲SDK--插屏-onNativeExpressAdLoad");
                    PangleExpressInterstitialAd.this.f8666do = list.get(0);
                    PangleExpressInterstitialAd.this.setExpressAd(true);
                    PangleExpressInterstitialAd pangleExpressInterstitialAd = PangleExpressInterstitialAd.this;
                    pangleExpressInterstitialAd.setInteractionType(pangleExpressInterstitialAd.f8666do.getInteractionType());
                    if (PangleInterstitialAdapter.this.isClientBidding() && (mediaExtraInfo = PangleExpressInterstitialAd.this.f8666do.getMediaExtraInfo()) != null) {
                        double value = PangleAdapterUtils.getValue(mediaExtraInfo.get("price"));
                        Logger.d("TTMediationSDK_ECMP", TTLogUtil.getTagThirdLevelById(PangleInterstitialAdapter.this.getAdapterRit(), PangleInterstitialAdapter.this.getAdSlotId()) + "pangle 插屏 返回的 cpm价格：" + value);
                        PangleExpressInterstitialAd pangleExpressInterstitialAd2 = PangleExpressInterstitialAd.this;
                        if (value <= 0.0d) {
                            value = 0.0d;
                        }
                        pangleExpressInterstitialAd2.setCpm(value);
                    }
                    PangleExpressInterstitialAd pangleExpressInterstitialAd3 = PangleExpressInterstitialAd.this;
                    pangleExpressInterstitialAd3.f8666do.setExpressInteractionListener(pangleExpressInterstitialAd3.f8667for);
                    PangleExpressInterstitialAd.this.f8666do.render();
                }
            });
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            TTNativeExpressAd tTNativeExpressAd = this.f8666do;
            if (tTNativeExpressAd != null) {
                tTNativeExpressAd.setExpressInteractionListener((TTNativeExpressAd.AdInteractionListener) null);
                this.f8666do.setDownloadListener(null);
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void showAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
            TTNativeExpressAd tTNativeExpressAd = this.f8666do;
            if (tTNativeExpressAd != null) {
                tTNativeExpressAd.showInteractionExpressAd(activity);
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

    @Override // com.bytedance.msdk.adapter.ad.GMInterstitialBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @JProtect
    public void loadAd(Context context, Map<String, Object> map) {
        super.loadAd(context, map);
        if (this.mGMAdSlotInterstitial == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
            return;
        }
        this.f8665finally = context;
        if (map != null) {
            PangleExpressInterstitialAd pangleExpressInterstitialAd = new PangleExpressInterstitialAd();
            this.f8664extends = pangleExpressInterstitialAd;
            pangleExpressInterstitialAd.loadAd();
        }
    }
}
