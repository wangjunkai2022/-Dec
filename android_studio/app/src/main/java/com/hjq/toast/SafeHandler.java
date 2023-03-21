package com.hjq.toast;

import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;

/* loaded from: classes8.dex */
public final class SafeHandler extends Handler {
    public Handler mHandler;

    public SafeHandler(Handler handler) {
        this.mHandler = handler;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            this.mHandler.handleMessage(message);
        } catch (WindowManager.BadTokenException | IllegalStateException unused) {
        }
    }
}
