package com.apk;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatImageView;
/* compiled from: SkinCompatImageView.java */
/* loaded from: classes7.dex */
public class wr0 extends AppCompatImageView implements js0 {

    /* renamed from: do  reason: not valid java name */
    public mr0 f5387do;

    /* renamed from: if  reason: not valid java name */
    public vr0 f5388if;

    public wr0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        mr0 mr0Var = new mr0(this);
        this.f5387do = mr0Var;
        mr0Var.m1752for(attributeSet, 0);
        vr0 vr0Var = new vr0(this);
        this.f5388if = vr0Var;
        vr0Var.m2833for(attributeSet, 0);
    }

    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f5387do;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        vr0 vr0Var = this.f5388if;
        if (vr0Var != null) {
            vr0Var.m2834if();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f5387do;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        vr0 vr0Var = this.f5388if;
        if (vr0Var != null) {
            vr0Var.f5198if = i;
            vr0Var.f5197for = 0;
            vr0Var.m2834if();
        }
    }
}
