package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do;

import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.ThreadHelper;
/* compiled from: NamedRunnable.java */
/* loaded from: classes8.dex */
public abstract class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final String f10707a;

    public b(String str, Object... objArr) {
        this.f10707a = c.a(str, objArr);
    }

    public abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread currentThread = Thread.currentThread();
        StringBuilder m1016super = Cgoto.m1016super(ThreadHelper.THREDA_NAME_PREFIX);
        m1016super.append(this.f10707a);
        currentThread.setName(m1016super.toString());
        try {
            b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
