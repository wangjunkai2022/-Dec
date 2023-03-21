package com.umeng.commonsdk.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* compiled from: CountDownTimer.java */
/* loaded from: classes7.dex */
public abstract class a {
    public static final int e = 1;

    /* renamed from: a  reason: collision with root package name */
    public final long f12332a;
    public final long b;
    public long c;
    public HandlerThread f;
    public Handler g;
    public boolean d = false;
    public Handler.Callback h = new Handler.Callback() { // from class: com.umeng.commonsdk.utils.a.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            synchronized (a.this) {
                if (a.this.d) {
                    return true;
                }
                long elapsedRealtime = a.this.c - SystemClock.elapsedRealtime();
                if (elapsedRealtime > 0) {
                    if (elapsedRealtime < a.this.b) {
                        a.this.g.sendMessageDelayed(a.this.g.obtainMessage(1), elapsedRealtime);
                    } else {
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        a.this.a(elapsedRealtime);
                        long elapsedRealtime3 = (elapsedRealtime2 + a.this.b) - SystemClock.elapsedRealtime();
                        while (elapsedRealtime3 < 0) {
                            elapsedRealtime3 += a.this.b;
                        }
                        a.this.g.sendMessageDelayed(a.this.g.obtainMessage(1), elapsedRealtime3);
                    }
                } else {
                    a.this.c();
                    if (a.this.f != null) {
                        a.this.f.quit();
                    }
                }
                return false;
            }
        }
    };

    public a(long j, long j2) {
        this.f12332a = j;
        this.b = j2;
        if (!d()) {
            HandlerThread handlerThread = new HandlerThread("CountDownTimerThread");
            this.f = handlerThread;
            handlerThread.start();
            this.g = new Handler(this.f.getLooper(), this.h);
            return;
        }
        this.g = new Handler(this.h);
    }

    public abstract void a(long j);

    public abstract void c();

    private boolean d() {
        return Looper.getMainLooper().getThread().equals(Thread.currentThread());
    }

    public final synchronized void a() {
        this.d = true;
        this.g.removeMessages(1);
    }

    public final synchronized a b() {
        this.d = false;
        if (this.f12332a <= 0) {
            c();
            return this;
        }
        this.c = SystemClock.elapsedRealtime() + this.f12332a;
        this.g.sendMessage(this.g.obtainMessage(1));
        return this;
    }
}
