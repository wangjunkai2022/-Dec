package com.bytedance.msdk.adapter.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: classes8.dex */
public class WeakHandler extends Handler {

    /* renamed from: do  reason: not valid java name */
    public final WeakReference<IHandler> f8775do;

    /* loaded from: classes8.dex */
    public interface IHandler {
        void handleMsg(Message message);
    }

    public WeakHandler(IHandler iHandler) {
        this.f8775do = new WeakReference<>(iHandler);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        IHandler iHandler = this.f8775do.get();
        if (iHandler == null || message == null) {
            return;
        }
        iHandler.handleMsg(message);
    }

    public WeakHandler(Looper looper, IHandler iHandler) {
        super(looper);
        this.f8775do = new WeakReference<>(iHandler);
    }
}
