package com.baidu.tts.c;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: LimitQueueThreadPoolExecutor.java */
/* loaded from: classes8.dex */
public class a extends ThreadPoolExecutor {

    /* compiled from: LimitQueueThreadPoolExecutor.java */
    /* renamed from: com.baidu.tts.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class RejectedExecutionHandlerC0081a implements RejectedExecutionHandler {
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            LoggerProxy.d("LimitQueueThreadPoolExecutor", "rejectedExecution");
            if (threadPoolExecutor.isShutdown()) {
                return;
            }
            try {
                threadPoolExecutor.getQueue().put(runnable);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public a(int i, String str) {
        this(i, str, new RejectedExecutionHandlerC0081a());
    }

    public a(int i, String str, RejectedExecutionHandler rejectedExecutionHandler) {
        this(i, new com.baidu.tts.g.a.a(str), rejectedExecutionHandler);
    }

    public a(int i, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        this(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(i), threadFactory, rejectedExecutionHandler);
    }

    public a(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
    }
}
