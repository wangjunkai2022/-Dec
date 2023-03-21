package com.apk;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;

/* compiled from: SkinCompatAutoCompleteTextView.java */
/* loaded from: classes7.dex */
public class lr0 extends AppCompatAutoCompleteTextView implements js0 {

    /* renamed from: new  reason: not valid java name */
    public static final int[] f2886new = {16843126};

    /* renamed from: do  reason: not valid java name */
    public int f2887do;

    /* renamed from: for  reason: not valid java name */
    public mr0 f2888for;

    /* renamed from: if  reason: not valid java name */
    public ks0 f2889if;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public lr0(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            int r0 = skin.support.appcompat.R$attr.autoCompleteTextViewStyle
            r3.<init>(r4, r5, r0)
            r1 = 0
            r3.f2887do = r1
            int[] r2 = com.apk.lr0.f2886new
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r2, r0, r1)
            boolean r2 = r4.hasValue(r1)
            if (r2 == 0) goto L1a
            int r1 = r4.getResourceId(r1, r1)
            r3.f2887do = r1
        L1a:
            r4.recycle()
            r3.m1667if()
            com.apk.mr0 r4 = new com.apk.mr0
            r4.<init>(r3)
            r3.f2888for = r4
            r4.m1752for(r5, r0)
            com.apk.ks0 r4 = com.apk.ks0.m1556else(r3)
            r3.f2889if = r4
            r4.mo1560goto(r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.lr0.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f2888for;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        ks0 ks0Var = this.f2889if;
        if (ks0Var != null) {
            ks0Var.m1562new();
        }
        m1667if();
    }

    /* renamed from: if  reason: not valid java name */
    public final void m1667if() {
        Drawable m2073do;
        int m2617do = tr0.m2617do(this.f2887do);
        this.f2887do = m2617do;
        if (m2617do == 0 || (m2073do = pq0.m2073do(getContext(), this.f2887do)) == null) {
            return;
        }
        setDropDownBackgroundDrawable(m2073do);
    }

    @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f2888for;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f2889if;
        if (ks0Var != null) {
            ks0Var.mo1563this(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f2889if;
        if (ks0Var != null) {
            ks0Var.f2667try = i;
            ks0Var.f2663else = i2;
            ks0Var.f2661case = i3;
            ks0Var.f2666new = i4;
            ks0Var.m1559for();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(@DrawableRes int i) {
        super.setDropDownBackgroundResource(i);
        this.f2887do = i;
        m1667if();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        setTextAppearance(getContext(), i);
    }

    @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ks0 ks0Var = this.f2889if;
        if (ks0Var != null) {
            ks0Var.m1557break(context, i);
        }
    }
}
