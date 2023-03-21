package com.ss.android.socialbase.downloader.h;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes7.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public Object f11897a = new Object();
    public Queue<b> b = new ConcurrentLinkedQueue();
    public a c;
    public Handler d;

    /* loaded from: classes7.dex */
    public class a extends HandlerThread {
        public a(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread
        public void onLooperPrepared() {
            super.onLooperPrepared();
            Looper looper = getLooper();
            synchronized (g.this.f11897a) {
                g.this.d = new Handler(looper);
            }
            while (!g.this.b.isEmpty()) {
                b bVar = (b) g.this.b.poll();
                g.this.d.postDelayed(bVar.f11899a, bVar.b);
            }
        }
    }

    /* loaded from: classes7.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public Runnable f11899a;
        public long b;

        public b(Runnable runnable, long j) {
            this.f11899a = runnable;
            this.b = j;
        }
    }

    public g(String str) {
        this.c = new a(str);
    }

    public void b() {
        this.c.quit();
    }

    public void a() {
        this.c.start();
    }

    public void a(Runnable runnable) {
        a(runnable, 0L);
    }

    public void a(Runnable runnable, long j) {
        if (this.d == null) {
            synchronized (this.f11897a) {
                if (this.d == null) {
                    this.b.add(new b(runnable, j));
                    return;
                }
            }
        }
        this.d.postDelayed(runnable, j);
    }
}
