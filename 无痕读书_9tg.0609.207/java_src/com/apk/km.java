package com.apk;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: GlideExecutor.java */
/* loaded from: classes8.dex */
public final class km implements ExecutorService {

    /* renamed from: for  reason: not valid java name */
    public static volatile int f2588for;

    /* renamed from: if  reason: not valid java name */
    public static final long f2589if = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: do  reason: not valid java name */
    public final ExecutorService f2590do;

    /* compiled from: GlideExecutor.java */
    /* renamed from: com.apk.km$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements ThreadFactory {

        /* renamed from: do  reason: not valid java name */
        public final String f2591do;

        /* renamed from: for  reason: not valid java name */
        public final boolean f2592for;

        /* renamed from: if  reason: not valid java name */
        public final Cif f2593if;

        /* renamed from: new  reason: not valid java name */
        public int f2594new;

        /* compiled from: GlideExecutor.java */
        /* renamed from: com.apk.km$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0068do extends Thread {
            public C0068do(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                if (Cdo.this.f2592for) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    Cdo.this.f2593if.mo1516do(th);
                }
            }
        }

        public Cdo(String str, Cif cif, boolean z) {
            this.f2591do = str;
            this.f2593if = cif;
            this.f2592for = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(@NonNull Runnable runnable) {
            C0068do c0068do;
            c0068do = new C0068do(runnable, "glide-" + this.f2591do + "-thread-" + this.f2594new);
            this.f2594new = this.f2594new + 1;
            return c0068do;
        }
    }

    /* compiled from: GlideExecutor.java */
    /* renamed from: com.apk.km$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {

        /* renamed from: do  reason: not valid java name */
        public static final Cif f2596do = new Cdo();

        /* renamed from: if  reason: not valid java name */
        public static final Cif f2597if = f2596do;

        /* compiled from: GlideExecutor.java */
        /* renamed from: com.apk.km$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Cif {
            @Override // com.apk.km.Cif
            /* renamed from: do */
            public void mo1516do(Throwable th) {
            }
        }

        /* renamed from: do  reason: not valid java name */
        void mo1516do(Throwable th);
    }

    @VisibleForTesting
    public km(ExecutorService executorService) {
        this.f2590do = executorService;
    }

    /* renamed from: do  reason: not valid java name */
    public static int m1514do() {
        if (f2588for == 0) {
            f2588for = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        return f2588for;
    }

    /* renamed from: if  reason: not valid java name */
    public static km m1515if() {
        Cif cif = Cif.f2597if;
        if (!TextUtils.isEmpty("disk-cache")) {
            return new km(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new Cdo("disk-cache", cif, true)));
        }
        throw new IllegalArgumentException(Cgoto.m989case("Name must be non-null and non-empty, but given: ", "disk-cache"));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f2590do.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f2590do.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f2590do.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f2590do.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f2590do.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f2590do.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f2590do.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public List<Runnable> shutdownNow() {
        return this.f2590do.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public Future<?> submit(@NonNull Runnable runnable) {
        return this.f2590do.submit(runnable);
    }

    public String toString() {
        return this.f2590do.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f2590do.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f2590do.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> Future<T> submit(@NonNull Runnable runnable, T t) {
        return this.f2590do.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.f2590do.submit(callable);
    }
}
