package com.apk;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;
import androidx.annotation.DrawableRes;
/* compiled from: SkinCompatScrollView.java */
/* loaded from: classes7.dex */
public class fs0 extends ScrollView implements js0 {

    /* renamed from: do  reason: not valid java name */
    public mr0 f1464do;

    public fs0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        mr0 mr0Var = new mr0(this);
        this.f1464do = mr0Var;
        mr0Var.m1752for(attributeSet, 0);
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f1464do;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f1464do;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }
}
