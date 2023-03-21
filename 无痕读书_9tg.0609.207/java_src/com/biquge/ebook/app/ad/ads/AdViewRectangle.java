package com.biquge.ebook.app.ad.ads;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.Cfinally;
import com.apk.Cimplements;
import com.apk.Cstrictfp;
import com.apk.c50;
import com.apk.d1;
import com.apk.f60;
import com.apk.i;
import com.apk.q70;
import com.apk.v;
import com.swl.gg.ggs.SwlAdAdRectangle;
/* loaded from: classes8.dex */
public class AdViewRectangle extends Cstrictfp {

    /* renamed from: break  reason: not valid java name */
    public boolean f6316break;

    /* renamed from: case  reason: not valid java name */
    public String f6317case;

    /* renamed from: catch  reason: not valid java name */
    public d1 f6318catch;

    /* renamed from: class  reason: not valid java name */
    public long f6319class;

    /* renamed from: const  reason: not valid java name */
    public f60 f6320const;

    /* renamed from: else  reason: not valid java name */
    public boolean f6321else;

    /* renamed from: final  reason: not valid java name */
    public SwlAdAdRectangle f6322final;

    /* renamed from: goto  reason: not valid java name */
    public long f6323goto;

    /* renamed from: new  reason: not valid java name */
    public Cstrictfp.Cdo f6324new;

    /* renamed from: super  reason: not valid java name */
    public int f6325super;

    /* renamed from: this  reason: not valid java name */
    public boolean f6326this;

    /* renamed from: try  reason: not valid java name */
    public Activity f6327try;

    public AdViewRectangle(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f6321else = true;
    }

    /* renamed from: if  reason: not valid java name */
    public static void m3273if(AdViewRectangle adViewRectangle, View view) {
        ViewGroup viewGroup;
        if (adViewRectangle != null) {
            if (view != null) {
                try {
                    if (view.getParent() != null && (viewGroup = (ViewGroup) view.getParent()) != null && viewGroup.getChildCount() > 0) {
                        viewGroup.removeAllViews();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            if (adViewRectangle.getChildCount() > 0) {
                adViewRectangle.removeAllViews();
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 17;
            adViewRectangle.addView(view, layoutParams);
            if (adViewRectangle.f6318catch != null && adViewRectangle.f6318catch == null) {
                throw null;
            }
            return;
        }
        throw null;
    }

    @Override // com.apk.Cstrictfp
    /* renamed from: do */
    public void mo139do() {
        if (this.f6323goto > 0) {
            if (this.f4591for) {
                if (this.f6324new == null) {
                    this.f6324new = new Cstrictfp.Cdo(this);
                }
                this.f6324new.removeMessages(102);
                this.f6324new.sendEmptyMessageDelayed(102, this.f6323goto);
            } else if (Math.abs(System.currentTimeMillis() - this.f6319class) < this.f6323goto) {
                return;
            } else {
                this.f6319class = System.currentTimeMillis();
            }
        }
        if (!this.f6316break && this.f6321else) {
            if (this.f6326this && getChildCount() > 0) {
                removeAllViews();
            }
            this.f6321else = false;
            if (this.f6320const == null) {
                f60 f60Var = new f60(this.f6327try, new Cimplements(this), this.f6317case);
                this.f6320const = f60Var;
                f60Var.f249if = this.f4590do;
                f60Var.f248for = this.f4592if;
            }
            f60 f60Var2 = this.f6320const;
            if (f60Var2 != null) {
                c50 m2110if = q70.m2109do().m2110if(f60Var2.f3593do);
                if (m2110if != null) {
                    f60Var2.m750try(m2110if.m310if(), m2110if.m309do(), m2110if.f511for, m2110if.f513new);
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
    public void m3274for(Activity activity, d1 d1Var, String str) {
        this.f6327try = activity;
        this.f6317case = str;
        this.f6318catch = d1Var;
        this.f6323goto = Cfinally.m799goto(i.m1176if(str));
        mo139do();
    }

    /* renamed from: new  reason: not valid java name */
    public void m3275new() {
        setVisibility(8);
        removeAllViews();
        Cstrictfp.Cdo cdo = this.f6324new;
        if (cdo != null) {
            cdo.removeCallbacksAndMessages(null);
        }
        SwlAdAdRectangle swlAdAdRectangle = this.f6322final;
        if (swlAdAdRectangle != null) {
            swlAdAdRectangle.onDestroy();
            this.f6322final = null;
        }
        f60 f60Var = this.f6320const;
        if (f60Var != null) {
            if (f60Var.f1236case != null) {
                f60Var.f1236case = null;
            }
            this.f6322final = null;
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i2 > this.f6325super) {
            this.f6325super = i2;
            setMinimumHeight(i2);
        }
    }

    public void setIntervalTime(long j) {
        this.f6323goto = j;
    }

    public void setMove(boolean z) {
        try {
            if (z) {
                if (getVisibility() != 4) {
                    setVisibility(4);
                }
            } else if (getVisibility() != 0) {
                setVisibility(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
