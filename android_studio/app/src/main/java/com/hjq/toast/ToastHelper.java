package com.hjq.toast;

import android.app.Activity;
import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.WindowManager;
import android.widget.Toast;
import androidx.recyclerview.widget.ItemTouchHelper;

/* loaded from: classes8.dex */
public final class ToastHelper extends Handler {
    public final String mPackageName;
    public boolean mShow;
    public final Toast mToast;
    public final WindowHelper mWindowHelper;

    public ToastHelper(Toast toast, Application application) {
        super(Looper.getMainLooper());
        this.mToast = toast;
        this.mPackageName = application.getPackageName();
        this.mWindowHelper = WindowHelper.register(this, application);
    }

    public void cancel() {
        WindowManager windowManager;
        removeMessages(hashCode());
        if (isShow()) {
            try {
                Activity topActivity = this.mWindowHelper.getTopActivity();
                if (topActivity != null && (windowManager = (WindowManager) topActivity.getSystemService("window")) != null) {
                    windowManager.removeViewImmediate(this.mToast.getView());
                }
            } catch (IllegalArgumentException unused) {
            }
            setShow(false);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        cancel();
    }

    public boolean isShow() {
        return this.mShow;
    }

    public void setShow(boolean z) {
        this.mShow = z;
    }

    public void show() {
        WindowManager windowManager;
        if (isShow()) {
            return;
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.height = -2;
        layoutParams.width = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = 16973828;
        layoutParams.flags = 152;
        layoutParams.packageName = this.mPackageName;
        layoutParams.gravity = this.mToast.getGravity();
        layoutParams.x = this.mToast.getXOffset();
        layoutParams.y = this.mToast.getYOffset();
        layoutParams.verticalMargin = this.mToast.getVerticalMargin();
        layoutParams.horizontalMargin = this.mToast.getHorizontalMargin();
        try {
            Activity topActivity = this.mWindowHelper.getTopActivity();
            if (topActivity != null && !topActivity.isFinishing() && (windowManager = (WindowManager) topActivity.getSystemService("window")) != null) {
                windowManager.addView(this.mToast.getView(), layoutParams);
            }
            sendEmptyMessageDelayed(hashCode(), this.mToast.getDuration() == 1 ? 3500L : ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
            setShow(true);
        } catch (WindowManager.BadTokenException | IllegalStateException unused) {
        }
    }
}
