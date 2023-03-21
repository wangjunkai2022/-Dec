package com.bun.miitmdid.utils;

import com.apk.Cgoto;
import com.netease.nis.sdkwrapper.Utils;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes8.dex */
public class ThreadPoolUtil {
    public static BlockingQueue blockingQueue = new ArrayBlockingQueue(3);
    public static ThreadFactory threadFactory = new ThreadFactory() { // from class: com.bun.miitmdid.utils.ThreadPoolUtil.1
        public final AtomicInteger integer = new AtomicInteger();

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder m1016super = Cgoto.m1016super("myThreadPool thread:");
            m1016super.append(this.integer.getAndIncrement());
            return new Thread(runnable, m1016super.toString());
        }
    };
    public static int CORE_POOL_SIZE = 2;
    public static int MAX_POOL_SIZE = 5;
    public static int KEEP_ALIVE_TIME = 5000;
    public static ThreadPoolExecutor threadPool = new ThreadPoolExecutor(CORE_POOL_SIZE, MAX_POOL_SIZE, KEEP_ALIVE_TIME, TimeUnit.SECONDS, blockingQueue, threadFactory);

    public static void execute(Runnable runnable) {
        Object[] objArr = new Object[4];
        objArr[1] = runnable;
        objArr[2] = 137;
        objArr[3] = 1594371206413L;
        Utils.rL(objArr);
    }
}
