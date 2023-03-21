package com.apk;

import android.app.Application;
import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.qq.e.ads.splash.SplashAD;
import com.swl.gg.sdk.TrAdSdk;

/* compiled from: TrSplashZoomOutManager.java */
/* loaded from: classes7.dex */
public class r50 extends p70 {

    /* renamed from: break  reason: not valid java name */
    public int f3989break;

    /* renamed from: case  reason: not valid java name */
    public int f3990case;

    /* renamed from: catch  reason: not valid java name */
    public int f3991catch;

    /* renamed from: class  reason: not valid java name */
    public int[] f3992class = new int[2];

    /* renamed from: const  reason: not valid java name */
    public int f3993const;

    /* renamed from: else  reason: not valid java name */
    public int f3994else;

    /* renamed from: final  reason: not valid java name */
    public int f3995final;

    /* renamed from: for  reason: not valid java name */
    public int f3996for;

    /* renamed from: goto  reason: not valid java name */
    public SplashAD f3997goto;

    /* renamed from: if  reason: not valid java name */
    public int f3998if;

    /* renamed from: new  reason: not valid java name */
    public int f3999new;

    /* renamed from: this  reason: not valid java name */
    public View f4000this;

    /* renamed from: try  reason: not valid java name */
    public int f4001try;

    /* compiled from: TrSplashZoomOutManager.java */
    /* renamed from: com.apk.r50$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cdo {
    }

    /* compiled from: TrSplashZoomOutManager.java */
    /* renamed from: com.apk.r50$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {

        /* renamed from: do  reason: not valid java name */
        public static r50 f4002do = new r50(null);
    }

    public r50(s50 s50Var) {
        Application app = TrAdSdk.getApp();
        int round = Math.round(Math.min(app.getApplicationContext().getResources().getDisplayMetrics().heightPixels, app.getApplicationContext().getResources().getDisplayMetrics().widthPixels) * 0.3f);
        this.f3998if = round;
        this.f3996for = Math.round((round * 16) / 9);
        this.f3999new = m2245try(app, 6);
        this.f4001try = m2245try(app, 100);
        this.f3990case = 1;
        this.f3994else = 500;
    }

    /* renamed from: case  reason: not valid java name */
    public static void m2244case(View view) {
        if (view != null) {
            try {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static int m2245try(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getApplicationContext().getResources().getDisplayMetrics());
    }
}
