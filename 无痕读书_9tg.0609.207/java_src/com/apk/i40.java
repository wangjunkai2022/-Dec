package com.apk;

import android.graphics.Color;
import android.view.View;
import android.widget.TextView;
import com.apk.b40;
import com.biquge.ebook.app.app.AppContext;
/* compiled from: OnTransitionTextListener.java */
/* loaded from: classes8.dex */
public class i40 implements b40.Ctry {

    /* renamed from: case  reason: not valid java name */
    public int f2041case;

    /* renamed from: else  reason: not valid java name */
    public int f2043else;

    /* renamed from: for  reason: not valid java name */
    public j40 f2044for;

    /* renamed from: do  reason: not valid java name */
    public float f2042do = -1.0f;

    /* renamed from: if  reason: not valid java name */
    public float f2045if = -1.0f;

    /* renamed from: new  reason: not valid java name */
    public float f2046new = -1.0f;

    /* renamed from: try  reason: not valid java name */
    public boolean f2047try = false;

    /* renamed from: do  reason: not valid java name */
    public void m1180do() {
        try {
            this.f2044for = new j40(lq0.m1660do(AppContext.f6392case, tr0.m2617do(this.f2043else)), lq0.m1660do(AppContext.f6392case, tr0.m2617do(this.f2041case)), 100);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final i40 m1181for(int i, int i2) {
        this.f2041case = i;
        this.f2043else = i2;
        this.f2044for = new j40(lq0.m1660do(AppContext.f6392case, tr0.m2617do(i2)), lq0.m1660do(AppContext.f6392case, tr0.m2617do(i)), 100);
        return this;
    }

    /* renamed from: if  reason: not valid java name */
    public void m1182if(View view, int i, float f) {
        TextView textView = view instanceof TextView ? (TextView) view : null;
        j40 j40Var = this.f2044for;
        if (j40Var != null) {
            int i2 = (int) (100.0f * f);
            int[] iArr = new int[4];
            int i3 = 0;
            while (true) {
                int[] iArr2 = j40Var.f2280for;
                if (i3 >= iArr2.length) {
                    break;
                }
                int[] iArr3 = j40Var.f2281if;
                iArr[i3] = (int) (((((iArr2[i3] - iArr3[i3]) * 1.0d) / j40Var.f2279do) * i2) + iArr3[i3]);
                i3++;
            }
            textView.setTextColor(Color.argb(iArr[0], iArr[1], iArr[2], iArr[3]));
        }
        float f2 = this.f2045if;
        if (f2 <= 0.0f || this.f2042do <= 0.0f) {
            return;
        }
        if (this.f2047try) {
            textView.setTextSize(0, (this.f2046new * f) + f2);
        } else {
            textView.setTextSize((this.f2046new * f) + f2);
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final i40 m1183new(float f, float f2) {
        this.f2047try = false;
        this.f2042do = f;
        this.f2045if = f2;
        this.f2046new = f - f2;
        return this;
    }
}
