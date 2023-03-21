package com.apk;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: AsyncTimeout.kt */
/* loaded from: classes7.dex */
public class ok0 extends ml0 {

    /* renamed from: break  reason: not valid java name */
    public static ok0 f3449break;

    /* renamed from: catch  reason: not valid java name */
    public static final Cdo f3450catch = new Cdo(null);

    /* renamed from: goto  reason: not valid java name */
    public static final long f3451goto = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: this  reason: not valid java name */
    public static final long f3452this = TimeUnit.MILLISECONDS.toNanos(f3451goto);

    /* renamed from: case  reason: not valid java name */
    public ok0 f3453case;

    /* renamed from: else  reason: not valid java name */
    public long f3454else;

    /* renamed from: try  reason: not valid java name */
    public boolean f3455try;

    /* compiled from: AsyncTimeout.kt */
    /* renamed from: com.apk.ok0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        @Nullable
        /* renamed from: do  reason: not valid java name */
        public final ok0 m1969do() throws InterruptedException {
            ok0 ok0Var = ok0.f3449break;
            nd0.m1874if(ok0Var);
            ok0 ok0Var2 = ok0Var.f3453case;
            if (ok0Var2 == null) {
                long nanoTime = System.nanoTime();
                ok0.class.wait(ok0.f3451goto);
                ok0 ok0Var3 = ok0.f3449break;
                nd0.m1874if(ok0Var3);
                if (ok0Var3.f3453case != null || System.nanoTime() - nanoTime < ok0.f3452this) {
                    return null;
                }
                return ok0.f3449break;
            }
            long nanoTime2 = ok0Var2.f3454else - System.nanoTime();
            if (nanoTime2 > 0) {
                long j = nanoTime2 / 1000000;
                ok0.class.wait(j, (int) (nanoTime2 - (1000000 * j)));
                return null;
            }
            ok0 ok0Var4 = ok0.f3449break;
            nd0.m1874if(ok0Var4);
            ok0Var4.f3453case = ok0Var2.f3453case;
            ok0Var2.f3453case = null;
            return ok0Var2;
        }
    }

    /* compiled from: AsyncTimeout.kt */
    /* renamed from: com.apk.ok0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif extends Thread {
        public Cif() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ok0 m1969do;
            while (true) {
                try {
                    synchronized (ok0.class) {
                        m1969do = ok0.f3450catch.m1969do();
                        if (m1969do == ok0.f3449break) {
                            ok0.f3449break = null;
                            return;
                        }
                    }
                    if (m1969do != null) {
                        m1969do.mo974catch();
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    @NotNull
    /* renamed from: break */
    public IOException mo973break(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: catch */
    public void mo974catch() {
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m1967goto() {
        if (!this.f3455try) {
            long j = this.f3066for;
            boolean z = this.f3065do;
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i != 0 || z) {
                this.f3455try = true;
                synchronized (ok0.class) {
                    if (f3449break == null) {
                        f3449break = new ok0();
                        new Cif().start();
                    }
                    long nanoTime = System.nanoTime();
                    if (i != 0 && z) {
                        this.f3454else = Math.min(j, mo1731for() - nanoTime) + nanoTime;
                    } else if (i != 0) {
                        this.f3454else = j + nanoTime;
                    } else if (z) {
                        this.f3454else = mo1731for();
                    } else {
                        throw new AssertionError();
                    }
                    long j2 = this.f3454else - nanoTime;
                    ok0 ok0Var = f3449break;
                    nd0.m1874if(ok0Var);
                    while (ok0Var.f3453case != null) {
                        ok0 ok0Var2 = ok0Var.f3453case;
                        nd0.m1874if(ok0Var2);
                        if (j2 < ok0Var2.f3454else - nanoTime) {
                            break;
                        }
                        ok0Var = ok0Var.f3453case;
                        nd0.m1874if(ok0Var);
                    }
                    this.f3453case = ok0Var.f3453case;
                    ok0Var.f3453case = this;
                    if (ok0Var == f3449break) {
                        ok0.class.notify();
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0014, code lost:
        r3.f3453case = r5.f3453case;
        r5.f3453case = null;
     */
    /* renamed from: this  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean m1968this() {
        /*
            r5 = this;
            boolean r0 = r5.f3455try
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r5.f3455try = r1
            r0 = 0
            java.lang.Class<com.apk.ok0> r2 = com.apk.ok0.class
            monitor-enter(r2)
            com.apk.ok0 r3 = com.apk.ok0.f3449break     // Catch: java.lang.Throwable -> L22
        Le:
            if (r3 == 0) goto L1f
            com.apk.ok0 r4 = r3.f3453case     // Catch: java.lang.Throwable -> L22
            if (r4 != r5) goto L1c
            com.apk.ok0 r4 = r5.f3453case     // Catch: java.lang.Throwable -> L22
            r3.f3453case = r4     // Catch: java.lang.Throwable -> L22
            r5.f3453case = r0     // Catch: java.lang.Throwable -> L22
            monitor-exit(r2)
            goto L21
        L1c:
            com.apk.ok0 r3 = r3.f3453case     // Catch: java.lang.Throwable -> L22
            goto Le
        L1f:
            r1 = 1
            monitor-exit(r2)
        L21:
            return r1
        L22:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ok0.m1968this():boolean");
    }
}
