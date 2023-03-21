package com.apk;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import skin.support.R$styleable;

/* compiled from: SkinCompatTextHelper.java */
/* loaded from: classes7.dex */
public class ks0 extends tr0 {

    /* renamed from: do  reason: not valid java name */
    public final TextView f2662do;

    /* renamed from: if  reason: not valid java name */
    public int f2665if = 0;

    /* renamed from: for  reason: not valid java name */
    public int f2664for = 0;

    /* renamed from: new  reason: not valid java name */
    public int f2666new = 0;

    /* renamed from: try  reason: not valid java name */
    public int f2667try = 0;

    /* renamed from: case  reason: not valid java name */
    public int f2661case = 0;

    /* renamed from: else  reason: not valid java name */
    public int f2663else = 0;

    public ks0(TextView textView) {
        this.f2662do = textView;
    }

    /* renamed from: else  reason: not valid java name */
    public static ks0 m1556else(TextView textView) {
        return new ls0(textView);
    }

    /* renamed from: break  reason: not valid java name */
    public void m1557break(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.SkinTextAppearance);
        if (obtainStyledAttributes.hasValue(R$styleable.SkinTextAppearance_android_textColor)) {
            this.f2665if = obtainStyledAttributes.getResourceId(R$styleable.SkinTextAppearance_android_textColor, 0);
        }
        if (obtainStyledAttributes.hasValue(R$styleable.SkinTextAppearance_android_textColorHint)) {
            this.f2664for = obtainStyledAttributes.getResourceId(R$styleable.SkinTextAppearance_android_textColorHint, 0);
        }
        obtainStyledAttributes.recycle();
        m1558case();
        m1564try();
    }

    /* renamed from: case  reason: not valid java name */
    public final void m1558case() {
        int m2617do = tr0.m2617do(this.f2665if);
        this.f2665if = m2617do;
        if (m2617do != 0) {
            try {
                this.f2662do.setTextColor(lq0.m1662if(this.f2662do.getContext(), this.f2665if));
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m1559for() {
        int m2617do = tr0.m2617do(this.f2667try);
        this.f2667try = m2617do;
        Drawable m2073do = m2617do != 0 ? pq0.m2073do(this.f2662do.getContext(), this.f2667try) : null;
        int m2617do2 = tr0.m2617do(this.f2663else);
        this.f2663else = m2617do2;
        Drawable m2073do2 = m2617do2 != 0 ? pq0.m2073do(this.f2662do.getContext(), this.f2663else) : null;
        int m2617do3 = tr0.m2617do(this.f2661case);
        this.f2661case = m2617do3;
        Drawable m2073do3 = m2617do3 != 0 ? pq0.m2073do(this.f2662do.getContext(), this.f2661case) : null;
        int m2617do4 = tr0.m2617do(this.f2666new);
        this.f2666new = m2617do4;
        Drawable m2073do4 = m2617do4 != 0 ? pq0.m2073do(this.f2662do.getContext(), this.f2666new) : null;
        if (this.f2667try == 0 && this.f2663else == 0 && this.f2661case == 0 && this.f2666new == 0) {
            return;
        }
        this.f2662do.setCompoundDrawablesWithIntrinsicBounds(m2073do, m2073do2, m2073do3, m2073do4);
    }

    /* renamed from: goto  reason: not valid java name */
    public void mo1560goto(AttributeSet attributeSet, int i) {
        Context context = this.f2662do.getContext();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SkinCompatTextHelper, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R$styleable.SkinCompatTextHelper_android_textAppearance, 0);
        if (obtainStyledAttributes.hasValue(R$styleable.SkinCompatTextHelper_android_drawableLeft)) {
            this.f2667try = obtainStyledAttributes.getResourceId(R$styleable.SkinCompatTextHelper_android_drawableLeft, 0);
        }
        if (obtainStyledAttributes.hasValue(R$styleable.SkinCompatTextHelper_android_drawableTop)) {
            this.f2663else = obtainStyledAttributes.getResourceId(R$styleable.SkinCompatTextHelper_android_drawableTop, 0);
        }
        if (obtainStyledAttributes.hasValue(R$styleable.SkinCompatTextHelper_android_drawableRight)) {
            this.f2661case = obtainStyledAttributes.getResourceId(R$styleable.SkinCompatTextHelper_android_drawableRight, 0);
        }
        if (obtainStyledAttributes.hasValue(R$styleable.SkinCompatTextHelper_android_drawableBottom)) {
            this.f2666new = obtainStyledAttributes.getResourceId(R$styleable.SkinCompatTextHelper_android_drawableBottom, 0);
        }
        obtainStyledAttributes.recycle();
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, R$styleable.SkinTextAppearance);
            if (obtainStyledAttributes2.hasValue(R$styleable.SkinTextAppearance_android_textColor)) {
                this.f2665if = obtainStyledAttributes2.getResourceId(R$styleable.SkinTextAppearance_android_textColor, 0);
            }
            if (obtainStyledAttributes2.hasValue(R$styleable.SkinTextAppearance_android_textColorHint)) {
                this.f2664for = obtainStyledAttributes2.getResourceId(R$styleable.SkinTextAppearance_android_textColorHint, 0);
            }
            obtainStyledAttributes2.recycle();
        }
        TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, R$styleable.SkinTextAppearance, i, 0);
        if (obtainStyledAttributes3.hasValue(R$styleable.SkinTextAppearance_android_textColor)) {
            this.f2665if = obtainStyledAttributes3.getResourceId(R$styleable.SkinTextAppearance_android_textColor, 0);
        }
        if (obtainStyledAttributes3.hasValue(R$styleable.SkinTextAppearance_android_textColorHint)) {
            this.f2664for = obtainStyledAttributes3.getResourceId(R$styleable.SkinTextAppearance_android_textColorHint, 0);
        }
        obtainStyledAttributes3.recycle();
        m1562new();
    }

    /* renamed from: if  reason: not valid java name */
    public abstract void mo1561if();

    /* renamed from: new  reason: not valid java name */
    public void m1562new() {
        mo1561if();
        m1558case();
        m1564try();
    }

    /* renamed from: this  reason: not valid java name */
    public abstract void mo1563this(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4);

    /* renamed from: try  reason: not valid java name */
    public final void m1564try() {
        int m2617do = tr0.m2617do(this.f2664for);
        this.f2664for = m2617do;
        if (m2617do != 0) {
            try {
                this.f2662do.setHintTextColor(lq0.m1662if(this.f2662do.getContext(), this.f2664for));
            } catch (Exception unused) {
            }
        }
    }
}
