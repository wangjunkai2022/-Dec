package com.apk;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import skin.support.design.R$style;
import skin.support.design.R$styleable;

/* compiled from: SkinMaterialCollapsingToolbarLayout.java */
/* loaded from: classes7.dex */
public class uq0 extends CollapsingToolbarLayout implements js0 {

    /* renamed from: do  reason: not valid java name */
    public int f4959do;

    /* renamed from: for  reason: not valid java name */
    public mr0 f4960for;

    /* renamed from: if  reason: not valid java name */
    public int f4961if;

    public uq0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f4959do = 0;
        this.f4961if = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CollapsingToolbarLayout, 0, R$style.Widget_Design_CollapsingToolbar);
        this.f4959do = obtainStyledAttributes.getResourceId(R$styleable.CollapsingToolbarLayout_contentScrim, 0);
        this.f4961if = obtainStyledAttributes.getResourceId(R$styleable.CollapsingToolbarLayout_statusBarScrim, 0);
        obtainStyledAttributes.recycle();
        m2732if();
        m2731for();
        mr0 mr0Var = new mr0(this);
        this.f4960for = mr0Var;
        mr0Var.m1752for(attributeSet, 0);
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        m2732if();
        m2731for();
        mr0 mr0Var = this.f4960for;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m2731for() {
        Drawable m2073do;
        int m2617do = tr0.m2617do(this.f4961if);
        this.f4961if = m2617do;
        if (m2617do == 0 || (m2073do = pq0.m2073do(getContext(), this.f4961if)) == null) {
            return;
        }
        setStatusBarScrim(m2073do);
    }

    /* renamed from: if  reason: not valid java name */
    public final void m2732if() {
        Drawable m2073do;
        int m2617do = tr0.m2617do(this.f4959do);
        this.f4959do = m2617do;
        if (m2617do == 0 || (m2073do = pq0.m2073do(getContext(), this.f4959do)) == null) {
            return;
        }
        setContentScrim(m2073do);
    }
}
