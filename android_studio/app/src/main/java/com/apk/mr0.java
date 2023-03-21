package com.apk;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import skin.support.R$styleable;

/* compiled from: SkinCompatBackgroundHelper.java */
/* loaded from: classes7.dex */
public class mr0 extends tr0 {

    /* renamed from: do  reason: not valid java name */
    public final View f3095do;

    /* renamed from: if  reason: not valid java name */
    public int f3096if = 0;

    public mr0(View view) {
        this.f3095do = view;
    }

    /* renamed from: for  reason: not valid java name */
    public void m1752for(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f3095do.getContext().obtainStyledAttributes(attributeSet, R$styleable.SkinBackgroundHelper, i, 0);
        try {
            if (obtainStyledAttributes.hasValue(R$styleable.SkinBackgroundHelper_android_background)) {
                this.f3096if = obtainStyledAttributes.getResourceId(R$styleable.SkinBackgroundHelper_android_background, 0);
            }
            obtainStyledAttributes.recycle();
            m1753if();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m1753if() {
        Drawable m2073do;
        int m2617do = tr0.m2617do(this.f3096if);
        this.f3096if = m2617do;
        if (m2617do == 0 || (m2073do = pq0.m2073do(this.f3095do.getContext(), this.f3096if)) == null) {
            return;
        }
        int paddingLeft = this.f3095do.getPaddingLeft();
        int paddingTop = this.f3095do.getPaddingTop();
        int paddingRight = this.f3095do.getPaddingRight();
        int paddingBottom = this.f3095do.getPaddingBottom();
        ViewCompat.setBackground(this.f3095do, m2073do);
        this.f3095do.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }
}
