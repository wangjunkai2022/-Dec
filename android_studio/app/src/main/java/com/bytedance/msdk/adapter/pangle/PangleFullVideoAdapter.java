package com.bytedance.msdk.adapter.pangle;

import android.app.Activity;
import android.content.Context;
import com.apk.Cgoto;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMFullVideoBaseAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdapterFullVideoAdListener;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.slot.GMAdSlotFullVideo;
import com.bytedance.msdk.base.TTBaseAd;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public class PangleFullVideoAdapter extends GMFullVideoBaseAdapter {
    public static final String TAG = "PangleFullVideoAdapter";

    /* renamed from: extends  reason: not valid java name */
    public Context f8656extends;

    /* loaded from: classes8.dex */
    public class PangleFullVideoAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public TTFullScreenVideoAd f8657do;

        /* renamed from: for  reason: not valid java name */
        public boolean f8658for;

        /* renamed from: if  reason: not valid java name */
        public boolean f8659if;

        /* renamed from: new  reason: not valid java name */
        public TTAdNative.FullScreenVideoAdListener f8660new = new TTAdNative.FullScreenVideoAdListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleFullVideoAdapter.PangleFullVideoAd.1
            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
            @JProtect
            public void onError(int i, String str) {
                PangleFullVideoAd pangleFullVideoAd = PangleFullVideoAd.this;
                pangleFullVideoAd.f8659if = false;
                PangleFullVideoAdapter.this.notifyAdFailed(new AdError(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
            @JProtect
            public void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd) {
                if (tTFullScreenVideoAd == null) {
                    PangleFullVideoAdapter.this.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                    return;
                }
                PangleFullVideoAd pangleFullVideoAd = PangleFullVideoAd.this;
                pangleFullVideoAd.f8657do = tTFullScreenVideoAd;
                pangleFullVideoAd.setExpressAd(true);
                PangleFullVideoAd pangleFullVideoAd2 = PangleFullVideoAd.this;
                pangleFullVideoAd2.setInteractionType(pangleFullVideoAd2.f8657do.getInteractionType());
                Map<String, Object> mediaExtraInfo = PangleFullVideoAd.this.f8657do.getMediaExtraInfo();
                if (PangleFullVideoAdapter.this.isClientBidding() && mediaExtraInfo != null) {
                    double value = PangleAdapterUtils.getValue(mediaExtraInfo.get("price"));
                    Logger.d("TTMediationSDK_ECMP", TTLogUtil.getTagThirdLevelById(PangleFullVideoAdapter.this.getAdapterRit(), PangleFullVideoAdapter.this.getAdSlotId()) + "pangle 全屏 返回的 cpm价格：" + value);
                    PangleFullVideoAd pangleFullVideoAd3 = PangleFullVideoAd.this;
                    if (value <= 0.0d) {
                        value = 0.0d;
                    }
                    pangleFullVideoAd3.setCpm(value);
                }
                if (mediaExtraInfo != null) {
                    Object obj = mediaExtraInfo.get("materialMetaIsFromPreload");
                    if (obj instanceof Boolean) {
                        PangleFullVideoAd.this.f8658for = ((Boolean) obj).booleanValue();
                        StringBuilder m1016super = Cgoto.m1016super("pangle 全屏 返回的adnPreload：");
                        m1016super.append(PangleFullVideoAd.this.f8658for);
                        Logger.d("TTMediationSDK", m1016super.toString());
                    }
                }
                PangleFullVideoAd.this.f8657do.setFullScreenVideoAdInteractionListener(new TTFullScreenVideoAd.FullScreenVideoAdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleFullVideoAdapter.PangleFullVideoAd.1.1
                    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                    public void onAdClose() {
                        PangleFullVideoAd pangleFullVideoAd4 = PangleFullVideoAd.this;
                        if (pangleFullVideoAd4.mTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                            PangleFullVideoAd.m3573do(pangleFullVideoAd4).onFullVideoAdClosed();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                    public void onAdShow() {
                        PangleFullVideoAd pangleFullVideoAd4 = PangleFullVideoAd.this;
                        if (pangleFullVideoAd4.mTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                            PangleFullVideoAd.m3573do(pangleFullVideoAd4).onFullVideoAdShow();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                    public void onAdVideoBarClick() {
                        PangleFullVideoAd pangleFullVideoAd4 = PangleFullVideoAd.this;
                        if (pangleFullVideoAd4.mTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                            PangleFullVideoAd.m3573do(pangleFullVideoAd4).onFullVideoAdClick();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                    public void onSkippedVideo() {
                        PangleFullVideoAd pangleFullVideoAd4 = PangleFullVideoAd.this;
                        if (pangleFullVideoAd4.mTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                            PangleFullVideoAd.m3573do(pangleFullVideoAd4).onSkippedVideo();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                    public void onVideoComplete() {
                        PangleFullVideoAd pangleFullVideoAd4 = PangleFullVideoAd.this;
                        if (pangleFullVideoAd4.mTTAdatperCallback instanceof ITTAdapterFullVideoAdListener) {
                            PangleFullVideoAd.m3573do(pangleFullVideoAd4).onVideoComplete();
                        }
                    }
                });
                PangleFullVideoAd pangleFullVideoAd4 = PangleFullVideoAd.this;
                pangleFullVideoAd4.f8659if = true;
                PangleFullVideoAdapter.this.notifyAdLoaded(pangleFullVideoAd4);
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
            public void onFullScreenVideoCached() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
            @JProtect
            public void onFullScreenVideoCached(TTFullScreenVideoAd tTFullScreenVideoAd) {
                PangleFullVideoAd pangleFullVideoAd = PangleFullVideoAd.this;
                pangleFullVideoAd.f8659if = true;
                PangleFullVideoAdapter.this.notifyAdVideoCache(pangleFullVideoAd, (AdError) null);
                while (true) {
                    char c = 'J';
                    char c2 = '7';
                    while (true) {
                        switch (c) {
                            case 'H':
                                break;
                            case 'I':
                                switch (c2) {
                                    case '^':
                                        break;
                                    case '_':
                                    case '`':
                                        return;
                                    default:
                                        if (c2 != '8' || c2 == '9') {
                                            return;
                                        }
                                        break;
                                }
                                c = 'I';
                                c2 = '`';
                                break;
                            case 'J':
                                if (c2 != '8') {
                                    return;
                                }
                                return;
                            default:
                                c = 'H';
                        }
                    }
                }
            }
        };

        public PangleFullVideoAd() {
        }

        /* renamed from: do  reason: not valid java name */
        public static ITTAdapterFullVideoAdListener m3573do(PangleFullVideoAd pangleFullVideoAd) {
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
            return (ITTAdapterFullVideoAdListener) pangleFullVideoAd.mTTAdatperCallback;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean adnHasAdVideoCachedApi() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getAdId() {
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f8657do;
            return tTFullScreenVideoAd != null ? PangleAdapterUtils.getAdId(tTFullScreenVideoAd.getMediaExtraInfo()) : super.getAdId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getCreativeId() {
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f8657do;
            return tTFullScreenVideoAd != null ? PangleAdapterUtils.getCreativeId(tTFullScreenVideoAd.getMediaExtraInfo()) : super.getCreativeId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f8657do;
            if (tTFullScreenVideoAd == null || (mediaExtraInfo = tTFullScreenVideoAd.getMediaExtraInfo()) == null) {
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
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f8657do;
            return tTFullScreenVideoAd != null ? PangleAdapterUtils.getReqId(tTFullScreenVideoAd.getMediaExtraInfo()) : super.getReqId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8657do == null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean isAdnPreload() {
            return this.f8658for;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f8657do;
            return (tTFullScreenVideoAd == null || tTFullScreenVideoAd.getExpirationTimestamp() <= System.currentTimeMillis()) ? GMAdConstant.AdIsReadyStatus.AD_IS_EXPIRED : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @JProtect
        public void loadAd() {
            TTAdNative createAdNative = TTAdSdk.getAdManager().createAdNative(PangleFullVideoAdapter.this.f8656extends);
            PangleFullVideoAdapter pangleFullVideoAdapter = PangleFullVideoAdapter.this;
            AdSlot adSlot = pangleFullVideoAdapter.mAdSlot;
            GMAdSlotFullVideo gMAdSlotFullVideo = pangleFullVideoAdapter.mGMAdSlotFullVideo;
            String adSlotId = pangleFullVideoAdapter.getAdSlotId();
            PangleFullVideoAdapter pangleFullVideoAdapter2 = PangleFullVideoAdapter.this;
            AdSlot.Builder buildPangleAdSlot = PangleAdapterUtils.buildPangleAdSlot(adSlot, gMAdSlotFullVideo, adSlotId, pangleFullVideoAdapter2.mWaterfallAbTestParam, pangleFullVideoAdapter2.getClientReqId(), PangleFullVideoAdapter.this.getAdm(), false);
            buildPangleAdSlot.setImageAcceptedSize(1080, 1920).setOrientation(PangleFullVideoAdapter.this.mGMAdSlotFullVideo.getOrientation());
            createAdNative.loadFullScreenVideoAd(buildPangleAdSlot.build(), this.f8660new);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f8657do;
            if (tTFullScreenVideoAd != null) {
                tTFullScreenVideoAd.setFullScreenVideoAdInteractionListener(null);
                this.f8657do.setDownloadListener(null);
                this.f8657do = null;
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void showAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
            if (this.f8657do != null) {
                TTAdConstant.RitScenes ritScenes = PangleAdapterUtils.getRitScenes(map);
                String customRitScenes = PangleAdapterUtils.getCustomRitScenes(map);
                if (ritScenes != null) {
                    this.f8657do.showFullScreenVideoAd(activity, ritScenes, customRitScenes);
                } else {
                    this.f8657do.showFullScreenVideoAd(activity);
                }
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

    @Override // com.bytedance.msdk.adapter.ad.GMFullVideoBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @JProtect
    public void loadAd(Context context, Map<String, Object> map) {
        super.loadAd(context, map);
        if (this.mGMAdSlotFullVideo == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
            return;
        }
        this.f8656extends = context;
        if (map != null) {
            new PangleFullVideoAd().loadAd();
        }
    }
}
