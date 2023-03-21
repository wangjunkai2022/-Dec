package com.qq.e.ads.banner2;

import android.app.Activity;
import android.content.Context;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.cfg.DownAPPConfirmPolicy;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.pi.UBVI;
import com.qq.e.comm.util.AdErrorConvertor;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes8.dex */
public class UnifiedBannerAD extends LiteAbstractAD<UBVI> implements NFBI, IReward {
    public UnifiedBannerADListener g;
    public DownAPPConfirmPolicy h;
    public AtomicInteger i;
    public int j;
    public LoadAdParams k;
    public UnifiedBannerView l;
    public final ADListenerAdapter m;
    public volatile ServerSideVerificationOptions n;

    public UnifiedBannerAD(Activity activity, UnifiedBannerView unifiedBannerView, String str, UnifiedBannerADListener unifiedBannerADListener) {
        this(unifiedBannerView, unifiedBannerADListener);
        a(activity, str);
    }

    public UnifiedBannerAD(Activity activity, UnifiedBannerView unifiedBannerView, String str, String str2, UnifiedBannerADListener unifiedBannerADListener) {
        this(unifiedBannerView, unifiedBannerADListener);
        a(activity, str, str2);
    }

    public UnifiedBannerAD(UnifiedBannerView unifiedBannerView, UnifiedBannerADListener unifiedBannerADListener) {
        this.i = new AtomicInteger(0);
        this.j = 30;
        this.k = null;
        this.g = unifiedBannerADListener;
        this.l = unifiedBannerView;
        this.m = new ADListenerAdapter(unifiedBannerADListener);
    }

    @Override // com.qq.e.ads.AbstractAD
    public Object a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getUnifiedBannerViewDelegate(this.l, (Activity) context, str, str2, str3, this.m);
    }

    public void a(DownAPPConfirmPolicy downAPPConfirmPolicy) {
        T t;
        this.h = downAPPConfirmPolicy;
        if (downAPPConfirmPolicy == null || (t = this.f11492a) == 0) {
            return;
        }
        ((UBVI) t).setDownAPPConfirmPolicy(downAPPConfirmPolicy);
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i) {
        UnifiedBannerADListener unifiedBannerADListener = this.g;
        if (unifiedBannerADListener != null) {
            unifiedBannerADListener.onNoAD(AdErrorConvertor.formatErrorCode(i));
        }
    }

    public void c(int i) {
        this.j = i;
        T t = this.f11492a;
        if (t != 0) {
            ((UBVI) t).setRefresh(i);
        }
    }

    public void destroy() {
        T t = this.f11492a;
        if (t != 0) {
            ((UBVI) t).destroy();
        } else {
            a("destroy");
        }
    }

    public String getAdNetWorkName() {
        T t = this.f11492a;
        if (t != 0) {
            return ((UBVI) t).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public void loadAD() {
        if (a()) {
            if (!b()) {
                this.i.incrementAndGet();
                return;
            }
            T t = this.f11492a;
            if (t != 0) {
                ((UBVI) t).fetchAd();
            } else {
                a("loadAD");
            }
        }
    }

    public void onWindowFocusChanged(boolean z) {
        T t = this.f11492a;
        if (t != 0) {
            ((UBVI) t).onWindowFocusChanged(z);
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.k = loadAdParams;
        T t = this.f11492a;
        if (t != 0) {
            ((UBVI) t).setLoadAdParams(loadAdParams);
        }
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.m.setNegativeFeedbackListener(negativeFeedbackListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.m.setAdRewardListener(aDRewardListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.n = serverSideVerificationOptions;
        T t = this.f11492a;
        if (t != 0) {
            ((UBVI) t).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public void a(Object obj) {
        UBVI ubvi = (UBVI) obj;
        DownAPPConfirmPolicy downAPPConfirmPolicy = this.h;
        if (downAPPConfirmPolicy != null) {
            this.h = downAPPConfirmPolicy;
            T t = this.f11492a;
            if (t != 0) {
                ((UBVI) t).setDownAPPConfirmPolicy(downAPPConfirmPolicy);
            }
        }
        int i = this.j;
        this.j = i;
        T t2 = this.f11492a;
        if (t2 != 0) {
            ((UBVI) t2).setRefresh(i);
        }
        LoadAdParams loadAdParams = this.k;
        this.k = loadAdParams;
        T t3 = this.f11492a;
        if (t3 != 0) {
            ((UBVI) t3).setLoadAdParams(loadAdParams);
        }
        ubvi.setServerSideVerificationOptions(this.n);
        while (this.i.getAndDecrement() > 0) {
            loadAD();
        }
    }
}
