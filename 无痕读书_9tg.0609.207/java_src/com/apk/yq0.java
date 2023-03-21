package com.apk;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.tabs.TabLayout;
import skin.support.design.R$style;
import skin.support.design.R$styleable;
/* compiled from: SkinMaterialTabLayout.java */
/* loaded from: classes7.dex */
public class yq0 extends TabLayout implements js0 {

    /* renamed from: do  reason: not valid java name */
    public int f6052do;

    /* renamed from: for  reason: not valid java name */
    public int f6053for;

    /* renamed from: if  reason: not valid java name */
    public int f6054if;

    public yq0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f6052do = 0;
        this.f6054if = 0;
        this.f6053for = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TabLayout, 0, 0);
        this.f6052do = obtainStyledAttributes.getResourceId(R$styleable.TabLayout_tabIndicatorColor, 0);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(obtainStyledAttributes.getResourceId(R$styleable.TabLayout_tabTextAppearance, R$style.TextAppearance_Design_Tab), R$styleable.SkinTextAppearance);
        try {
            this.f6054if = obtainStyledAttributes2.getResourceId(R$styleable.SkinTextAppearance_android_textColor, 0);
            obtainStyledAttributes2.recycle();
            if (obtainStyledAttributes.hasValue(R$styleable.TabLayout_tabTextColor)) {
                this.f6054if = obtainStyledAttributes.getResourceId(R$styleable.TabLayout_tabTextColor, 0);
            }
            if (obtainStyledAttributes.hasValue(R$styleable.TabLayout_tabSelectedTextColor)) {
                this.f6053for = obtainStyledAttributes.getResourceId(R$styleable.TabLayout_tabSelectedTextColor, 0);
            }
            obtainStyledAttributes.recycle();
            mo101do();
        } catch (Throwable th) {
            obtainStyledAttributes2.recycle();
            throw th;
        }
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        int m2617do = tr0.m2617do(this.f6052do);
        this.f6052do = m2617do;
        if (m2617do != 0) {
            setSelectedTabIndicatorColor(lq0.m1660do(getContext(), this.f6052do));
        }
        int m2617do2 = tr0.m2617do(this.f6054if);
        this.f6054if = m2617do2;
        if (m2617do2 != 0) {
            setTabTextColors(lq0.m1662if(getContext(), this.f6054if));
        }
        int m2617do3 = tr0.m2617do(this.f6053for);
        this.f6053for = m2617do3;
        if (m2617do3 != 0) {
            int m1660do = lq0.m1660do(getContext(), this.f6053for);
            if (getTabTextColors() != null) {
                setTabTextColors(getTabTextColors().getDefaultColor(), m1660do);
            }
        }
    }
}
