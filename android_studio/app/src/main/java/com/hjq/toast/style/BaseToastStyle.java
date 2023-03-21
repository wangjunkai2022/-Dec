package com.hjq.toast.style;

import android.content.Context;
import android.util.TypedValue;
import com.hjq.toast.IToastStyle;

/* loaded from: classes8.dex */
public abstract class BaseToastStyle implements IToastStyle {
    public Context mContext;

    public BaseToastStyle(Context context) {
        this.mContext = context;
    }

    public int dp2px(float f) {
        return (int) TypedValue.applyDimension(1, f, this.mContext.getResources().getDisplayMetrics());
    }

    @Override // com.hjq.toast.IToastStyle
    public int getGravity() {
        return 17;
    }

    @Override // com.hjq.toast.IToastStyle
    public int getMaxLines() {
        return 5;
    }

    @Override // com.hjq.toast.IToastStyle
    public int getPaddingBottom() {
        return getPaddingTop();
    }

    @Override // com.hjq.toast.IToastStyle
    public int getPaddingEnd() {
        return getPaddingStart();
    }

    @Override // com.hjq.toast.IToastStyle
    public int getXOffset() {
        return 0;
    }

    @Override // com.hjq.toast.IToastStyle
    public int getYOffset() {
        return 0;
    }

    @Override // com.hjq.toast.IToastStyle
    public int getZ() {
        return 30;
    }

    public int sp2px(float f) {
        return (int) TypedValue.applyDimension(2, f, this.mContext.getResources().getDisplayMetrics());
    }
}
