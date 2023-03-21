package com.apk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import skin.support.design.R$attr;
import skin.support.design.R$style;
import skin.support.design.R$styleable;
/* compiled from: SkinMaterialBottomNavigationView.java */
/* loaded from: classes7.dex */
public class tq0 extends BottomNavigationView implements js0 {

    /* renamed from: do  reason: not valid java name */
    public mr0 f4757do;

    /* renamed from: for  reason: not valid java name */
    public int f4758for;

    /* renamed from: if  reason: not valid java name */
    public int f4759if;

    /* renamed from: new  reason: not valid java name */
    public int f4760new;

    /* renamed from: try  reason: not valid java name */
    public static final int[] f4756try = {-16842910};

    /* renamed from: case  reason: not valid java name */
    public static final int[] f4755case = {16842912};

    public tq0(@NonNull Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f4757do;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        m2614if();
        m2613for();
    }

    /* renamed from: for  reason: not valid java name */
    public final void m2613for() {
        int m2617do = tr0.m2617do(this.f4759if);
        this.f4759if = m2617do;
        if (m2617do != 0) {
            setItemTextColor(lq0.m1662if(getContext(), this.f4759if));
            return;
        }
        int m2617do2 = tr0.m2617do(this.f4760new);
        this.f4760new = m2617do2;
        if (m2617do2 != 0) {
            setItemTextColor(m2615new(16842808));
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final void m2614if() {
        int m2617do = tr0.m2617do(this.f4758for);
        this.f4758for = m2617do;
        if (m2617do != 0) {
            setItemIconTintList(lq0.m1662if(getContext(), this.f4758for));
            return;
        }
        int m2617do2 = tr0.m2617do(this.f4760new);
        this.f4760new = m2617do2;
        if (m2617do2 != 0) {
            setItemIconTintList(m2615new(16842808));
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final ColorStateList m2615new(int i) {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            ColorStateList m1662if = lq0.m1662if(getContext(), typedValue.resourceId);
            int m1660do = lq0.m1660do(getContext(), this.f4760new);
            int defaultColor = m1662if.getDefaultColor();
            return new ColorStateList(new int[][]{f4756try, f4755case, FrameLayout.EMPTY_STATE_SET}, new int[]{m1662if.getColorForState(f4756try, defaultColor), m1660do, defaultColor});
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f4757do;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final int m2616try() {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(R$attr.colorPrimary, typedValue, true)) {
            return typedValue.resourceId;
        }
        return 0;
    }

    public tq0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4759if = 0;
        this.f4758for = 0;
        this.f4760new = 0;
        mr0 mr0Var = new mr0(this);
        this.f4757do = mr0Var;
        mr0Var.m1752for(attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BottomNavigationView, i, R$style.Widget_Design_BottomNavigationView);
        if (obtainStyledAttributes.hasValue(R$styleable.BottomNavigationView_itemIconTint)) {
            this.f4758for = obtainStyledAttributes.getResourceId(R$styleable.BottomNavigationView_itemIconTint, 0);
        } else {
            this.f4760new = m2616try();
        }
        if (obtainStyledAttributes.hasValue(R$styleable.BottomNavigationView_itemTextColor)) {
            this.f4759if = obtainStyledAttributes.getResourceId(R$styleable.BottomNavigationView_itemTextColor, 0);
        } else {
            this.f4760new = m2616try();
        }
        obtainStyledAttributes.recycle();
        m2614if();
        m2613for();
    }
}
