package com.ss.android.downloadlib.g;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* loaded from: classes7.dex */
public class m extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<a> f11735a;

    /* loaded from: classes7.dex */
    public interface a {
        void a(Message message);
    }

    public m(Looper looper, a aVar) {
        super(looper);
        this.f11735a = new WeakReference<>(aVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar = this.f11735a.get();
        if (aVar == null || message == null) {
            return;
        }
        aVar.a(message);
    }
}
