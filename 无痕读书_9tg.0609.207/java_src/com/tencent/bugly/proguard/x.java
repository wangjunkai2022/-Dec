package com.tencent.bugly.proguard;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicInteger f12110a = new AtomicInteger(1);
    public static x b;
    public ScheduledExecutorService c;

    public x() {
        this.c = null;
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(3, new ThreadFactory(this) { // from class: com.tencent.bugly.proguard.x.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("BuglyThread-" + x.f12110a.getAndIncrement());
                return thread;
            }
        });
        this.c = newScheduledThreadPool;
        if (newScheduledThreadPool == null || newScheduledThreadPool.isShutdown()) {
            y.d("[AsyncTaskHandler] ScheduledExecutorService is not valiable!", new Object[0]);
        }
    }

    public static synchronized x a() {
        x xVar;
        synchronized (x.class) {
            if (b == null) {
                b = new x();
            }
            xVar = b;
        }
        return xVar;
    }

    public final synchronized void b() {
        if (this.c != null && !this.c.isShutdown()) {
            y.c("[AsyncTaskHandler] Close async handler.", new Object[0]);
            this.c.shutdownNow();
        }
    }

    public final synchronized boolean c() {
        boolean z;
        if (this.c != null) {
            z = this.c.isShutdown() ? false : true;
        }
        return z;
    }

    public final synchronized boolean a(Runnable runnable, long j) {
        if (!c()) {
            y.d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            return false;
        } else if (runnable == null) {
            y.d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            return false;
        } else {
            if (j <= 0) {
                j = 0;
            }
            y.c("[AsyncTaskHandler] Post a delay(time: %dms) task: %s", Long.valueOf(j), runnable.getClass().getName());
            this.c.schedule(runnable, j, TimeUnit.MILLISECONDS);
            return true;
        }
    }

    public final synchronized boolean a(Runnable runnable) {
        if (!c()) {
            y.d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            return false;
        } else if (runnable == null) {
            y.d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            return false;
        } else {
            y.c("[AsyncTaskHandler] Post a normal task: %s", runnable.getClass().getName());
            this.c.execute(runnable);
            return true;
        }
    }
}
