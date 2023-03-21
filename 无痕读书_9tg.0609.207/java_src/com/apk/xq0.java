package com.apk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.annotation.DrawableRes;
import androidx.annotation.StyleRes;
import com.google.android.material.navigation.NavigationView;
import skin.support.design.R$style;
import skin.support.design.R$styleable;
/* compiled from: SkinMaterialNavigationView.java */
/* loaded from: classes7.dex */
public class xq0 extends NavigationView implements js0 {

    /* renamed from: case  reason: not valid java name */
    public static final int[] f5779case = {16842912};

    /* renamed from: else  reason: not valid java name */
    public static final int[] f5780else = {-16842910};

    /* renamed from: do  reason: not valid java name */
    public int f5781do;

    /* renamed from: for  reason: not valid java name */
    public int f5782for;

    /* renamed from: if  reason: not valid java name */
    public int f5783if;

    /* renamed from: new  reason: not valid java name */
    public int f5784new;

    /* renamed from: try  reason: not valid java name */
    public mr0 f5785try;

    public xq0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        int resourceId;
        this.f5781do = 0;
        this.f5783if = 0;
        this.f5782for = 0;
        this.f5784new = 0;
        mr0 mr0Var = new mr0(this);
        this.f5785try = mr0Var;
        mr0Var.m1752for(attributeSet, 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.NavigationView, 0, R$style.Widget_Design_NavigationView);
        if (obtainStyledAttributes.hasValue(R$styleable.NavigationView_itemIconTint)) {
            this.f5784new = obtainStyledAttributes.getResourceId(R$styleable.NavigationView_itemIconTint, 0);
        } else {
            this.f5782for = mq0.m1749if(context, oq0.f3488do);
        }
        if (obtainStyledAttributes.hasValue(R$styleable.NavigationView_itemTextAppearance) && (resourceId = obtainStyledAttributes.getResourceId(R$styleable.NavigationView_itemTextAppearance, 0)) != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, R$styleable.SkinTextAppearance);
            if (obtainStyledAttributes2.hasValue(R$styleable.SkinTextAppearance_android_textColor)) {
                this.f5783if = obtainStyledAttributes2.getResourceId(R$styleable.SkinTextAppearance_android_textColor, 0);
            }
            obtainStyledAttributes2.recycle();
        }
        if (obtainStyledAttributes.hasValue(R$styleable.NavigationView_itemTextColor)) {
            this.f5783if = obtainStyledAttributes.getResourceId(R$styleable.NavigationView_itemTextColor, 0);
        } else {
            this.f5782for = mq0.m1749if(context, oq0.f3488do);
        }
        if (this.f5783if == 0) {
            this.f5783if = mq0.m1748for(context);
        }
        this.f5781do = obtainStyledAttributes.getResourceId(R$styleable.NavigationView_itemBackground, 0);
        obtainStyledAttributes.recycle();
        m3044for();
        m3046new();
        m3045if();
    }

    public final ColorStateList createDefaultColorStateList(int i) {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            ColorStateList m1662if = lq0.m1662if(getContext(), typedValue.resourceId);
            int m1660do = lq0.m1660do(getContext(), this.f5782for);
            int defaultColor = m1662if.getDefaultColor();
            return new ColorStateList(new int[][]{f5780else, f5779case, FrameLayout.EMPTY_STATE_SET}, new int[]{m1662if.getColorForState(f5780else, defaultColor), m1660do, defaultColor});
        }
        return null;
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f5785try;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        m3044for();
        m3046new();
        m3045if();
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3044for() {
        int m2617do = tr0.m2617do(this.f5784new);
        this.f5784new = m2617do;
        if (m2617do != 0) {
            setItemIconTintList(lq0.m1662if(getContext(), this.f5784new));
            return;
        }
        int m2617do2 = tr0.m2617do(this.f5782for);
        this.f5782for = m2617do2;
        if (m2617do2 != 0) {
            setItemIconTintList(createDefaultColorStateList(16842808));
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3045if() {
        Drawable m2073do;
        int m2617do = tr0.m2617do(this.f5781do);
        this.f5781do = m2617do;
        if (m2617do == 0 || (m2073do = pq0.m2073do(getContext(), this.f5781do)) == null) {
            return;
        }
        setItemBackground(m2073do);
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3046new() {
        int m2617do = tr0.m2617do(this.f5783if);
        this.f5783if = m2617do;
        if (m2617do != 0) {
            setItemTextColor(lq0.m1662if(getContext(), this.f5783if));
            return;
        }
        int m2617do2 = tr0.m2617do(this.f5782for);
        this.f5782for = m2617do2;
        if (m2617do2 != 0) {
            setItemTextColor(createDefaultColorStateList(16842806));
        }
    }

    @Override // com.google.android.material.navigation.NavigationView
    public void setItemBackgroundResource(@DrawableRes int i) {
        super.setItemBackgroundResource(i);
        this.f5781do = i;
        m3045if();
    }

    @Override // com.google.android.material.navigation.NavigationView
    public void setItemTextAppearance(@StyleRes int i) {
        super.setItemTextAppearance(i);
        if (i != 0) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(i, R$styleable.SkinTextAppearance);
            if (obtainStyledAttributes.hasValue(R$styleable.SkinTextAppearance_android_textColor)) {
                this.f5783if = obtainStyledAttributes.getResourceId(R$styleable.SkinTextAppearance_android_textColor, 0);
            }
            obtainStyledAttributes.recycle();
            m3046new();
        }
    }
}
