package com.hjq.toast.style;

import android.content.Context;

/* loaded from: classes8.dex */
public class ToastBlackStyle extends BaseToastStyle {
    public ToastBlackStyle(Context context) {
        super(context);
    }

    @Override // com.hjq.toast.IToastStyle
    public int getBackgroundColor() {
        return -2013265920;
    }

    @Override // com.hjq.toast.IToastStyle
    public int getCornerRadius() {
        return dp2px(8.0f);
    }

    @Override // com.hjq.toast.IToastStyle
    public int getPaddingStart() {
        return dp2px(24.0f);
    }

    @Override // com.hjq.toast.IToastStyle
    public int getPaddingTop() {
        return dp2px(16.0f);
    }

    @Override // com.hjq.toast.IToastStyle
    public int getTextColor() {
        return -285212673;
    }

    @Override // com.hjq.toast.IToastStyle
    public float getTextSize() {
        return sp2px(14.0f);
    }
}
