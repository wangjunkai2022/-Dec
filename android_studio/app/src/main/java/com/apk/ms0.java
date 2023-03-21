package com.apk;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatTextView;

/* compiled from: SkinCompatTextView.java */
/* loaded from: classes7.dex */
public class ms0 extends AppCompatTextView implements js0 {

    /* renamed from: do  reason: not valid java name */
    public ks0 f3098do;

    /* renamed from: if  reason: not valid java name */
    public mr0 f3099if;

    public ms0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f3099if;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        ks0 ks0Var = this.f3098do;
        if (ks0Var != null) {
            ks0Var.m1562new();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f3099if;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f3098do;
        if (ks0Var != null) {
            ks0Var.mo1563this(i, i2, i3, i4);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f3098do;
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

    public ms0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mr0 mr0Var = new mr0(this);
        this.f3099if = mr0Var;
        mr0Var.m1752for(attributeSet, i);
        ks0 m1556else = ks0.m1556else(this);
        this.f3098do = m1556else;
        m1556else.mo1560goto(attributeSet, i);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ks0 ks0Var = this.f3098do;
        if (ks0Var != null) {
            ks0Var.m1557break(context, i);
        }
    }
}
