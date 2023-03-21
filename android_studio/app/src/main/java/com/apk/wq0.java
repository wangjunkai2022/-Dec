package com.apk;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import skin.support.design.R$style;
import skin.support.design.R$styleable;

/* compiled from: SkinMaterialFloatingActionButton.java */
/* loaded from: classes7.dex */
public class wq0 extends FloatingActionButton implements js0 {

    /* renamed from: do  reason: not valid java name */
    public int f5378do;

    /* renamed from: for  reason: not valid java name */
    public vr0 f5379for;

    /* renamed from: if  reason: not valid java name */
    public int f5380if;

    public wq0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f5378do = 0;
        this.f5380if = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionButton, 0, R$style.Widget_Design_FloatingActionButton);
        this.f5380if = obtainStyledAttributes.getResourceId(R$styleable.FloatingActionButton_backgroundTint, 0);
        this.f5378do = obtainStyledAttributes.getResourceId(R$styleable.FloatingActionButton_rippleColor, 0);
        obtainStyledAttributes.recycle();
        m2937if();
        m2936for();
        vr0 vr0Var = new vr0(this);
        this.f5379for = vr0Var;
        vr0Var.m2833for(attributeSet, 0);
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        m2937if();
        m2936for();
        vr0 vr0Var = this.f5379for;
        if (vr0Var != null) {
            vr0Var.m2834if();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m2936for() {
        int m2617do = tr0.m2617do(this.f5378do);
        this.f5378do = m2617do;
        if (m2617do != 0) {
            setRippleColor(lq0.m1660do(getContext(), this.f5378do));
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final void m2937if() {
        int m2617do = tr0.m2617do(this.f5380if);
        this.f5380if = m2617do;
        if (m2617do != 0) {
            setBackgroundTintList(lq0.m1662if(getContext(), this.f5380if));
        }
    }
}
