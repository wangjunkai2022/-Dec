package com.apk;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;

/* compiled from: SkinCompatMultiAutoCompleteTextView.java */
/* loaded from: classes7.dex */
public class yr0 extends AppCompatMultiAutoCompleteTextView implements js0 {

    /* renamed from: new  reason: not valid java name */
    public static final int[] f6057new = {16843126};

    /* renamed from: do  reason: not valid java name */
    public int f6058do;

    /* renamed from: for  reason: not valid java name */
    public mr0 f6059for;

    /* renamed from: if  reason: not valid java name */
    public ks0 f6060if;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public yr0(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            int r0 = skin.support.appcompat.R$attr.editTextStyle
            r3.<init>(r4, r5, r0)
            r1 = 0
            r3.f6058do = r1
            int[] r2 = com.apk.yr0.f6057new
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r2, r0, r1)
            boolean r2 = r4.hasValue(r1)
            if (r2 == 0) goto L1a
            int r1 = r4.getResourceId(r1, r1)
            r3.f6058do = r1
        L1a:
            r4.recycle()
            r3.m3113if()
            com.apk.mr0 r4 = new com.apk.mr0
            r4.<init>(r3)
            r3.f6059for = r4
            r4.m1752for(r5, r0)
            com.apk.ks0 r4 = com.apk.ks0.m1556else(r3)
            r3.f6060if = r4
            r4.mo1560goto(r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.yr0.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f6059for;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        ks0 ks0Var = this.f6060if;
        if (ks0Var != null) {
            ks0Var.m1562new();
        }
        m3113if();
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3113if() {
        Drawable m2073do;
        int m2617do = tr0.m2617do(this.f6058do);
        this.f6058do = m2617do;
        if (m2617do == 0 || (m2073do = pq0.m2073do(getContext(), this.f6058do)) == null) {
            return;
        }
        setDropDownBackgroundDrawable(m2073do);
    }

    @Override // androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f6059for;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f6060if;
        if (ks0Var != null) {
            ks0Var.mo1563this(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        ks0 ks0Var = this.f6060if;
        if (ks0Var != null) {
            ks0Var.f2667try = i;
            ks0Var.f2663else = i2;
            ks0Var.f2661case = i3;
            ks0Var.f2666new = i4;
            ks0Var.m1559for();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView, android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(@DrawableRes int i) {
        super.setDropDownBackgroundResource(i);
        this.f6058do = i;
        m3113if();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        setTextAppearance(getContext(), i);
    }

    @Override // androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ks0 ks0Var = this.f6060if;
        if (ks0Var != null) {
            ks0Var.m1557break(context, i);
        }
    }
}
