package com.apk;

import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: AppThreadManager.java */
/* loaded from: classes8.dex */
public class o {

    /* renamed from: else  reason: not valid java name */
    public static o f3325else;

    /* renamed from: case  reason: not valid java name */
    public ThreadPoolExecutor f3326case;

    /* renamed from: do  reason: not valid java name */
    public final ThreadPoolExecutor f3327do;

    /* renamed from: for  reason: not valid java name */
    public ThreadPoolExecutor f3328for;

    /* renamed from: if  reason: not valid java name */
    public ThreadPoolExecutor f3329if;

    /* renamed from: new  reason: not valid java name */
    public ThreadPoolExecutor f3330new;

    /* renamed from: try  reason: not valid java name */
    public ThreadPoolExecutor f3331try;

    public o() {
        int availableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
        this.f3327do = new ThreadPoolExecutor(availableProcessors, availableProcessors + 1, 1L, TimeUnit.HOURS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
    }

    /* renamed from: for  reason: not valid java name */
    public static o m1921for() {
        if (f3325else == null) {
            synchronized (o.class) {
                if (f3325else == null) {
                    f3325else = new o();
                }
            }
        }
        return f3325else;
    }

    /* renamed from: do  reason: not valid java name */
    public void m1922do(Runnable runnable) {
        if (this.f3329if == null) {
            this.f3329if = new ThreadPoolExecutor(1, 10, 1L, TimeUnit.HOURS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
        }
        this.f3329if.execute(runnable);
    }

    /* renamed from: if  reason: not valid java name */
    public void m1923if(Runnable runnable) {
        if (this.f3330new == null) {
            this.f3330new = new ThreadPoolExecutor(1, 10, 1L, TimeUnit.HOURS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
        }
        this.f3330new.execute(runnable);
    }

    /* renamed from: new  reason: not valid java name */
    public ThreadPoolExecutor m1924new() {
        if (this.f3328for == null) {
            this.f3328for = new ThreadPoolExecutor(1, 10, 1L, TimeUnit.HOURS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
        }
        return this.f3328for;
    }
}
