package com.apk;

import android.content.Context;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatCheckedTextView;
/* compiled from: SkinCompatCheckedTextView.java */
/* loaded from: classes7.dex */
public class pr0 extends AppCompatCheckedTextView implements js0 {

    /* renamed from: new  reason: not valid java name */
    public static final int[] f3732new = {16843016};

    /* renamed from: do  reason: not valid java name */
    public int f3733do;

    /* renamed from: for  reason: not valid java name */
    public mr0 f3734for;

    /* renamed from: if  reason: not valid java name */
    public ks0 f3735if;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public pr0(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            int r0 = skin.support.appcompat.R$attr.checkedTextViewStyle
            r3.<init>(r4, r5, r0)
            r1 = 0
            r3.f3733do = r1
            com.apk.mr0 r2 = new com.apk.mr0
            r2.<init>(r3)
            r3.f3734for = r2
            r2.m1752for(r5, r0)
            com.apk.ks0 r2 = com.apk.ks0.m1556else(r3)
            r3.f3735if = r2
            r2.mo1560goto(r5, r0)
            int[] r2 = com.apk.pr0.f3732new
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r2, r0, r1)
            int r5 = r4.getResourceId(r1, r1)
            r3.f3733do = r5
            r4.recycle()
            r3.m2075if()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.pr0.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f3734for;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        ks0 ks0Var = this.f3735if;
        if (ks0Var != null) {
            ks0Var.m1562new();
        }
        m2075if();
    }

    /* renamed from: if  reason: not valid java name */
    public final void m2075if() {
        int m2617do = tr0.m2617do(this.f3733do);
        this.f3733do = m2617do;
        if (m2617do != 0) {
            setCheckMarkDrawable(pq0.m2073do(getContext(), this.f3733do));
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f3734for;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckedTextView, android.widget.CheckedTextView
    public void setCheckMarkDrawable(@DrawableRes int i) {
        this.f3733do = i;
        m2075if();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f3735if;
        if (ks0Var != null) {
            ks0Var.mo1563this(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f3735if;
        if (ks0Var != null) {
            ks0Var.f2667try = i;
            ks0Var.f2663else = i2;
            ks0Var.f2661case = i3;
            ks0Var.f2666new = i4;
            ks0Var.m1559for();
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        setTextAppearance(getContext(), i);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckedTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ks0 ks0Var = this.f3735if;
        if (ks0Var != null) {
            ks0Var.m1557break(context, i);
        }
    }
}
