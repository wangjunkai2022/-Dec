package com.apk;

import android.content.Context;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatCheckBox;

/* compiled from: SkinCompatCheckBox.java */
/* loaded from: classes7.dex */
public class or0 extends AppCompatCheckBox implements js0 {

    /* renamed from: do  reason: not valid java name */
    public qr0 f3489do;

    /* renamed from: for  reason: not valid java name */
    public mr0 f3490for;

    /* renamed from: if  reason: not valid java name */
    public ks0 f3491if;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public or0(android.content.Context r2, android.util.AttributeSet r3) {
        /*
            r1 = this;
            int r0 = skin.support.appcompat.R$attr.checkboxStyle
            r1.<init>(r2, r3, r0)
            com.apk.qr0 r2 = new com.apk.qr0
            r2.<init>(r1)
            r1.f3489do = r2
            r2.m2183for(r3, r0)
            com.apk.mr0 r2 = new com.apk.mr0
            r2.<init>(r1)
            r1.f3490for = r2
            r2.m1752for(r3, r0)
            com.apk.ks0 r2 = com.apk.ks0.m1556else(r1)
            r1.f3491if = r2
            r2.mo1560goto(r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.or0.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        qr0 qr0Var = this.f3489do;
        if (qr0Var != null) {
            qr0Var.m2184if();
        }
        mr0 mr0Var = this.f3490for;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        ks0 ks0Var = this.f3491if;
        if (ks0Var != null) {
            ks0Var.m1562new();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f3490for;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i) {
        super.setButtonDrawable(i);
        qr0 qr0Var = this.f3489do;
        if (qr0Var != null) {
            qr0Var.f3926if = i;
            qr0Var.m2184if();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f3491if;
        if (ks0Var != null) {
            ks0Var.mo1563this(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f3491if;
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

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ks0 ks0Var = this.f3491if;
        if (ks0Var != null) {
            ks0Var.m1557break(context, i);
        }
    }
}
