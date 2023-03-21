package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final Handler f12074a;
    public final List<com.tencent.bugly.crashreport.crash.anr.c> b = new LinkedList();
    public long c = 5000;
    public final long d = 5000;
    public boolean e = true;
    public long f;

    public ac(Handler handler, String str, long j) {
        this.f12074a = handler;
    }

    public final void a() {
        if (this.e) {
            this.e = false;
            this.f = SystemClock.uptimeMillis();
            this.f12074a.post(this);
        }
    }

    public final boolean b() {
        return !this.e && SystemClock.uptimeMillis() >= this.f + this.c;
    }

    public final long c() {
        return SystemClock.uptimeMillis() - this.f;
    }

    public final void d() {
        StringBuilder sb = new StringBuilder(1024);
        System.nanoTime();
        try {
            StackTraceElement[] stackTrace = this.f12074a.getLooper().getThread().getStackTrace();
            if (stackTrace.length == 0) {
                sb.append("Thread does not have stack trace.\n");
            } else {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    sb.append(stackTraceElement);
                    sb.append("\n");
                }
            }
        } catch (SecurityException e) {
            sb.append("getStackTrace() encountered:\n");
            sb.append(e.getMessage());
            sb.append("\n");
            y.a(e);
        }
        System.nanoTime();
        com.tencent.bugly.crashreport.crash.anr.c cVar = new com.tencent.bugly.crashreport.crash.anr.c(sb.toString(), System.currentTimeMillis());
        cVar.a(this.f12074a.getLooper().getThread().getName());
        synchronized (this.b) {
            while (this.b.size() >= 32) {
                this.b.remove(0);
            }
            this.b.add(cVar);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e = true;
        this.c = this.d;
    }

    public final List<com.tencent.bugly.crashreport.crash.anr.c> b(long j) {
        ArrayList arrayList;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.b) {
            arrayList = new ArrayList(this.b.size());
            for (int i = 0; i < this.b.size(); i++) {
                com.tencent.bugly.crashreport.crash.anr.c cVar = this.b.get(i);
                if (!cVar.d() && currentTimeMillis - cVar.c() < 200000) {
                    arrayList.add(cVar);
                    cVar.a(true);
                }
            }
        }
        return arrayList;
    }

    public final void a(long j) {
        this.c = 5000L;
    }
}
