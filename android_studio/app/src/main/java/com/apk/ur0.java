package com.apk;

import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatImageButton;

/* compiled from: SkinCompatImageButton.java */
/* loaded from: classes7.dex */
public class ur0 extends AppCompatImageButton implements js0 {

    /* renamed from: do  reason: not valid java name */
    public mr0 f4963do;

    /* renamed from: if  reason: not valid java name */
    public vr0 f4964if;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ur0(android.content.Context r2, android.util.AttributeSet r3) {
        /*
            r1 = this;
            int r0 = androidx.appcompat.R.attr.imageButtonStyle
            r1.<init>(r2, r3, r0)
            com.apk.mr0 r2 = new com.apk.mr0
            r2.<init>(r1)
            r1.f4963do = r2
            r2.m1752for(r3, r0)
            com.apk.vr0 r2 = new com.apk.vr0
            r2.<init>(r1)
            r1.f4964if = r2
            r2.m2833for(r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ur0.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f4963do;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        vr0 vr0Var = this.f4964if;
        if (vr0Var != null) {
            vr0Var.m2834if();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f4963do;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageButton, android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        vr0 vr0Var = this.f4964if;
        if (vr0Var != null) {
            vr0Var.f5198if = i;
            vr0Var.f5197for = 0;
            vr0Var.m2834if();
        }
    }
}
