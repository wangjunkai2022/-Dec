package com.apk;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RadioGroup;
/* compiled from: SkinCompatRadioGroup.java */
/* loaded from: classes7.dex */
public class cs0 extends RadioGroup implements js0 {

    /* renamed from: do  reason: not valid java name */
    public mr0 f751do;

    public cs0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mr0 mr0Var = new mr0(this);
        this.f751do = mr0Var;
        mr0Var.m1752for(attributeSet, 0);
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f751do;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f751do;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }
}
