package com.apk;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.apk.n60;
import com.apk.r50;
import com.qq.e.ads.splash.SplashAD;
import com.qq.e.ads.splash.SplashADZoomOutListener;
import com.qq.e.comm.util.AdError;

/* compiled from: GdtProviderSplash.java */
/* loaded from: classes7.dex */
public class o70 extends f70 {

    /* renamed from: break  reason: not valid java name */
    public long f3370break;

    /* renamed from: case  reason: not valid java name */
    public boolean f3371case;

    /* renamed from: else  reason: not valid java name */
    public Activity f3372else;

    /* renamed from: goto  reason: not valid java name */
    public ViewGroup f3373goto;

    /* renamed from: this  reason: not valid java name */
    public a70 f3374this;

    /* renamed from: try  reason: not valid java name */
    public SplashAD f3375try;

    /* compiled from: GdtProviderSplash.java */
    /* renamed from: com.apk.o70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements SplashADZoomOutListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f3376do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ a70 f3378if;

        public Cdo(String str, a70 a70Var) {
            this.f3376do = str;
            this.f3378if = a70Var;
        }

        @Override // com.qq.e.ads.splash.SplashADZoomOutListener
        public boolean isSupportZoomOut() {
            return true;
        }

        @Override // com.qq.e.ads.splash.SplashADListener
        public void onADClicked() {
            o70 o70Var = o70.this;
            if (o70Var.f1242for) {
                return;
            }
            o70Var.m546class(this.f3376do, this.f3378if);
        }

        @Override // com.qq.e.ads.splash.SplashADListener
        public void onADDismissed() {
            o70 o70Var = o70.this;
            if (o70Var.f1242for) {
                return;
            }
            o70.k(o70Var, this.f3376do);
        }

        @Override // com.qq.e.ads.splash.SplashADListener
        public void onADExposure() {
            o70 o70Var = o70.this;
            if (o70Var.f1242for) {
                return;
            }
            o70Var.m576throws(this.f3376do, this.f3378if);
        }

        @Override // com.qq.e.ads.splash.SplashADListener
        public void onADLoaded(long j) {
            o70 o70Var = o70.this;
            if (o70Var.f1242for) {
                return;
            }
            o70Var.f3370break = j;
            o70Var.f();
            o70.this.m564package(this.f3376do, this.f3378if);
        }

        @Override // com.qq.e.ads.splash.SplashADListener
        public void onADPresent() {
            boolean z = o70.this.f1242for;
        }

        @Override // com.qq.e.ads.splash.SplashADListener
        public void onADTick(long j) {
        }

        @Override // com.qq.e.ads.splash.SplashADListener
        public void onNoAD(AdError adError) {
            o70 o70Var = o70.this;
            if (o70Var.f1242for) {
                return;
            }
            o70Var.f();
            o70.this.m578try(adError.getErrorCode(), adError.getErrorMsg(), this.f3376do, this.f3378if);
        }

        @Override // com.qq.e.ads.splash.SplashADZoomOutListener
        public void onZoomOut() {
            o70 o70Var = o70.this;
            if (o70Var.f1242for) {
                return;
            }
            o70Var.f3371case = true;
            o70.k(o70Var, this.f3376do);
        }

        @Override // com.qq.e.ads.splash.SplashADZoomOutListener
        public void onZoomOutPlayFinish() {
        }
    }

    public static void k(o70 o70Var, String str) {
        y60 y60Var;
        if (o70Var.f3371case) {
            r50 r50Var = r50.Cif.f4002do;
            SplashAD splashAD = o70Var.f3375try;
            View childAt = o70Var.f3373goto.getChildAt(0);
            View decorView = o70Var.f3372else.getWindow().getDecorView();
            r50Var.f3997goto = splashAD;
            r50Var.f4000this = childAt;
            if (childAt != null) {
                childAt.getLocationOnScreen(r50Var.f3992class);
                r50Var.f3989break = childAt.getWidth();
                r50Var.f3991catch = childAt.getHeight();
            }
            if (decorView != null) {
                r50Var.f3993const = decorView.getWidth();
                r50Var.f3995final = decorView.getHeight();
            }
            a70 a70Var = o70Var.f3374this;
            if (a70Var != null && (y60Var = e60.this.f1013for) != null) {
                y60Var.onZoomOut();
            }
        }
        o70Var.m562native(str, o70Var.f3374this);
    }

    public final void j(Activity activity, String str, String str2, ViewGroup viewGroup, a70 a70Var, boolean z) {
        this.f3372else = activity;
        this.f3373goto = viewGroup;
        this.f3374this = a70Var;
        h(str, 6000L, false, a70Var);
        m542abstract(str);
        SplashAD splashAD = new SplashAD(activity, str2, new Cdo(str, a70Var), n60.Cdo.f3195if);
        this.f3375try = splashAD;
        if (z) {
            ViewGroup viewGroup2 = this.f3373goto;
            if (viewGroup2 != null) {
                if (n60.Cdo.f3193do) {
                    splashAD.fetchFullScreenAndShowIn(viewGroup2);
                } else {
                    splashAD.fetchAndShowIn(viewGroup2);
                }
            } else if (n60.Cdo.f3193do) {
                splashAD.fetchFullScreenAdOnly();
            } else {
                splashAD.fetchAdOnly();
            }
        } else if (n60.Cdo.f3193do) {
            splashAD.fetchFullScreenAndShowIn(this.f3373goto);
        } else {
            splashAD.fetchAndShowIn(this.f3373goto);
        }
    }
}
