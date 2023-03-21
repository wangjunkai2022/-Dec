package com.ss.android.socialbase.downloader.h;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes7.dex */
public class a implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final String f11889a;
    public final AtomicInteger b;
    public final boolean c;

    public a(String str) {
        this(str, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        int incrementAndGet = this.b.incrementAndGet();
        Thread thread = new Thread(runnable, this.f11889a + "-" + incrementAndGet);
        if (!this.c) {
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
        }
        return thread;
    }

    public a(String str, boolean z) {
        this.b = new AtomicInteger();
        this.f11889a = str;
        this.c = z;
    }
}
