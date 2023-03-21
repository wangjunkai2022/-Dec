package com.apk;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.core.widget.CompoundButtonCompat;
import skin.support.appcompat.R$styleable;
/* compiled from: SkinCompatCompoundButtonHelper.java */
/* loaded from: classes7.dex */
public class qr0 extends tr0 {

    /* renamed from: do  reason: not valid java name */
    public final CompoundButton f3924do;

    /* renamed from: if  reason: not valid java name */
    public int f3926if = 0;

    /* renamed from: for  reason: not valid java name */
    public int f3925for = 0;

    public qr0(CompoundButton compoundButton) {
        this.f3924do = compoundButton;
    }

    /* renamed from: for  reason: not valid java name */
    public void m2183for(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f3924do.getContext().obtainStyledAttributes(attributeSet, R$styleable.CompoundButton, i, 0);
        try {
            if (obtainStyledAttributes.hasValue(R$styleable.CompoundButton_android_button)) {
                this.f3926if = obtainStyledAttributes.getResourceId(R$styleable.CompoundButton_android_button, 0);
            }
            if (obtainStyledAttributes.hasValue(R$styleable.CompoundButton_buttonTint)) {
                this.f3925for = obtainStyledAttributes.getResourceId(R$styleable.CompoundButton_buttonTint, 0);
            }
            obtainStyledAttributes.recycle();
            m2184if();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m2184if() {
        int m2617do = tr0.m2617do(this.f3926if);
        this.f3926if = m2617do;
        if (m2617do != 0) {
            CompoundButton compoundButton = this.f3924do;
            compoundButton.setButtonDrawable(pq0.m2073do(compoundButton.getContext(), this.f3926if));
        }
        int m2617do2 = tr0.m2617do(this.f3925for);
        this.f3925for = m2617do2;
        if (m2617do2 != 0) {
            CompoundButton compoundButton2 = this.f3924do;
            CompoundButtonCompat.setButtonTintList(compoundButton2, lq0.m1662if(compoundButton2.getContext(), this.f3925for));
        }
    }
}
