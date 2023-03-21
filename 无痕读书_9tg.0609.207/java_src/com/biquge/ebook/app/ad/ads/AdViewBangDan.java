package com.biquge.ebook.app.ad.ads;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.Cfinally;
import com.apk.Cstrictfp;
import com.apk.Cvolatile;
import com.apk.c50;
import com.apk.i;
import com.apk.q70;
import com.apk.v;
import com.apk.z50;
import com.swl.gg.ggs.SwlAdAdBangDan;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class AdViewBangDan extends Cstrictfp {

    /* renamed from: break  reason: not valid java name */
    public boolean f6294break;

    /* renamed from: case  reason: not valid java name */
    public String f6295case;

    /* renamed from: catch  reason: not valid java name */
    public long f6296catch;

    /* renamed from: class  reason: not valid java name */
    public z50 f6297class;

    /* renamed from: const  reason: not valid java name */
    public SwlAdAdBangDan f6298const;

    /* renamed from: else  reason: not valid java name */
    public boolean f6299else;

    /* renamed from: goto  reason: not valid java name */
    public boolean f6300goto;

    /* renamed from: new  reason: not valid java name */
    public Cstrictfp.Cdo f6301new;

    /* renamed from: this  reason: not valid java name */
    public long f6302this;

    /* renamed from: try  reason: not valid java name */
    public Activity f6303try;

    /* renamed from: com.biquge.ebook.app.ad.ads.AdViewBangDan$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ViewTreeObserver.OnGlobalLayoutListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            AdViewBangDan.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            AdViewBangDan.this.mo139do();
        }
    }

    public AdViewBangDan(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f6299else = true;
        setVisibility(8);
    }

    /* renamed from: if  reason: not valid java name */
    public static void m3266if(AdViewBangDan adViewBangDan, View view) {
        ViewGroup viewGroup;
        if (adViewBangDan != null) {
            try {
                if (adViewBangDan.getChildCount() > 0) {
                    adViewBangDan.removeAllViews();
                }
                if (view != null && view.getParent() != null && (viewGroup = (ViewGroup) view.getParent()) != null && viewGroup.getChildCount() > 0) {
                    viewGroup.removeAllViews();
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                layoutParams.gravity = 17;
                adViewBangDan.addView(view, layoutParams);
                if (!adViewBangDan.f6300goto || adViewBangDan.getVisibility() == 0) {
                    return;
                }
                adViewBangDan.setVisibility(0);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.Cstrictfp
    /* renamed from: do */
    public void mo139do() {
        if (this.f6302this > 0) {
            if (this.f4591for) {
                if (this.f6301new == null) {
                    this.f6301new = new Cstrictfp.Cdo(this);
                }
                this.f6301new.removeMessages(102);
                this.f6301new.sendEmptyMessageDelayed(102, this.f6302this);
            } else if (Math.abs(System.currentTimeMillis() - this.f6296catch) < this.f6302this) {
                return;
            } else {
                this.f6296catch = System.currentTimeMillis();
            }
        }
        if (!this.f6294break && this.f6299else) {
            this.f6299else = false;
            if (this.f6297class == null) {
                this.f6297class = new z50(this.f6303try, new Cvolatile(this), this.f6295case);
            }
            z50 z50Var = this.f6297class;
            if (z50Var != null) {
                c50 m2110if = q70.m2109do().m2110if(z50Var.f3593do);
                if (m2110if != null) {
                    z50Var.m3147try(m2110if.m310if(), m2110if.m309do(), m2110if.f511for, m2110if.f513new);
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
    public boolean m3267for() {
        return this.f6303try != null;
    }

    /* renamed from: new  reason: not valid java name */
    public void m3268new(Activity activity, String str) {
        if (!this.f6300goto) {
            setVisibility(0);
        }
        this.f6303try = activity;
        this.f6295case = str;
        this.f6302this = Cfinally.m799goto(i.m1176if(str));
        getViewTreeObserver().addOnGlobalLayoutListener(new Cdo());
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getResources().getDimensionPixelSize(R.dimen.ad_bangdan_list_height), 1073741824));
    }

    public void setLoadSuccessVisible(boolean z) {
        this.f6300goto = z;
    }

    /* renamed from: try  reason: not valid java name */
    public void m3269try() {
        setVisibility(8);
        removeAllViews();
        Cstrictfp.Cdo cdo = this.f6301new;
        if (cdo != null) {
            cdo.removeCallbacksAndMessages(null);
        }
        z50 z50Var = this.f6297class;
        if (z50Var != null) {
            z50Var.m3146case();
            this.f6297class = null;
        }
        SwlAdAdBangDan swlAdAdBangDan = this.f6298const;
        if (swlAdAdBangDan != null) {
            swlAdAdBangDan.onDestroy();
            this.f6298const = null;
        }
    }
}
