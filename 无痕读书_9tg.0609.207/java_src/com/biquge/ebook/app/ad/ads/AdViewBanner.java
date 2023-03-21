package com.biquge.ebook.app.ad.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.Cfinally;
import com.apk.Cprotected;
import com.apk.Cstrictfp;
import com.apk.a60;
import com.apk.c50;
import com.apk.i;
import com.apk.k50;
import com.apk.p60;
import com.apk.q70;
import com.apk.v;
import com.apk.w50;
import com.swl.gg.ggs.SwlAdAdBanner;
/* loaded from: classes8.dex */
public class AdViewBanner extends Cstrictfp {

    /* renamed from: break  reason: not valid java name */
    public boolean f6305break;

    /* renamed from: case  reason: not valid java name */
    public String f6306case;

    /* renamed from: catch  reason: not valid java name */
    public long f6307catch;

    /* renamed from: class  reason: not valid java name */
    public a60 f6308class;

    /* renamed from: const  reason: not valid java name */
    public SwlAdAdBanner f6309const;

    /* renamed from: else  reason: not valid java name */
    public boolean f6310else;

    /* renamed from: final  reason: not valid java name */
    public int f6311final;

    /* renamed from: goto  reason: not valid java name */
    public long f6312goto;

    /* renamed from: new  reason: not valid java name */
    public Cstrictfp.Cdo f6313new;

    /* renamed from: this  reason: not valid java name */
    public boolean f6314this;

    /* renamed from: try  reason: not valid java name */
    public Activity f6315try;

    public AdViewBanner(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f6310else = true;
        this.f6305break = true;
        setBackgroundColor(Color.parseColor("#05000000"));
    }

    /* renamed from: if  reason: not valid java name */
    public static void m3270if(AdViewBanner adViewBanner, View view) {
        ViewGroup viewGroup;
        if (adViewBanner == null) {
            throw null;
        }
        if (view != null) {
            try {
                if (adViewBanner.getChildCount() > 0) {
                    adViewBanner.removeAllViews();
                }
                if (view.getParent() != null && (viewGroup = (ViewGroup) view.getParent()) != null && viewGroup.getChildCount() > 0) {
                    viewGroup.removeAllViews();
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 17;
                adViewBanner.addView(view, layoutParams);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.apk.Cstrictfp
    /* renamed from: do */
    public void mo139do() {
        if (this.f6312goto > 0) {
            if (this.f4591for) {
                if (this.f6313new == null) {
                    this.f6313new = new Cstrictfp.Cdo(this);
                }
                this.f6313new.removeMessages(102);
                this.f6313new.sendEmptyMessageDelayed(102, this.f6312goto);
            } else if (Math.abs(System.currentTimeMillis() - this.f6307catch) < this.f6312goto) {
                return;
            } else {
                this.f6307catch = System.currentTimeMillis();
            }
        }
        if (!this.f6314this && this.f6310else) {
            this.f6310else = false;
            if (this.f6308class == null) {
                this.f6308class = new a60(this.f6315try, new Cprotected(this), this.f6306case);
            }
            a60 a60Var = this.f6308class;
            boolean z = this.f6305break;
            k50 k50Var = a60Var.f43new;
            if (k50Var != null) {
                k50Var.f2475do = z;
                p60 p60Var = k50Var.f2479try;
                if (p60Var != null) {
                    p60Var.f3589try = z;
                    w50 w50Var = p60Var.f3588case;
                    if (w50Var != null) {
                        w50Var.setThemeDayNight(z);
                    }
                }
            }
            a60 a60Var2 = this.f6308class;
            if (a60Var2 != null) {
                c50 m2110if = q70.m2109do().m2110if(a60Var2.f3593do);
                if (m2110if != null) {
                    a60Var2.m27try(m2110if.m310if(), m2110if.m309do(), m2110if.f511for, m2110if.f513new);
                }
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            }
            throw null;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3271for(Activity activity, String str) {
        this.f6315try = activity;
        this.f6306case = str;
        DisplayMetrics displayMetrics = getContext().getApplicationContext().getResources().getDisplayMetrics();
        this.f6311final = (int) (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) / 6.2f);
        this.f6312goto = Cfinally.m799goto(i.m1176if(str));
        mo139do();
    }

    /* renamed from: new  reason: not valid java name */
    public void m3272new() {
        removeAllViews();
        SwlAdAdBanner swlAdAdBanner = this.f6309const;
        if (swlAdAdBanner != null) {
            swlAdAdBanner.onDestroy();
            this.f6309const = null;
        }
        a60 a60Var = this.f6308class;
        if (a60Var != null) {
            a60Var.m26case();
            this.f6308class = null;
        }
        Cstrictfp.Cdo cdo = this.f6313new;
        if (cdo != null) {
            cdo.removeCallbacksAndMessages(null);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f6311final, 1073741824));
    }

    public void setThemeDayNight(boolean z) {
        k50 k50Var;
        this.f6305break = z;
        a60 a60Var = this.f6308class;
        if (a60Var == null || (k50Var = a60Var.f43new) == null) {
            return;
        }
        k50Var.f2475do = z;
        p60 p60Var = k50Var.f2479try;
        if (p60Var != null) {
            p60Var.f3589try = z;
            w50 w50Var = p60Var.f3588case;
            if (w50Var != null) {
                w50Var.setThemeDayNight(z);
            }
        }
    }
}
