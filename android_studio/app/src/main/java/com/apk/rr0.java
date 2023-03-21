package com.apk;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatEditText;

/* compiled from: SkinCompatEditText.java */
/* loaded from: classes7.dex */
public class rr0 extends AppCompatEditText implements js0 {

    /* renamed from: do  reason: not valid java name */
    public ks0 f4193do;

    /* renamed from: if  reason: not valid java name */
    public mr0 f4194if;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public rr0(android.content.Context r2, android.util.AttributeSet r3) {
        /*
            r1 = this;
            int r0 = androidx.appcompat.R.attr.editTextStyle
            r1.<init>(r2, r3, r0)
            com.apk.mr0 r2 = new com.apk.mr0
            r2.<init>(r1)
            r1.f4194if = r2
            r2.m1752for(r3, r0)
            com.apk.ks0 r2 = com.apk.ks0.m1556else(r1)
            r1.f4193do = r2
            r2.mo1560goto(r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.rr0.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f4194if;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        ks0 ks0Var = this.f4193do;
        if (ks0Var != null) {
            ks0Var.m1562new();
        }
    }

    public int getTextColorResId() {
        ks0 ks0Var = this.f4193do;
        if (ks0Var != null) {
            return ks0Var.f2665if;
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f4194if;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f4193do;
        if (ks0Var != null) {
            ks0Var.mo1563this(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f4193do;
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

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ks0 ks0Var = this.f4193do;
        if (ks0Var != null) {
            ks0Var.m1557break(context, i);
        }
    }

    public rr0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mr0 mr0Var = new mr0(this);
        this.f4194if = mr0Var;
        mr0Var.m1752for(attributeSet, i);
        ks0 m1556else = ks0.m1556else(this);
        this.f4193do = m1556else;
        m1556else.mo1560goto(attributeSet, i);
    }
}
