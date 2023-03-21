package com.qq.e.ads.interstitial2;

import com.apk.Cgoto;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.adevent.AdEventType;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.a;

/* loaded from: classes8.dex */
public class ADListenerAdapter implements ADListener {

    /* renamed from: a  reason: collision with root package name */
    public final UnifiedInterstitialADListener f11508a;
    public UnifiedInterstitialMediaListener b;
    public com.qq.e.comm.listeners.ADRewardListener c;
    public NegativeFeedbackListener d;

    public ADListenerAdapter(UnifiedInterstitialADListener unifiedInterstitialADListener) {
        this.f11508a = unifiedInterstitialADListener;
    }

    @Override // com.qq.e.comm.adevent.ADListener
    public void onADEvent(ADEvent aDEvent) {
        UnifiedInterstitialADListener unifiedInterstitialADListener;
        String str;
        if (aDEvent == null) {
            return;
        }
        int type = aDEvent.getType();
        if (type == 109) {
            UnifiedInterstitialADListener unifiedInterstitialADListener2 = this.f11508a;
            if (unifiedInterstitialADListener2 == null || !a.b(unifiedInterstitialADListener2)) {
                return;
            }
            this.f11508a.onRenderSuccess();
        } else if (type == 110) {
            UnifiedInterstitialADListener unifiedInterstitialADListener3 = this.f11508a;
            if (unifiedInterstitialADListener3 == null || !a.a(unifiedInterstitialADListener3)) {
                return;
            }
            this.f11508a.onRenderFail();
        } else if (type == 201) {
            UnifiedInterstitialADListener unifiedInterstitialADListener4 = this.f11508a;
            if (unifiedInterstitialADListener4 != null) {
                unifiedInterstitialADListener4.onVideoCached();
            }
        } else if (type == 202) {
            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener = this.b;
            if (unifiedInterstitialMediaListener != null) {
                unifiedInterstitialMediaListener.onVideoStart();
            }
        } else if (type == 204) {
            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener2 = this.b;
            if (unifiedInterstitialMediaListener2 != null) {
                unifiedInterstitialMediaListener2.onVideoPause();
            }
        } else if (type == 206) {
            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener3 = this.b;
            if (unifiedInterstitialMediaListener3 != null) {
                unifiedInterstitialMediaListener3.onVideoComplete();
            }
        } else if (type == 207) {
            Integer num = (Integer) aDEvent.getParam(Integer.class);
            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener4 = this.b;
            if (unifiedInterstitialMediaListener4 == null || num == null) {
                return;
            }
            unifiedInterstitialMediaListener4.onVideoError(AdErrorConvertor.formatErrorCode(num.intValue()));
        } else {
            switch (type) {
                case 100:
                    UnifiedInterstitialADListener unifiedInterstitialADListener5 = this.f11508a;
                    if (unifiedInterstitialADListener5 != null) {
                        unifiedInterstitialADListener5.onADReceive();
                        return;
                    }
                    return;
                case 101:
                    Integer num2 = (Integer) aDEvent.getParam(Integer.class);
                    if (num2 == null || (unifiedInterstitialADListener = this.f11508a) == null) {
                        return;
                    }
                    unifiedInterstitialADListener.onNoAD(AdErrorConvertor.formatErrorCode(num2.intValue()));
                    return;
                case 102:
                    UnifiedInterstitialADListener unifiedInterstitialADListener6 = this.f11508a;
                    if (unifiedInterstitialADListener6 != null) {
                        unifiedInterstitialADListener6.onADOpened();
                        return;
                    }
                    return;
                case 103:
                    UnifiedInterstitialADListener unifiedInterstitialADListener7 = this.f11508a;
                    if (unifiedInterstitialADListener7 != null) {
                        unifiedInterstitialADListener7.onADExposure();
                        return;
                    }
                    return;
                case 104:
                    if (this.c == null || (str = (String) aDEvent.getParam(String.class)) == null) {
                        return;
                    }
                    this.c.onReward(Cgoto.m1007native("transId", str));
                    return;
                case 105:
                    UnifiedInterstitialADListener unifiedInterstitialADListener8 = this.f11508a;
                    if (unifiedInterstitialADListener8 != null) {
                        unifiedInterstitialADListener8.onADClicked();
                        return;
                    }
                    return;
                case 106:
                    UnifiedInterstitialADListener unifiedInterstitialADListener9 = this.f11508a;
                    if (unifiedInterstitialADListener9 != null) {
                        unifiedInterstitialADListener9.onADClosed();
                        return;
                    }
                    return;
                default:
                    switch (type) {
                        case AdEventType.VIDEO_INIT /* 209 */:
                            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener5 = this.b;
                            if (unifiedInterstitialMediaListener5 != null) {
                                unifiedInterstitialMediaListener5.onVideoInit();
                                return;
                            }
                            return;
                        case AdEventType.VIDEO_READY /* 210 */:
                            Integer num3 = (Integer) aDEvent.getParam(Integer.class);
                            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener6 = this.b;
                            if (unifiedInterstitialMediaListener6 == null || num3 == null) {
                                return;
                            }
                            unifiedInterstitialMediaListener6.onVideoReady(num3.intValue());
                            return;
                        case AdEventType.VIDEO_LOADING /* 211 */:
                            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener7 = this.b;
                            if (unifiedInterstitialMediaListener7 != null) {
                                unifiedInterstitialMediaListener7.onVideoLoading();
                                return;
                            }
                            return;
                        default:
                            switch (type) {
                                case 301:
                                    UnifiedInterstitialMediaListener unifiedInterstitialMediaListener8 = this.b;
                                    if (unifiedInterstitialMediaListener8 != null) {
                                        unifiedInterstitialMediaListener8.onVideoPageOpen();
                                        return;
                                    }
                                    return;
                                case AdEventType.VIDEO_PAGE_CLOSE /* 302 */:
                                    UnifiedInterstitialMediaListener unifiedInterstitialMediaListener9 = this.b;
                                    if (unifiedInterstitialMediaListener9 != null) {
                                        unifiedInterstitialMediaListener9.onVideoPageClose();
                                        return;
                                    }
                                    return;
                                case AdEventType.LEFT_APPLICATION /* 303 */:
                                    UnifiedInterstitialADListener unifiedInterstitialADListener10 = this.f11508a;
                                    if (unifiedInterstitialADListener10 != null) {
                                        unifiedInterstitialADListener10.onADLeftApplication();
                                        return;
                                    }
                                    return;
                                case AdEventType.COMPLAIN_SUCCESS /* 304 */:
                                    NegativeFeedbackListener negativeFeedbackListener = this.d;
                                    if (negativeFeedbackListener != null) {
                                        negativeFeedbackListener.onComplainSuccess();
                                        return;
                                    }
                                    return;
                                default:
                                    return;
                            }
                    }
            }
        }
    }

    public void setAdRewardListener(com.qq.e.comm.listeners.ADRewardListener aDRewardListener) {
        this.c = aDRewardListener;
    }

    public void setMediaListener(UnifiedInterstitialMediaListener unifiedInterstitialMediaListener) {
        this.b = unifiedInterstitialMediaListener;
    }

    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.d = negativeFeedbackListener;
    }
}
