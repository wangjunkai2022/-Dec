package com.bytedance.msdk.adapter.gdt;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.RequiresApi;
import com.baidu.tts.client.SpeechSynthesizer;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.SplashDismissController;
import com.bytedance.msdk.adapter.ad.GMSplashBaseAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdapterSplashAdListener;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.TTRequestExtraParams;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.slot.GMAdSlotSplash;
import com.bytedance.msdk.base.TTBaseAd;
import com.qq.e.ads.splash.SplashAD;
import com.qq.e.ads.splash.SplashADZoomOutListener;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.managers.status.SDKStatus;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public class GdtSplashAdapter extends GMSplashBaseAdapter {

    /* renamed from: abstract  reason: not valid java name */
    public SplashDismissController f8566abstract;

    /* renamed from: continue  reason: not valid java name */
    public boolean f8567continue;

    /* renamed from: extends  reason: not valid java name */
    public Context f8568extends;

    /* renamed from: package  reason: not valid java name */
    public GDTSplashAd f8570package;

    /* renamed from: finally  reason: not valid java name */
    public int f8569finally = 3000;

    /* renamed from: private  reason: not valid java name */
    public boolean f8571private = false;

    /* loaded from: classes8.dex */
    public class GDTSplashAd extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public SplashAD f8572do;

        /* renamed from: for  reason: not valid java name */
        public FrameLayout f8573for;

        /* renamed from: if  reason: not valid java name */
        public RelativeLayout f8574if;

        /* renamed from: new  reason: not valid java name */
        public SplashADZoomOutListener f8575new = new SplashADZoomOutListener() { // from class: com.bytedance.msdk.adapter.gdt.GdtSplashAdapter.GDTSplashAd.1
            public long millisUntilFinished;

            @Override // com.qq.e.ads.splash.SplashADZoomOutListener
            public boolean isSupportZoomOut() {
                return true;
            }

            @Override // com.qq.e.ads.splash.SplashADListener
            @JProtect
            public void onADClicked() {
                TTLogUtil.getTagThirdLevelById(GdtSplashAdapter.this.getAdapterRit(), GdtSplashAdapter.this.getAdSlotId());
                GDTSplashAd gDTSplashAd = GDTSplashAd.this;
                if (gDTSplashAd.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                    SplashDismissController splashDismissController = GdtSplashAdapter.this.f8566abstract;
                    if (splashDismissController != null) {
                        splashDismissController.setClick(true);
                        GdtSplashAdapter.this.f8566abstract.setCallBack(new SplashDismissController.CallBack() { // from class: com.bytedance.msdk.adapter.gdt.GdtSplashAdapter.GDTSplashAd.1.1
                            @Override // com.bytedance.msdk.adapter.SplashDismissController.CallBack
                            public void onResume() {
                                SplashDismissController splashDismissController2 = GdtSplashAdapter.this.f8566abstract;
                                if (splashDismissController2 == null || !splashDismissController2.jumpToAdPage() || GdtSplashAdapter.this.f8566abstract.isCallDismiss()) {
                                    return;
                                }
                                ITTAdatperCallback iTTAdatperCallback = GDTSplashAd.this.mTTAdatperCallback;
                                if (iTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                                    ((ITTAdapterSplashAdListener) iTTAdatperCallback).onAdDismiss();
                                }
                            }
                        });
                    }
                    ((ITTAdapterSplashAdListener) GDTSplashAd.this.mTTAdatperCallback).onAdClicked();
                }
            }

            @Override // com.qq.e.ads.splash.SplashADListener
            public void onADDismissed() {
                GDTSplashAd gDTSplashAd = GDTSplashAd.this;
                if (gDTSplashAd.mTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                    SplashDismissController splashDismissController = GdtSplashAdapter.this.f8566abstract;
                    if (splashDismissController == null || !splashDismissController.jumpToAdPage()) {
                        SplashDismissController splashDismissController2 = GdtSplashAdapter.this.f8566abstract;
                        if (splashDismissController2 != null) {
                            splashDismissController2.setCallDismiss(true);
                        }
                        ((ITTAdapterSplashAdListener) GDTSplashAd.this.mTTAdatperCallback).onAdDismiss();
                    }
                }
            }

            @Override // com.qq.e.ads.splash.SplashADListener
            @JProtect
            public void onADExposure() {
                ITTAdatperCallback iTTAdatperCallback = GDTSplashAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                    ((ITTAdapterSplashAdListener) iTTAdatperCallback).onAdShow();
                }
                Logger.e("TTMediationSDK", TTLogUtil.getTagThirdLevelById(GdtSplashAdapter.this.getAdapterRit(), GdtSplashAdapter.this.getAdSlotId()) + "GDT-开屏广告_onADExposure......onADExposure.....");
            }

            @Override // com.qq.e.ads.splash.SplashADListener
            @JProtect
            public void onADLoaded(long j) {
                StringBuilder sb;
                long elapsedRealtime = j - SystemClock.elapsedRealtime();
                GDTSplashAd gDTSplashAd = GDTSplashAd.this;
                if (gDTSplashAd.f8572do == null || elapsedRealtime <= 1000) {
                    GdtSplashAdapter.this.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_NO_ERROR_MSG));
                    return;
                }
                if (!GdtSplashAdapter.this.isClientBidding()) {
                    if (GdtSplashAdapter.this.isMultiBidding()) {
                        GDTSplashAd gDTSplashAd2 = GDTSplashAd.this;
                        gDTSplashAd2.setLevelTag(gDTSplashAd2.f8572do.getECPMLevel());
                        sb = new StringBuilder();
                        sb.append(TTLogUtil.getTagThirdLevelById(GdtSplashAdapter.this.getAdapterRit(), GdtSplashAdapter.this.getAdSlotId()));
                        sb.append("GDT_多阶底价 splash 返回的 价格标签：");
                        sb.append(GDTSplashAd.this.f8572do.getECPMLevel());
                    }
                    GDTSplashAd gDTSplashAd3 = GDTSplashAd.this;
                    GdtSplashAdapter.this.notifyAdLoaded(gDTSplashAd3);
                }
                GDTSplashAd gDTSplashAd4 = GDTSplashAd.this;
                gDTSplashAd4.setCpm(gDTSplashAd4.f8572do.getECPM() != -1 ? GDTSplashAd.this.f8572do.getECPM() : 0.0d);
                sb = new StringBuilder();
                sb.append(TTLogUtil.getTagThirdLevelById(GdtSplashAdapter.this.getAdapterRit(), GdtSplashAdapter.this.getAdSlotId()));
                sb.append("GDT_clientBidding splash 返回的 cpm价格：");
                sb.append(GDTSplashAd.this.f8572do.getECPM());
                Logger.d("TTMediationSDK_ECMP", sb.toString());
                GDTSplashAd gDTSplashAd32 = GDTSplashAd.this;
                GdtSplashAdapter.this.notifyAdLoaded(gDTSplashAd32);
            }

            @Override // com.qq.e.ads.splash.SplashADListener
            public void onADPresent() {
            }

            @Override // com.qq.e.ads.splash.SplashADListener
            public void onADTick(long j) {
                this.millisUntilFinished = j;
            }

            @Override // com.qq.e.ads.splash.SplashADListener
            @JProtect
            public void onNoAD(com.qq.e.comm.util.AdError adError) {
                if (adError != null) {
                    GdtSplashAdapter.this.notifyAdFailed(new AdError(adError.getErrorCode(), adError.getErrorMsg()));
                } else {
                    GdtSplashAdapter.this.notifyAdFailed(new AdError());
                }
            }

            @Override // com.qq.e.ads.splash.SplashADZoomOutListener
            public void onZoomOut() {
                ITTAdatperCallback iTTAdatperCallback = GDTSplashAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                    ((ITTAdapterSplashAdListener) iTTAdatperCallback).onMinWindowStart();
                }
            }

            @Override // com.qq.e.ads.splash.SplashADZoomOutListener
            public void onZoomOutPlayFinish() {
                ITTAdatperCallback iTTAdatperCallback = GDTSplashAd.this.mTTAdatperCallback;
                if (iTTAdatperCallback instanceof ITTAdapterSplashAdListener) {
                    ((ITTAdapterSplashAdListener) iTTAdatperCallback).onMinWindowPlayFinish();
                }
            }
        };

        @RequiresApi(api = 16)
        public GDTSplashAd() {
            RelativeLayout relativeLayout = new RelativeLayout(GdtSplashAdapter.this.f8568extends);
            relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            FrameLayout frameLayout = new FrameLayout(GdtSplashAdapter.this.f8568extends);
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            relativeLayout.addView(frameLayout);
            this.f8573for = frameLayout;
            this.f8574if = relativeLayout;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidLoseNotify(Map<String, Object> map) {
            if (!isClientBiddingAd() || this.f8572do == null || map == null) {
                return;
            }
            try {
                Object obj = map.get("bidding_lose_reason");
                if (obj instanceof GMAdConstant.BiddingLossReason) {
                    this.f8572do.sendLossNotification(0, GDTAdapterUtils.getBiddingLossReason((GMAdConstant.BiddingLossReason) obj), null);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void bidWinNotify(Map<String, Object> map) {
            SplashAD splashAD;
            if (isClientBiddingAd() && (splashAD = this.f8572do) != null) {
                try {
                    splashAD.sendWinNotification((int) getCpm());
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Bitmap getSplashBitMap() {
            SplashAD splashAD = this.f8572do;
            if (splashAD != null) {
                splashAD.getZoomOutBitmap();
                return null;
            }
            return null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8572do == null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            SplashAD splashAD = this.f8572do;
            return (splashAD == null || !splashAD.isValid() || GdtSplashAdapter.this.hasNotifyFail()) ? GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @JProtect
        public void loadAd() {
            GdtSplashAdapter gdtSplashAdapter = GdtSplashAdapter.this;
            if (gdtSplashAdapter.f8568extends instanceof Activity) {
                int i = gdtSplashAdapter.f8569finally;
                if (i < 0) {
                    gdtSplashAdapter.f8569finally = 3000;
                } else if (i > 5000) {
                    gdtSplashAdapter.f8569finally = 5000;
                }
                GdtSplashAdapter gdtSplashAdapter2 = GdtSplashAdapter.this;
                SplashAD splashAD = new SplashAD(gdtSplashAdapter2.f8568extends, gdtSplashAdapter2.getAdSlotId(), this.f8575new, GdtSplashAdapter.this.f8569finally);
                this.f8572do = splashAD;
                if (GdtSplashAdapter.this.f8571private) {
                    splashAD.preLoad();
                }
                this.f8572do.fetchAdOnly();
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            this.f8572do = null;
            this.f8575new = null;
            this.mTTAdatperCallback = null;
            GdtSplashAdapter gdtSplashAdapter = GdtSplashAdapter.this;
            gdtSplashAdapter.f8568extends = null;
            gdtSplashAdapter.f8566abstract = null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        @JProtect
        public void showSplashAd(ViewGroup viewGroup) {
            if (this.f8572do == null || viewGroup == null) {
                return;
            }
            viewGroup.removeAllViews();
            RelativeLayout relativeLayout = this.f8574if;
            if (relativeLayout == null || this.f8573for == null) {
                return;
            }
            ViewParent parent = relativeLayout.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f8574if);
            }
            viewGroup.addView(this.f8574if, -1, -1);
            this.f8572do.showAd(this.f8573for);
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void splashMinWindowAnimationFinish() {
            SplashAD splashAD = this.f8572do;
            if (splashAD != null) {
                splashAD.zoomOutAnimationFinish();
            }
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

    @Override // com.bytedance.msdk.adapter.ad.GMSplashBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @JProtect
    public void loadAd(Context context, Map<String, Object> map) {
        super.loadAd(context, map);
        this.f8568extends = context;
        GMAdSlotSplash gMAdSlotSplash = this.mGMAdSlotSplash;
        if (gMAdSlotSplash == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
            return;
        }
        boolean splashShakeButton = gMAdSlotSplash.getSplashShakeButton();
        this.f8567continue = splashShakeButton;
        if (!splashShakeButton) {
            HashMap hashMap = new HashMap();
            hashMap.put("shakable", SpeechSynthesizer.REQUEST_DNS_OFF);
            GlobalSetting.setExtraUserData(hashMap);
        }
        if (map != null) {
            this.f8569finally = map.get(TTRequestExtraParams.PARAM_AD_LOAD_TIMEOUT) != null ? ((Integer) map.get(TTRequestExtraParams.PARAM_AD_LOAD_TIMEOUT)).intValue() : this.f8569finally;
            String str = (String) map.get("tt_ad_network_config_appid");
            Context context2 = this.f8568extends;
            if (context2 instanceof Activity) {
                this.f8566abstract = new SplashDismissController((Activity) context2);
            }
            this.f8571private = this.mGMAdSlotSplash.isSplashPreLoad();
            GDTSplashAd gDTSplashAd = new GDTSplashAd();
            this.f8570package = gDTSplashAd;
            gDTSplashAd.loadAd();
        }
    }
}
