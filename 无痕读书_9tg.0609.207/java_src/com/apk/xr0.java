package com.apk;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
/* compiled from: SkinCompatLinearLayout.java */
/* loaded from: classes7.dex */
public class xr0 extends LinearLayout implements js0 {

    /* renamed from: do  reason: not valid java name */
    public mr0 f5787do;

    public xr0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        mr0 mr0Var = new mr0(this);
        this.f5787do = mr0Var;
        mr0Var.m1752for(attributeSet, 0);
    }

    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f5787do;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f5787do;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    public xr0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mr0 mr0Var = new mr0(this);
        this.f5787do = mr0Var;
        mr0Var.m1752for(attributeSet, i);
    }
}
