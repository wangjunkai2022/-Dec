package com.ss.android.socialbase.downloader.h;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* loaded from: classes7.dex */
public class h extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference<a> f11900a;

    /* loaded from: classes7.dex */
    public interface a {
        void a(Message message);
    }

    public h(Looper looper, a aVar) {
        super(looper);
        this.f11900a = new WeakReference<>(aVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar = this.f11900a.get();
        if (aVar == null || message == null) {
            return;
        }
        aVar.a(message);
    }
}
