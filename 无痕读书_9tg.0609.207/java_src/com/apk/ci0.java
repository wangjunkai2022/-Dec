package com.apk;

import androidx.core.app.NotificationCompat;
import com.apk.uj0;
import com.apk.xh0;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealConnectionPool.kt */
/* loaded from: classes7.dex */
public final class ci0 {

    /* renamed from: do  reason: not valid java name */
    public final long f633do;

    /* renamed from: for  reason: not valid java name */
    public final Cdo f634for;

    /* renamed from: if  reason: not valid java name */
    public final rh0 f635if;

    /* renamed from: new  reason: not valid java name */
    public final ConcurrentLinkedQueue<bi0> f636new;

    /* renamed from: try  reason: not valid java name */
    public final int f637try;

    /* compiled from: RealConnectionPool.kt */
    /* renamed from: com.apk.ci0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends ph0 {
        public Cdo(String str) {
            super(str, true);
        }

        @Override // com.apk.ph0
        /* renamed from: do */
        public long mo56do() {
            ci0 ci0Var = ci0.this;
            long nanoTime = System.nanoTime();
            Iterator<bi0> it = ci0Var.f636new.iterator();
            bi0 bi0Var = null;
            long j = Long.MIN_VALUE;
            int i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                bi0 next = it.next();
                nd0.m1872for(next, "connection");
                synchronized (next) {
                    if (ci0Var.m350if(next, nanoTime) > 0) {
                        i2++;
                    } else {
                        i++;
                        long j2 = nanoTime - next.f336throw;
                        if (j2 > j) {
                            bi0Var = next;
                            j = j2;
                        }
                    }
                }
            }
            long j3 = ci0Var.f633do;
            if (j < j3 && i <= ci0Var.f637try) {
                if (i > 0) {
                    return j3 - j;
                }
                if (i2 > 0) {
                    return j3;
                }
                return -1L;
            }
            nd0.m1874if(bi0Var);
            synchronized (bi0Var) {
                if (!bi0Var.f334super.isEmpty()) {
                    return 0L;
                }
                if (bi0Var.f336throw + j != nanoTime) {
                    return 0L;
                }
                bi0Var.f335this = true;
                ci0Var.f636new.remove(bi0Var);
                Socket socket = bi0Var.f330for;
                nd0.m1874if(socket);
                jh0.m1323else(socket);
                if (ci0Var.f636new.isEmpty()) {
                    ci0Var.f635if.m2270do();
                    return 0L;
                }
                return 0L;
            }
        }
    }

    public ci0(@NotNull sh0 sh0Var, int i, long j, @NotNull TimeUnit timeUnit) {
        nd0.m1875new(sh0Var, "taskRunner");
        nd0.m1875new(timeUnit, "timeUnit");
        this.f637try = i;
        this.f633do = timeUnit.toNanos(j);
        this.f635if = sh0Var.m2468case();
        this.f634for = new Cdo(Cgoto.m991class(new StringBuilder(), jh0.f2336this, " ConnectionPool"));
        this.f636new = new ConcurrentLinkedQueue<>();
        if (!(j > 0)) {
            throw new IllegalArgumentException(Cgoto.m1000for("keepAliveDuration <= 0: ", j).toString());
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final boolean m348do(@NotNull uf0 uf0Var, @NotNull xh0 xh0Var, @Nullable List<fh0> list, boolean z) {
        nd0.m1875new(uf0Var, "address");
        nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
        Iterator<bi0> it = this.f636new.iterator();
        while (it.hasNext()) {
            bi0 next = it.next();
            nd0.m1872for(next, "connection");
            synchronized (next) {
                if (z) {
                    if (!next.m181catch()) {
                    }
                }
                if (next.m191this(uf0Var, list)) {
                    xh0Var.m3004if(next);
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: for  reason: not valid java name */
    public final void m349for(@NotNull bi0 bi0Var) {
        nd0.m1875new(bi0Var, "connection");
        if (jh0.f2333goto && !Thread.holdsLock(bi0Var)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST hold lock on ");
            m1016super.append(bi0Var);
            throw new AssertionError(m1016super.toString());
        }
        this.f636new.add(bi0Var);
        rh0.m2268new(this.f635if, this.f634for, 0L, 2);
    }

    /* renamed from: if  reason: not valid java name */
    public final int m350if(bi0 bi0Var, long j) {
        if (jh0.f2333goto && !Thread.holdsLock(bi0Var)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST hold lock on ");
            m1016super.append(bi0Var);
            throw new AssertionError(m1016super.toString());
        }
        List<Reference<xh0>> list = bi0Var.f334super;
        int i = 0;
        while (i < list.size()) {
            Reference<xh0> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                StringBuilder m1016super2 = Cgoto.m1016super("A connection to ");
                m1016super2.append(bi0Var.f338while.f1292do.f4880do);
                m1016super2.append(" was leaked. ");
                m1016super2.append("Did you forget to close a response body?");
                String sb = m1016super2.toString();
                uj0.Cdo cdo = uj0.f4907for;
                uj0.f4906do.mo1963catch(sb, ((xh0.Cif) reference).f5624do);
                list.remove(i);
                bi0Var.f335this = true;
                if (list.isEmpty()) {
                    bi0Var.f336throw = j - this.f633do;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
