package com.hjq.toast;

import android.app.Application;
import android.view.View;
/* loaded from: classes8.dex */
public final class CustomToast extends NormalToast {
    public int mGravity;
    public float mHorizontalMargin;
    public final ToastHelper mToastHelper;
    public float mVerticalMargin;
    public View mView;
    public int mXOffset;
    public int mYOffset;

    public CustomToast(Application application) {
        super(application);
        this.mToastHelper = new ToastHelper(this, application);
    }

    @Override // android.widget.Toast
    public void cancel() {
        this.mToastHelper.cancel();
    }

    @Override // android.widget.Toast
    public int getGravity() {
        return this.mGravity;
    }

    @Override // android.widget.Toast
    public float getHorizontalMargin() {
        return this.mHorizontalMargin;
    }

    @Override // android.widget.Toast
    public float getVerticalMargin() {
        return this.mVerticalMargin;
    }

    @Override // android.widget.Toast
    public View getView() {
        return this.mView;
    }

    @Override // android.widget.Toast
    public int getXOffset() {
        return this.mXOffset;
    }

    @Override // android.widget.Toast
    public int getYOffset() {
        return this.mYOffset;
    }

    @Override // android.widget.Toast
    public void setGravity(int i, int i2, int i3) {
        this.mGravity = i;
        this.mXOffset = i2;
        this.mYOffset = i3;
    }

    @Override // android.widget.Toast
    public void setMargin(float f, float f2) {
        this.mHorizontalMargin = f;
        this.mVerticalMargin = f2;
    }

    @Override // com.hjq.toast.NormalToast, android.widget.Toast
    public void setView(View view) {
        this.mView = view;
        setMessageView(NormalToast.findMessageView(view));
    }

    @Override // android.widget.Toast
    public void show() {
        this.mToastHelper.show();
    }
}
