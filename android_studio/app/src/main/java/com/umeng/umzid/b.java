package com.umeng.umzid;

import com.apk.Cgoto;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes7.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static volatile ScheduledThreadPoolExecutor f12341a;
    public static ThreadFactory b = new a();

    /* loaded from: classes7.dex */
    public static class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        public AtomicInteger f12342a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            StringBuilder m1016super = Cgoto.m1016super("ZIDThreadPoolExecutor");
            m1016super.append(this.f12342a.addAndGet(1));
            thread.setName(m1016super.toString());
            return thread;
        }
    }

    public static ScheduledThreadPoolExecutor a() {
        if (f12341a == null) {
            synchronized (b.class) {
                if (f12341a == null) {
                    f12341a = new ScheduledThreadPoolExecutor(Runtime.getRuntime().availableProcessors() * 4, b);
                }
            }
        }
        return f12341a;
    }

    public static void a(Runnable runnable) {
        try {
            a().execute(runnable);
        } catch (Throwable unused) {
        }
    }
}
