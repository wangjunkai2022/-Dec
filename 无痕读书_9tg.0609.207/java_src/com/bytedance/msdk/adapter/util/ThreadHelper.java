package com.bytedance.msdk.adapter.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.apk.Cgoto;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes8.dex */
public class ThreadHelper {
    public static final String THREDA_NAME_PREFIX = "gm_t_";

    /* renamed from: case  reason: not valid java name */
    public static final int f8759case;

    /* renamed from: else  reason: not valid java name */
    public static final int f8761else;

    /* renamed from: goto  reason: not valid java name */
    public static final Executor f8763goto;

    /* renamed from: new  reason: not valid java name */
    public static HandlerThread f8765new;

    /* renamed from: this  reason: not valid java name */
    public static final Executor f8766this;

    /* renamed from: try  reason: not valid java name */
    public static Handler f8767try;

    /* renamed from: break  reason: not valid java name */
    public static final /* synthetic */ boolean f8758break = !ThreadHelper.class.desiredAssertionStatus();

    /* renamed from: do  reason: not valid java name */
    public static final Object f8760do = new Object();

    /* renamed from: if  reason: not valid java name */
    public static boolean f8764if = false;

    /* renamed from: for  reason: not valid java name */
    public static Handler f8762for = null;

    static {
        initMSDKThread();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f8759case = availableProcessors;
        f8761else = Math.min(availableProcessors, 4);
        int i = f8761else;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), createNamedThreadFactory("gm_t_executor:"), new ThreadPoolExecutor.DiscardOldestPolicy());
        try {
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        } catch (Exception unused) {
        } catch (NoSuchMethodError e) {
            e.printStackTrace();
        }
        f8763goto = threadPoolExecutor;
        f8766this = new ThreadPoolExecutor(2, 2, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(256), createNamedThreadFactory("gm_t_log_upload:"), new ThreadPoolExecutor.DiscardPolicy());
    }

    public static void assertOnUiThread() {
        if (!f8758break && !runningOnUiThread()) {
            throw new AssertionError();
        }
    }

    public static ThreadFactory createNamedThreadFactory(final String str) {
        return new ThreadFactory() { // from class: com.bytedance.msdk.adapter.util.ThreadHelper.1

            /* renamed from: do  reason: not valid java name */
            public final AtomicInteger f8768do = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, str + " # " + this.f8768do.getAndIncrement());
            }
        };
    }

    /* renamed from: do  reason: not valid java name */
    public static boolean m3585do() {
        HandlerThread handlerThread = f8765new;
        return (handlerThread == null || !handlerThread.isAlive() || f8767try == null) ? false : true;
    }

    public static int getGroMoreThreadCount() {
        int i = 0;
        for (Thread thread : Thread.getAllStackTraces().keySet()) {
            if (thread != null && thread.getName() != null && thread.getName().contains(THREDA_NAME_PREFIX)) {
                i++;
                StringBuilder m1016super = Cgoto.m1016super("--==-- thread: ");
                m1016super.append(thread.getName());
                Logger.d("TMe", m1016super.toString());
            }
        }
        return i;
    }

    public static Executor getLogUploadExecutor() {
        return f8766this;
    }

    public static Executor getMSDKExecutor() {
        return f8763goto;
    }

    public static Looper getMSDKThreadLooper() {
        if (m3585do()) {
            return f8765new.getLooper();
        }
        return null;
    }

    public static Handler getUiThreadHandler() {
        Handler handler;
        synchronized (f8760do) {
            if (f8762for == null) {
                if (!f8764if) {
                    f8762for = new Handler(Looper.getMainLooper());
                } else {
                    throw new RuntimeException("Did not yet override the UI thread");
                }
            }
            handler = f8762for;
        }
        return handler;
    }

    public static void initMSDKThread() {
        try {
            HandlerThread handlerThread = new HandlerThread("gm_t_main", -19);
            f8765new = handlerThread;
            handlerThread.start();
            f8767try = new Handler(f8765new.getLooper());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static ExecutorService initSingleThreadExecutor(String str, int i, RejectedExecutionHandler rejectedExecutionHandler) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(i);
        return new ThreadPoolExecutor(1, 1, 0L, timeUnit, linkedBlockingQueue, createNamedThreadFactory("gm_t_single_" + str), rejectedExecutionHandler);
    }

    public static void postDelayOnMSDKThread(Runnable runnable, long j) {
        if (m3585do()) {
            f8767try.postDelayed(runnable, j);
        } else {
            initMSDKThread();
        }
    }

    public static <T> FutureTask<T> postOnUiThread(FutureTask<T> futureTask) {
        getUiThreadHandler().post(futureTask);
        return futureTask;
    }

    public static void postOnUiThreadDelayed(Runnable runnable, long j) {
        getUiThreadHandler().postDelayed(runnable, j);
    }

    public static void revokeOnUiThread(Runnable runnable) {
        getUiThreadHandler().removeCallbacks(runnable);
    }

    public static void runOnMSDKThread(Runnable runnable) {
        if (m3585do()) {
            if (runningOnMSDKThread()) {
                runnable.run();
                return;
            } else {
                f8767try.post(runnable);
                return;
            }
        }
        initMSDKThread();
    }

    public static void runOnThreadPool(Runnable runnable) {
        try {
            f8763goto.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public static <T> FutureTask<T> runOnUiThread(FutureTask<T> futureTask) {
        if (runningOnUiThread()) {
            futureTask.run();
        } else {
            postOnUiThread((FutureTask) futureTask);
        }
        return futureTask;
    }

    public static void runOnUiThreadBlocking(Runnable runnable) {
        if (runningOnUiThread()) {
            runnable.run();
            return;
        }
        FutureTask futureTask = new FutureTask(runnable, null);
        postOnUiThread(futureTask);
        try {
            futureTask.get();
        } catch (Exception e) {
            throw new RuntimeException("Exception occured while waiting for runnable", e);
        }
    }

    public static <T> T runOnUiThreadBlockingNoException(Callable<T> callable) {
        try {
            return (T) runOnUiThreadBlocking(callable);
        } catch (ExecutionException e) {
            throw new RuntimeException("Error occured waiting for callable", e);
        }
    }

    public static boolean runningOnMSDKThread() {
        return m3585do() && f8765new.getLooper() == Looper.myLooper();
    }

    public static boolean runningOnUiThread() {
        return getUiThreadHandler().getLooper() == Looper.myLooper();
    }

    public static void postOnUiThread(Runnable runnable) {
        getUiThreadHandler().post(runnable);
    }

    public static void runOnUiThread(Runnable runnable) {
        if (runningOnUiThread()) {
            runnable.run();
        } else {
            getUiThreadHandler().post(runnable);
        }
    }

    public static <T> T runOnUiThreadBlocking(Callable<T> callable) throws ExecutionException {
        FutureTask futureTask = new FutureTask(callable);
        runOnUiThread(futureTask);
        try {
            return (T) futureTask.get();
        } catch (InterruptedException e) {
            throw new RuntimeException("Interrupted waiting for callable", e);
        }
    }
}
