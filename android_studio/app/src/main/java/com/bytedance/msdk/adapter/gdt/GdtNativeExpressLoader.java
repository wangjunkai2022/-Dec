package com.bytedance.msdk.adapter.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.apk.Cgoto;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdapterNativeExpressAdListener;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import com.bytedance.msdk.base.TTBaseAd;
import com.qq.e.ads.cfg.DownAPPConfirmPolicy;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.ads.nativ.NativeExpressMediaListener;
import com.qq.e.comm.pi.AdData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes8.dex */
public class GdtNativeExpressLoader {

    /* renamed from: this  reason: not valid java name */
    public static Map<NativeExpressADView, ITTAdapterNativeExpressAdListener> f8521this = new HashMap();

    /* renamed from: case  reason: not valid java name */
    public TTAbsAdLoaderAdapter f8522case;

    /* renamed from: do  reason: not valid java name */
    public String f8523do;

    /* renamed from: else  reason: not valid java name */
    public int f8524else;

    /* renamed from: for  reason: not valid java name */
    public Context f8525for;

    /* renamed from: goto  reason: not valid java name */
    public final NativeExpressAD.NativeExpressADListener f8526goto = new NativeExpressAD.NativeExpressADListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtNativeExpressLoader.1
        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        @JProtect
        public void onADClicked(NativeExpressADView nativeExpressADView) {
            ITTAdapterNativeExpressAdListener iTTAdapterNativeExpressAdListener;
            Map<NativeExpressADView, ITTAdapterNativeExpressAdListener> map = GdtNativeExpressLoader.f8521this;
            if (map == null || (iTTAdapterNativeExpressAdListener = map.get(nativeExpressADView)) == null) {
                return;
            }
            iTTAdapterNativeExpressAdListener.onAdClick();
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        @JProtect
        public void onADClosed(NativeExpressADView nativeExpressADView) {
            Map<NativeExpressADView, ITTAdapterNativeExpressAdListener> map = GdtNativeExpressLoader.f8521this;
            if (map != null) {
                ITTAdapterNativeExpressAdListener iTTAdapterNativeExpressAdListener = map.get(nativeExpressADView);
                if (iTTAdapterNativeExpressAdListener instanceof TTExpressAd) {
                    ((TTExpressAd) iTTAdapterNativeExpressAdListener).closeAd();
                }
                GdtNativeExpressLoader.f8521this.remove(nativeExpressADView);
            }
            if (nativeExpressADView != null) {
                nativeExpressADView.destroy();
            }
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        @JProtect
        public void onADExposure(NativeExpressADView nativeExpressADView) {
            ITTAdapterNativeExpressAdListener iTTAdapterNativeExpressAdListener;
            Map<NativeExpressADView, ITTAdapterNativeExpressAdListener> map = GdtNativeExpressLoader.f8521this;
            if (map == null || (iTTAdapterNativeExpressAdListener = map.get(nativeExpressADView)) == null) {
                return;
            }
            iTTAdapterNativeExpressAdListener.onAdShow();
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADLeftApplication(NativeExpressADView nativeExpressADView) {
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        @JProtect
        public void onADLoaded(List<NativeExpressADView> list) {
            if (list == null || list.size() == 0) {
                GdtNativeExpressLoader.this.f8522case.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (NativeExpressADView nativeExpressADView : list) {
                if (nativeExpressADView != null && nativeExpressADView.getBoundData() != null) {
                    TTExpressAd tTExpressAd = new TTExpressAd(nativeExpressADView);
                    GdtNativeExpressLoader.f8521this.put(nativeExpressADView, tTExpressAd);
                    arrayList.add(tTExpressAd);
                }
            }
            if (arrayList.size() > 0) {
                GdtNativeExpressLoader.this.f8522case.notifyAdLoaded(arrayList);
            } else {
                GdtNativeExpressLoader.this.f8522case.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
            }
        }

        @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
        @JProtect
        public void onNoAD(com.qq.e.comm.util.AdError adError) {
            if (adError != null) {
                GdtNativeExpressLoader.this.f8522case.notifyAdFailed(new AdError(adError.getErrorCode(), adError.getErrorMsg()));
            } else {
                GdtNativeExpressLoader.this.f8522case.notifyAdFailed(new AdError());
            }
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        @JProtect
        public void onRenderFail(NativeExpressADView nativeExpressADView) {
            ITTAdapterNativeExpressAdListener iTTAdapterNativeExpressAdListener;
            Map<NativeExpressADView, ITTAdapterNativeExpressAdListener> map = GdtNativeExpressLoader.f8521this;
            if (map == null || (iTTAdapterNativeExpressAdListener = map.get(nativeExpressADView)) == null) {
                return;
            }
            iTTAdapterNativeExpressAdListener.onRenderFail(nativeExpressADView, AdError.ERROR_MEDIA_RENDER_MSG, AdError.ERROR_ADN_NO_ERROR_CODE);
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        @JProtect
        public void onRenderSuccess(NativeExpressADView nativeExpressADView) {
            ITTAdapterNativeExpressAdListener iTTAdapterNativeExpressAdListener;
            Map<NativeExpressADView, ITTAdapterNativeExpressAdListener> map = GdtNativeExpressLoader.f8521this;
            if (map == null || (iTTAdapterNativeExpressAdListener = map.get(nativeExpressADView)) == null) {
                return;
            }
            iTTAdapterNativeExpressAdListener.onRenderSuccess(-1.0f, -2.0f);
        }
    };

    /* renamed from: if  reason: not valid java name */
    public int f8527if;

    /* renamed from: new  reason: not valid java name */
    public GMAdSlotGDTOption f8528new;

    /* renamed from: try  reason: not valid java name */
    public NativeExpressAD f8529try;

    /* loaded from: classes8.dex */
    public class TTExpressAd extends TTBaseAd implements ITTAdapterNativeExpressAdListener {

        /* renamed from: do  reason: not valid java name */
        public NativeExpressADView f8531do;

        /* renamed from: if  reason: not valid java name */
        public GMDislikeCallback f8533if;

        /* renamed from: for  reason: not valid java name */
        public volatile boolean f8532for = false;

        /* renamed from: new  reason: not valid java name */
        public final NativeExpressMediaListener f8534new = new NativeExpressMediaListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtNativeExpressLoader.TTExpressAd.2
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
            public void onVideoError(NativeExpressADView nativeExpressADView, com.qq.e.comm.util.AdError adError) {
                GMVideoListener gMVideoListener = TTExpressAd.this.mTTVideoListener;
                if (gMVideoListener != null) {
                    if (adError != null) {
                        gMVideoListener.onVideoError(new AdError(adError.getErrorCode(), adError.getErrorMsg()));
                    } else {
                        gMVideoListener.onVideoError(new AdError());
                    }
                }
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoInit(NativeExpressADView nativeExpressADView) {
                GdtNativeExpressLoader.m3564do(GdtNativeExpressLoader.this, (AdData.VideoPlayer) nativeExpressADView.getBoundData().getProperty(AdData.VideoPlayer.class));
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

        public TTExpressAd(NativeExpressADView nativeExpressADView) {
            StringBuilder sb;
            this.f8531do = nativeExpressADView;
            AdData boundData = nativeExpressADView.getBoundData();
            if (boundData.getAdPatternType() == 2) {
                nativeExpressADView.preloadVideo();
                nativeExpressADView.setMediaListener(this.f8534new);
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
            TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = GdtNativeExpressLoader.this.f8522case;
            if (tTAbsAdLoaderAdapter != null) {
                if (tTAbsAdLoaderAdapter.isClientBidding()) {
                    setCpm(boundData.getECPM() != -1 ? boundData.getECPM() : 0.0d);
                    Logger.d("");
                    sb = new StringBuilder();
                    sb.append("GDT_clientBidding 模板Native 返回的 cpm价格：");
                    sb.append(boundData.getECPM());
                } else if (!GdtNativeExpressLoader.this.f8522case.isMultiBidding()) {
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
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidLoseNotify(Map<String, Object> map) {
            if (!isClientBiddingAd() || this.f8531do == null || map == null) {
                return;
            }
            try {
                Object obj = map.get("bidding_lose_reason");
                if (obj instanceof GMAdConstant.BiddingLossReason) {
                    this.f8531do.sendLossNotification(0, GDTAdapterUtils.getBiddingLossReason((GMAdConstant.BiddingLossReason) obj), null);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidWinNotify(Map<String, Object> map) {
            NativeExpressADView nativeExpressADView;
            if (isClientBiddingAd() && (nativeExpressADView = this.f8531do) != null) {
                try {
                    nativeExpressADView.sendWinNotification((int) getCpm());
                } catch (Exception unused) {
                }
            }
        }

        public void closeAd() {
            if (this.f8533if != null) {
                TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = GdtNativeExpressLoader.this.f8522case;
                if (tTAbsAdLoaderAdapter != null) {
                    tTAbsAdLoaderAdapter.nativeDislikeClick(this, "gdt信息流模板dislike接口无关闭原因", null);
                }
                this.f8533if.onSelected(-1, "gdt信息流模板dislike接口无关闭原因");
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public View getAdView() {
            if (GdtNativeExpressLoader.this.f8522case.isServerBidding()) {
                NativeExpressADView nativeExpressADView = this.f8531do;
                nativeExpressADView.setBidECPM(nativeExpressADView.getECPM());
            }
            return this.f8531do;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8532for;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDislike() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            NativeExpressADView nativeExpressADView = this.f8531do;
            return (nativeExpressADView == null || !nativeExpressADView.isValid()) ? GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener
        @JProtect
        public void onAdClick() {
            GMNativeAdListener gMNativeAdListener = this.mTTNativeAdListener;
            if (gMNativeAdListener != null) {
                gMNativeAdListener.onAdClick();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener
        @JProtect
        public void onAdShow() {
            GMNativeAdListener gMNativeAdListener = this.mTTNativeAdListener;
            if (gMNativeAdListener != null) {
                gMNativeAdListener.onAdShow();
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            this.f8532for = true;
            Map<NativeExpressADView, ITTAdapterNativeExpressAdListener> map = GdtNativeExpressLoader.f8521this;
            if (map != null) {
                map.remove(this.f8531do);
            }
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.gdt.GdtNativeExpressLoader.TTExpressAd.1
                @Override // java.lang.Runnable
                public void run() {
                    NativeExpressADView nativeExpressADView = TTExpressAd.this.f8531do;
                    if (nativeExpressADView != null) {
                        nativeExpressADView.destroy();
                    }
                }
            });
            this.f8533if = null;
            super.onDestroy();
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener
        @JProtect
        public void onRenderFail(View view, String str, int i) {
            GMNativeAdListener gMNativeAdListener = this.mTTNativeAdListener;
            if (gMNativeAdListener instanceof GMNativeExpressAdListener) {
                ((GMNativeExpressAdListener) gMNativeAdListener).onRenderFail(view, str, i);
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener
        @JProtect
        public void onRenderSuccess(float f, float f2) {
            GMNativeAdListener gMNativeAdListener = this.mTTNativeAdListener;
            if (gMNativeAdListener instanceof GMNativeExpressAdListener) {
                ((GMNativeExpressAdListener) gMNativeAdListener).onRenderSuccess(f, f2);
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void render() {
            NativeExpressADView nativeExpressADView = this.f8531do;
            if (nativeExpressADView != null) {
                nativeExpressADView.render();
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void setDislikeCallback(Activity activity, GMDislikeCallback gMDislikeCallback) {
            this.f8533if = gMDislikeCallback;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static String m3564do(GdtNativeExpressLoader gdtNativeExpressLoader, AdData.VideoPlayer videoPlayer) {
        if (gdtNativeExpressLoader != null) {
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
                return m1016super.toString();
            }
            return null;
        }
        throw null;
    }

    @JProtect
    public void loadAd(Context context, boolean z, TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter) {
        NativeExpressAD nativeExpressAD;
        NativeExpressAD nativeExpressAD2;
        DownAPPConfirmPolicy downAPPConfirmPolicy;
        if (context == null || tTAbsAdLoaderAdapter == null) {
            return;
        }
        this.f8525for = context;
        this.f8522case = tTAbsAdLoaderAdapter;
        if (!TextUtils.isEmpty(tTAbsAdLoaderAdapter.getAdm())) {
            Context context2 = this.f8525for;
            ADSize aDSize = new ADSize(-1, -2);
            int i = this.f8524else;
            if (i > 0) {
                aDSize = new ADSize(i, -2);
            }
            nativeExpressAD = new NativeExpressAD(context2, aDSize, this.f8523do, this.f8526goto, this.f8522case.getAdm());
        } else {
            Context context3 = this.f8525for;
            ADSize aDSize2 = new ADSize(-1, -2);
            int i2 = this.f8524else;
            if (i2 > 0) {
                aDSize2 = new ADSize(i2, -2);
            }
            nativeExpressAD = new NativeExpressAD(context3, aDSize2, this.f8523do, this.f8526goto);
        }
        this.f8529try = nativeExpressAD;
        GMAdSlotGDTOption gMAdSlotGDTOption = this.f8528new;
        if (gMAdSlotGDTOption != null) {
            nativeExpressAD.setMinVideoDuration(gMAdSlotGDTOption.getGDTMinVideoDuration());
            this.f8529try.setMaxVideoDuration(this.f8528new.getGDTMaxVideoDuration());
            this.f8529try.setVideoOption(GDTAdapterUtils.getGMVideoOption(this.f8528new));
            if (this.f8528new.getDownAPPConfirmPolicy() == 0) {
                nativeExpressAD2 = this.f8529try;
                downAPPConfirmPolicy = DownAPPConfirmPolicy.Default;
            } else if (this.f8528new.getDownAPPConfirmPolicy() == 1) {
                nativeExpressAD2 = this.f8529try;
                downAPPConfirmPolicy = DownAPPConfirmPolicy.NOConfirm;
            }
            nativeExpressAD2.setDownAPPConfirmPolicy(downAPPConfirmPolicy);
        }
        this.f8529try.loadAD(this.f8527if);
    }
}
