package com.apk;

import android.annotation.TargetApi;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.RequiresApi;
import skin.support.R$styleable;

/* compiled from: SkinCompatTextHelperV17.java */
@RequiresApi(17)
@TargetApi(17)
/* loaded from: classes7.dex */
public class ls0 extends ks0 {

    /* renamed from: goto  reason: not valid java name */
    public int f2901goto;

    /* renamed from: this  reason: not valid java name */
    public int f2902this;

    public ls0(TextView textView) {
        super(textView);
        this.f2901goto = 0;
        this.f2902this = 0;
    }

    @Override // com.apk.ks0
    /* renamed from: goto */
    public void mo1560goto(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f2662do.getContext().obtainStyledAttributes(attributeSet, R$styleable.SkinCompatTextHelper, i, 0);
        if (obtainStyledAttributes.hasValue(R$styleable.SkinCompatTextHelper_android_drawableStart)) {
            int resourceId = obtainStyledAttributes.getResourceId(R$styleable.SkinCompatTextHelper_android_drawableStart, 0);
            this.f2901goto = resourceId;
            this.f2901goto = tr0.m2617do(resourceId);
        }
        if (obtainStyledAttributes.hasValue(R$styleable.SkinCompatTextHelper_android_drawableEnd)) {
            int resourceId2 = obtainStyledAttributes.getResourceId(R$styleable.SkinCompatTextHelper_android_drawableEnd, 0);
            this.f2902this = resourceId2;
            this.f2902this = tr0.m2617do(resourceId2);
        }
        obtainStyledAttributes.recycle();
        super.mo1560goto(attributeSet, i);
    }

    @Override // com.apk.ks0
    /* renamed from: if */
    public void mo1561if() {
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
        Drawable m2073do5 = this.f2901goto != 0 ? pq0.m2073do(this.f2662do.getContext(), this.f2901goto) : null;
        if (m2073do5 != null) {
            m2073do = m2073do5;
        }
        Drawable m2073do6 = this.f2902this != 0 ? pq0.m2073do(this.f2662do.getContext(), this.f2902this) : null;
        if (m2073do6 != null) {
            m2073do3 = m2073do6;
        }
        if (this.f2667try == 0 && this.f2663else == 0 && this.f2661case == 0 && this.f2666new == 0 && this.f2901goto == 0 && this.f2902this == 0) {
            return;
        }
        this.f2662do.setCompoundDrawablesWithIntrinsicBounds(m2073do, m2073do2, m2073do3, m2073do4);
    }

    @Override // com.apk.ks0
    /* renamed from: this */
    public void mo1563this(@DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        this.f2901goto = i;
        this.f2663else = i2;
        this.f2902this = i3;
        this.f2666new = i4;
        mo1561if();
    }
}
