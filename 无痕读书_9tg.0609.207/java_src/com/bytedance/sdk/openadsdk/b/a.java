package com.bytedance.sdk.openadsdk.b;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes8.dex */
public class a {
    public static volatile a b;

    /* renamed from: a  reason: collision with root package name */
    public volatile ThreadPoolExecutor f11456a = new ThreadPoolExecutor(3, 3, 5, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0124a(), new RejectedExecutionHandler() { // from class: com.bytedance.sdk.openadsdk.b.a.1
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            com.bytedance.sdk.openadsdk.api.a.d("TTThreadManager", "TTThreadManager rejectedExecution:  ");
        }
    });

    /* renamed from: com.bytedance.sdk.openadsdk.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class ThreadFactoryC0124a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        public final ThreadGroup f11458a;
        public final AtomicInteger b;
        public final String c;

        public ThreadFactoryC0124a() {
            this("tt_pangle_thread_pl_mgr");
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f11458a;
            Thread thread = new Thread(threadGroup, runnable, this.c + this.b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }

        public ThreadFactoryC0124a(String str) {
            this.b = new AtomicInteger(1);
            this.f11458a = new ThreadGroup("tt_pangle_group_pl_mgr");
            this.c = str;
        }
    }

    public a() {
        this.f11456a.allowCoreThreadTimeOut(true);
    }

    public static a a() {
        if (b == null) {
            synchronized (a.class) {
                b = new a();
            }
        }
        return b;
    }

    public void a(Runnable runnable) {
        if (runnable != null) {
            try {
                this.f11456a.execute(runnable);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
