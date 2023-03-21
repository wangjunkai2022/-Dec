package com.qq.e.ads.splash;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.apk.Cgoto;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.ErrorCode;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NSPVI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
/* loaded from: classes8.dex */
public final class SplashAD extends LiteAbstractAD<NSPVI> implements IReward {
    public volatile ViewGroup g;
    public volatile SplashADListener h;
    public volatile ADRewardListener i;
    public volatile LoadAdParams j;
    public volatile boolean k;
    public volatile boolean l;
    public volatile boolean m;
    public volatile int n;
    public volatile byte[] o;
    public volatile ServerSideVerificationOptions p;
    public int q;

    /* loaded from: classes8.dex */
    public class ADListenerAdapter implements ADListener {
        public ADListenerAdapter() {
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            String str;
            if (SplashAD.this.h == null) {
                GDTLogger.d("SplashADListener == null");
                return;
            }
            int type = aDEvent.getType();
            switch (type) {
                case 100:
                    Long l = (Long) aDEvent.getParam(Long.class);
                    if (l != null) {
                        SplashAD.this.h.onADLoaded(l.longValue());
                        return;
                    }
                    return;
                case 101:
                    Integer num = (Integer) aDEvent.getParam(Integer.class);
                    if (num != null) {
                        SplashAD.this.h.onNoAD(AdErrorConvertor.formatErrorCode(num.intValue()));
                        return;
                    }
                    return;
                case 102:
                    SplashAD.this.h.onADPresent();
                    return;
                case 103:
                    SplashAD.this.h.onADExposure();
                    return;
                case 104:
                    if (SplashAD.this.i == null || (str = (String) aDEvent.getParam(String.class)) == null) {
                        return;
                    }
                    SplashAD.this.i.onReward(Cgoto.m1007native("transId", str));
                    return;
                case 105:
                    SplashAD.this.h.onADClicked();
                    return;
                case 106:
                    SplashAD.this.h.onADDismissed();
                    return;
                default:
                    switch (type) {
                        case 112:
                            Long l2 = (Long) aDEvent.getParam(Long.class);
                            if (l2 != null) {
                                SplashAD.this.h.onADTick(l2.longValue());
                                return;
                            }
                            return;
                        case 113:
                            if (SplashAD.this.h instanceof SplashADZoomOutListener) {
                                ((SplashADZoomOutListener) SplashAD.this.h).onZoomOut();
                                return;
                            }
                            return;
                        case 114:
                            if (SplashAD.this.h instanceof SplashADZoomOutListener) {
                                ((SplashADZoomOutListener) SplashAD.this.h).onZoomOutPlayFinish();
                                return;
                            }
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener) {
        this(context, str, splashADListener, 0);
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener, int i) {
        this.k = false;
        this.h = splashADListener;
        this.q = i;
        a(context, str);
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener, int i, String str2) {
        this.k = false;
        this.h = splashADListener;
        this.q = i;
        a(context, str, str2);
    }

    private void a(ViewGroup viewGroup, boolean z) {
        if (viewGroup == null) {
            GDTLogger.e("传入参数有误：传入container参数为空");
            a(ErrorCode.CONSTRUCTOR_PARAM_ERROR);
            return;
        }
        T t = this.f11492a;
        if (t == 0) {
            this.m = z;
            this.g = viewGroup;
            return;
        }
        NSPVI nspvi = (NSPVI) t;
        if (z) {
            nspvi.fetchFullScreenAndShowIn(viewGroup);
        } else {
            nspvi.fetchAndShowIn(viewGroup);
        }
    }

    private void a(boolean z) {
        if (a()) {
            if (!b()) {
                this.m = z;
                this.l = true;
                return;
            }
            T t = this.f11492a;
            if (t == 0) {
                a("fetchAdInner");
                return;
            }
            NSPVI nspvi = (NSPVI) t;
            if (z) {
                nspvi.fetchFullScreenAdOnly();
            } else {
                nspvi.fetchAdOnly();
            }
        }
    }

    private void b(ViewGroup viewGroup, boolean z) {
        if (viewGroup == null) {
            GDTLogger.e("传入参数错误，container参数为空");
            a(ErrorCode.CONSTRUCTOR_PARAM_ERROR);
            return;
        }
        T t = this.f11492a;
        if (t == 0) {
            this.g = viewGroup;
            return;
        }
        NSPVI nspvi = (NSPVI) t;
        if (z) {
            nspvi.showFullScreenAd(viewGroup);
        } else {
            nspvi.showAd(viewGroup);
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public Object a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getNativeSplashAdView(context, str, str2, str3);
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i) {
        if (this.h != null) {
            this.h.onNoAD(AdErrorConvertor.formatErrorCode(i));
        }
    }

    public void fetchAdOnly() {
        a(false);
    }

    public void fetchAndShowIn(ViewGroup viewGroup) {
        a(viewGroup, false);
    }

    public void fetchFullScreenAdOnly() {
        a(true);
    }

    public void fetchFullScreenAndShowIn(ViewGroup viewGroup) {
        a(viewGroup, true);
    }

    public String getAdNetWorkName() {
        T t = this.f11492a;
        if (t != 0) {
            return ((NSPVI) t).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public Bitmap getZoomOutBitmap() {
        T t = this.f11492a;
        if (t != 0) {
            return ((NSPVI) t).getZoomOutBitmap();
        }
        a("getZoomOutBitmap");
        return null;
    }

    public void preLoad() {
        if (a()) {
            if (!b()) {
                this.k = true;
                return;
            }
            T t = this.f11492a;
            if (t != 0) {
                ((NSPVI) t).preload();
            } else {
                a("preLoad");
            }
        }
    }

    @Deprecated
    public void setAdLogoMargin(int i, int i2) {
    }

    public void setDeveloperLogo(int i) {
        T t = this.f11492a;
        if (t == 0) {
            this.n = i;
        } else {
            ((NSPVI) t).setDeveloperLogo(i);
        }
    }

    public void setDeveloperLogo(byte[] bArr) {
        T t = this.f11492a;
        if (t == 0) {
            this.o = bArr;
        } else {
            ((NSPVI) t).setDeveloperLogo(bArr);
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        T t = this.f11492a;
        if (t != 0) {
            ((NSPVI) t).setLoadAdParams(loadAdParams);
        } else {
            this.j = loadAdParams;
        }
    }

    @Deprecated
    public void setPreloadView(View view) {
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.i = aDRewardListener;
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.p = serverSideVerificationOptions;
        T t = this.f11492a;
        if (t != 0) {
            ((NSPVI) t).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void showAd(ViewGroup viewGroup) {
        b(viewGroup, false);
    }

    public void showFullScreenAd(ViewGroup viewGroup) {
        b(viewGroup, true);
    }

    public void zoomOutAnimationFinish() {
        T t = this.f11492a;
        if (t != 0) {
            ((NSPVI) t).zoomOutAnimationFinish();
        } else {
            a("zoomOutAnimationFinish");
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public void a(Object obj) {
        NSPVI nspvi = (NSPVI) obj;
        if (this.j != null) {
            nspvi.setLoadAdParams(this.j);
        }
        if (this.n != 0) {
            nspvi.setDeveloperLogo(this.n);
        }
        if (this.o != null) {
            nspvi.setDeveloperLogo(this.o);
        }
        nspvi.setFetchDelay(this.q);
        nspvi.setAdListener(new ADListenerAdapter());
        nspvi.setServerSideVerificationOptions(this.p);
        if ((this.h instanceof SplashADZoomOutListener) && ((SplashADZoomOutListener) this.h).isSupportZoomOut()) {
            nspvi.setSupportZoomOut(true);
        }
        if (this.g != null) {
            if (this.m) {
                fetchFullScreenAndShowIn(this.g);
            } else {
                fetchAndShowIn(this.g);
            }
        }
        if (this.k) {
            nspvi.preload();
            this.k = false;
        }
        if (this.l) {
            if (this.m) {
                nspvi.fetchFullScreenAdOnly();
            } else {
                nspvi.fetchAdOnly();
            }
            this.l = false;
        }
    }
}
