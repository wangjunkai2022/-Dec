package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_int108;

import android.os.SystemClock;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.m;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.f;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.g;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i;
import java.lang.Thread;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* compiled from: CrashCatchDispatcher.java */
/* loaded from: classes8.dex */
public class a implements Thread.UncaughtExceptionHandler {
    public static a e;

    /* renamed from: a  reason: collision with root package name */
    public Thread.UncaughtExceptionHandler f11071a;
    public b c;
    public HashSet<Thread.UncaughtExceptionHandler> b = new HashSet<>();
    public long d = -1;

    public a() {
        b();
    }

    public static a a() {
        if (e == null) {
            e = new a();
        }
        return e;
    }

    private void b() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != this) {
            Thread.setDefaultUncaughtExceptionHandler(this);
            if (this.f11071a == null) {
                this.f11071a = defaultUncaughtExceptionHandler;
            } else {
                this.b.add(defaultUncaughtExceptionHandler);
            }
        }
    }

    private boolean c(Thread thread, Throwable th) {
        g b = i.d().b();
        if (b != null) {
            try {
                return b.a(th, thread);
            } catch (Throwable unused) {
                return true;
            }
        }
        return true;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        boolean c;
        if (SystemClock.uptimeMillis() - this.d < 20000) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            this.d = SystemClock.uptimeMillis();
            c = c(thread, th);
        } finally {
            try {
            } finally {
            }
        }
        if (c) {
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c cVar = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c.JAVA;
            b(thread, th);
            if (c && this.c != null && this.c.a(th)) {
                this.c.a(currentTimeMillis, thread, th);
                String str = "end dispose " + th;
            }
        }
    }

    public void a(b bVar) {
        this.c = bVar;
    }

    private void a(Thread thread, Throwable th) {
        try {
            Iterator<Thread.UncaughtExceptionHandler> it = this.b.iterator();
            while (it.hasNext()) {
                try {
                    it.next().uncaughtException(thread, th);
                } catch (Throwable unused) {
                }
            }
            this.f11071a.uncaughtException(thread, th);
        } catch (Throwable unused2) {
        }
    }

    private void b(Thread thread, Throwable th) {
        List<f> c = i.d().c();
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c cVar = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c.JAVA;
        for (f fVar : c) {
            try {
                fVar.a(cVar, m.a(th), thread);
            } catch (Throwable th2) {
                j.b(th2);
            }
        }
    }
}
