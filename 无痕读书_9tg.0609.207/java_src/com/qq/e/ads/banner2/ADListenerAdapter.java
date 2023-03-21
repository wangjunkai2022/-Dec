package com.qq.e.ads.banner2;

import com.apk.Cgoto;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.util.AdErrorConvertor;
/* loaded from: classes8.dex */
public class ADListenerAdapter implements ADListener {

    /* renamed from: a  reason: collision with root package name */
    public final UnifiedBannerADListener f11496a;
    public NegativeFeedbackListener b;
    public ADRewardListener c;

    public ADListenerAdapter(UnifiedBannerADListener unifiedBannerADListener) {
        this.f11496a = unifiedBannerADListener;
    }

    @Override // com.qq.e.comm.adevent.ADListener
    public void onADEvent(ADEvent aDEvent) {
        UnifiedBannerADListener unifiedBannerADListener;
        String str;
        if (aDEvent == null) {
            return;
        }
        int type = aDEvent.getType();
        if (type == 100) {
            UnifiedBannerADListener unifiedBannerADListener2 = this.f11496a;
            if (unifiedBannerADListener2 != null) {
                unifiedBannerADListener2.onADReceive();
            }
        } else if (type == 101) {
            Integer num = (Integer) aDEvent.getParam(Integer.class);
            if (num == null || (unifiedBannerADListener = this.f11496a) == null) {
                return;
            }
            unifiedBannerADListener.onNoAD(AdErrorConvertor.formatErrorCode(num.intValue()));
        } else if (type == 303) {
            UnifiedBannerADListener unifiedBannerADListener3 = this.f11496a;
            if (unifiedBannerADListener3 != null) {
                unifiedBannerADListener3.onADLeftApplication();
            }
        } else if (type == 304) {
            NegativeFeedbackListener negativeFeedbackListener = this.b;
            if (negativeFeedbackListener != null) {
                negativeFeedbackListener.onComplainSuccess();
            }
        } else {
            switch (type) {
                case 103:
                    UnifiedBannerADListener unifiedBannerADListener4 = this.f11496a;
                    if (unifiedBannerADListener4 != null) {
                        unifiedBannerADListener4.onADExposure();
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
                    UnifiedBannerADListener unifiedBannerADListener5 = this.f11496a;
                    if (unifiedBannerADListener5 != null) {
                        unifiedBannerADListener5.onADClicked();
                        return;
                    }
                    return;
                case 106:
                    UnifiedBannerADListener unifiedBannerADListener6 = this.f11496a;
                    if (unifiedBannerADListener6 != null) {
                        unifiedBannerADListener6.onADClosed();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public void setAdRewardListener(ADRewardListener aDRewardListener) {
        this.c = aDRewardListener;
    }

    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.b = negativeFeedbackListener;
    }
}
