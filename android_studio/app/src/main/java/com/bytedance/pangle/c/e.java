package com.bytedance.pangle.c;

import com.bytedance.pangle.ZeusConstants;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes8.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static Executor f11300a = Executors.newCachedThreadPool();
    public static ScheduledExecutorService b = Executors.newSingleThreadScheduledExecutor();

    public static ExecutorService a(int i) {
        return Executors.newFixedThreadPool(i, new ThreadFactory() { // from class: com.bytedance.pangle.c.e.1

            /* renamed from: a  reason: collision with root package name */
            public AtomicInteger f11301a = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, ZeusConstants.BASE_LIB_NAME + "-Install-" + this.f11301a.getAndIncrement());
            }
        });
    }
}
