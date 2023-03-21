package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import java.util.List;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class ad extends Thread {
    public ac e;
    public a f;

    /* renamed from: a  reason: collision with root package name */
    public boolean f12075a = false;
    public boolean b = true;
    public boolean c = false;
    public int d = 1;
    public boolean g = true;

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public interface a {
        void a(boolean z, long j);
    }

    public final void a(boolean z) {
        this.g = z;
        y.c("set record stack trace enable:" + z, new Object[0]);
    }

    public final boolean b() {
        Handler handler = new Handler(Looper.getMainLooper());
        ac acVar = this.e;
        if (acVar != null) {
            acVar.a(5000L);
        } else {
            this.e = new ac(handler, handler.getLooper().getThread().getName(), 5000L);
        }
        if (isAlive()) {
            return false;
        }
        try {
            start();
            return true;
        } catch (Exception e) {
            y.b(e);
            return false;
        }
    }

    public final List<com.tencent.bugly.crashreport.crash.anr.c> c() {
        return this.e.b(200000L);
    }

    public final synchronized void d() {
        this.b = false;
        y.c("Record stack trace is disabled.", new Object[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0062, code lost:
        r2.d();
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r10 = this;
            long r0 = java.lang.System.currentTimeMillis()
        L4:
            boolean r2 = r10.f12075a
            if (r2 != 0) goto L94
            com.tencent.bugly.proguard.ac r2 = r10.e     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            r3 = 0
            if (r2 != 0) goto L15
            java.lang.String r2 = "Main handler checker is null. Stop thread monitor."
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            com.tencent.bugly.proguard.y.c(r2, r3)     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            return
        L15:
            com.tencent.bugly.proguard.ac r2 = r10.e     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            r2.a()     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            r10.a(r2)     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            boolean r4 = r10.g     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            r5 = 1
            if (r4 == 0) goto L60
            boolean r4 = r10.b     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            if (r4 != 0) goto L27
            goto L60
        L27:
            long r6 = r2.c()     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            r8 = 1510(0x5e6, double:7.46E-321)
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 <= 0) goto L60
            r8 = 199990(0x30d36, double:9.8808E-319)
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 < 0) goto L39
            goto L60
        L39:
            r8 = 5010(0x1392, double:2.4753E-320)
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 > 0) goto L4a
            r10.d = r5     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            java.lang.String r4 = "timeSinceMsgSent in [2s, 5s], record stack"
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            com.tencent.bugly.proguard.y.c(r4, r3)     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            r3 = 1
            goto L60
        L4a:
            int r4 = r10.d     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            int r4 = r4 + r5
            r10.d = r4     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            int r6 = r4 + (-1)
            r4 = r4 & r6
            if (r4 != 0) goto L55
            goto L56
        L55:
            r5 = 0
        L56:
            if (r5 == 0) goto L5f
            java.lang.String r4 = "timeSinceMsgSent in (5s, 200s), should record stack:true"
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            com.tencent.bugly.proguard.y.c(r4, r3)     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
        L5f:
            r3 = r5
        L60:
            if (r3 == 0) goto L65
            r2.d()     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
        L65:
            com.tencent.bugly.proguard.ad$a r3 = r10.f     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            if (r3 == 0) goto L7a
            boolean r3 = r10.b     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            if (r3 == 0) goto L7a
            com.tencent.bugly.proguard.ad$a r3 = r10.f     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            boolean r4 = r2.b()     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            long r5 = r2.c()     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            r3.a(r4, r5)     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
        L7a:
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            long r2 = r2 - r0
            r4 = 500(0x1f4, double:2.47E-321)
            long r2 = r2 % r4
            long r4 = r4 - r2
            com.tencent.bugly.proguard.ab.b(r4)     // Catch: java.lang.OutOfMemoryError -> L88 java.lang.Exception -> L8e
            goto L4
        L88:
            r2 = move-exception
            com.tencent.bugly.proguard.y.b(r2)
            goto L4
        L8e:
            r2 = move-exception
            com.tencent.bugly.proguard.y.b(r2)
            goto L4
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.ad.run():void");
    }

    public final boolean a() {
        this.f12075a = true;
        if (isAlive()) {
            try {
                interrupt();
            } catch (Exception e) {
                y.b(e);
            }
            y.d("MainHandlerChecker is reset to null.", new Object[0]);
            this.e = null;
            return true;
        }
        return false;
    }

    public final synchronized void b(boolean z) {
        this.c = true;
    }

    public final void a(a aVar) {
        this.f = aVar;
    }

    private synchronized void a(ac acVar) {
        if (this.b) {
            return;
        }
        if (this.c && !acVar.b()) {
            y.c("Restart getting main stack trace.", new Object[0]);
            this.b = true;
            this.c = false;
        }
    }
}
