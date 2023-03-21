package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1;

import android.os.Handler;
import android.os.HandlerThread;
/* compiled from: NpthHandlerThread.java */
/* loaded from: classes8.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static volatile HandlerThread f11087a;
    public static volatile Handler b;

    public static Handler a() {
        if (b == null) {
            b();
        }
        return b;
    }

    public static HandlerThread b() {
        if (f11087a == null) {
            synchronized (h.class) {
                if (f11087a == null) {
                    f11087a = new HandlerThread("default_npth_thread");
                    f11087a.start();
                    b = new Handler(f11087a.getLooper());
                }
            }
        }
        return f11087a;
    }
}
