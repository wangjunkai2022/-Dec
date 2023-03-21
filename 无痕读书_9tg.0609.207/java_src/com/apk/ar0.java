package com.apk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.StyleRes;
import com.google.android.material.textfield.TextInputLayout;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import skin.support.design.R$color;
import skin.support.design.R$style;
import skin.support.design.R$styleable;
/* compiled from: SkinMaterialTextInputLayout.java */
/* loaded from: classes7.dex */
public class ar0 extends TextInputLayout implements js0 {

    /* renamed from: do  reason: not valid java name */
    public mr0 f155do;

    /* renamed from: for  reason: not valid java name */
    public int f156for;

    /* renamed from: if  reason: not valid java name */
    public int f157if;

    /* renamed from: new  reason: not valid java name */
    public int f158new;

    public ar0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f157if = 0;
        this.f156for = 0;
        this.f158new = 0;
        mr0 mr0Var = new mr0(this);
        this.f155do = mr0Var;
        mr0Var.m1752for(attributeSet, 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TextInputLayout, 0, R$style.Widget_Design_TextInputLayout);
        if (obtainStyledAttributes.hasValue(R$styleable.TextInputLayout_android_textColorHint)) {
            this.f158new = obtainStyledAttributes.getResourceId(R$styleable.TextInputLayout_android_textColorHint, 0);
            m105new();
        }
        m106try(obtainStyledAttributes.getResourceId(R$styleable.TextInputLayout_errorTextAppearance, 0));
        int resourceId = obtainStyledAttributes.getResourceId(R$styleable.TextInputLayout_counterTextAppearance, 0);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(resourceId, skin.support.R$styleable.SkinTextAppearance);
            if (obtainStyledAttributes2.hasValue(skin.support.R$styleable.SkinTextAppearance_android_textColor)) {
                this.f157if = obtainStyledAttributes2.getResourceId(skin.support.R$styleable.SkinTextAppearance_android_textColor, 0);
            }
            obtainStyledAttributes2.recycle();
        }
        m104if();
        obtainStyledAttributes.getResourceId(R$styleable.TextInputLayout_passwordToggleDrawable, 0);
        obtainStyledAttributes.recycle();
    }

    private TextView getCounterView() {
        try {
            Field declaredField = TextInputLayout.class.getDeclaredField("mCounterView");
            declaredField.setAccessible(true);
            return (TextView) declaredField.get(this);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private TextView getErrorView() {
        try {
            Field declaredField = TextInputLayout.class.getDeclaredField("mErrorView");
            declaredField.setAccessible(true);
            return (TextView) declaredField.get(this);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private void setDefaultTextColor(ColorStateList colorStateList) {
        try {
            Field declaredField = TextInputLayout.class.getDeclaredField("mDefaultTextColor");
            declaredField.setAccessible(true);
            declaredField.set(this, colorStateList);
            m102else();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setFocusedTextColor(ColorStateList colorStateList) {
        try {
            Field declaredField = TextInputLayout.class.getDeclaredField("mFocusedTextColor");
            declaredField.setAccessible(true);
            declaredField.set(this, colorStateList);
            m102else();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public final void m100case() {
        try {
            Method declaredMethod = TextInputLayout.class.getDeclaredMethod("updateEditTextBackground", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.js0
    /* renamed from: do  reason: not valid java name */
    public void mo101do() {
        m103for();
        m104if();
        m105new();
        mr0 mr0Var = this.f155do;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final void m102else() {
        try {
            Method declaredMethod = TextInputLayout.class.getDeclaredMethod("updateLabelState", Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this, Boolean.FALSE);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m103for() {
        TextView errorView;
        int m2617do = tr0.m2617do(this.f156for);
        this.f156for = m2617do;
        if (m2617do == 0 || m2617do == R$color.design_error || (errorView = getErrorView()) == null) {
            return;
        }
        errorView.setTextColor(lq0.m1660do(getContext(), this.f156for));
        m100case();
    }

    /* renamed from: if  reason: not valid java name */
    public final void m104if() {
        TextView counterView;
        int m2617do = tr0.m2617do(this.f157if);
        this.f157if = m2617do;
        if (m2617do == 0 || (counterView = getCounterView()) == null) {
            return;
        }
        counterView.setTextColor(lq0.m1660do(getContext(), this.f157if));
        m100case();
    }

    /* renamed from: new  reason: not valid java name */
    public final void m105new() {
        int m2617do = tr0.m2617do(this.f158new);
        this.f158new = m2617do;
        if (m2617do != 0 && m2617do != R$color.abc_hint_foreground_material_light) {
            setFocusedTextColor(lq0.m1662if(getContext(), this.f158new));
        } else if (getEditText() != null) {
            int i = 0;
            if (getEditText() instanceof rr0) {
                i = ((rr0) getEditText()).getTextColorResId();
            } else if (getEditText() instanceof zq0) {
                i = ((zq0) getEditText()).getTextColorResId();
            }
            int m2617do2 = tr0.m2617do(i);
            if (m2617do2 != 0) {
                setFocusedTextColor(lq0.m1662if(getContext(), m2617do2));
            }
        }
    }

    @Override // com.google.android.material.textfield.TextInputLayout
    public void setCounterEnabled(boolean z) {
        super.setCounterEnabled(z);
        if (z) {
            m104if();
        }
    }

    @Override // com.google.android.material.textfield.TextInputLayout
    public void setErrorEnabled(boolean z) {
        super.setErrorEnabled(z);
        if (z) {
            m103for();
        }
    }

    @Override // com.google.android.material.textfield.TextInputLayout
    public void setErrorTextAppearance(@StyleRes int i) {
        super.setErrorTextAppearance(i);
        m106try(i);
    }

    /* renamed from: try  reason: not valid java name */
    public final void m106try(@StyleRes int i) {
        if (i != 0) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(i, skin.support.R$styleable.SkinTextAppearance);
            if (obtainStyledAttributes.hasValue(skin.support.R$styleable.SkinTextAppearance_android_textColor)) {
                this.f156for = obtainStyledAttributes.getResourceId(skin.support.R$styleable.SkinTextAppearance_android_textColor, 0);
            }
            obtainStyledAttributes.recycle();
        }
        m103for();
    }
}
