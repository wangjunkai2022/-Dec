package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: TaskRunner.kt */
/* loaded from: classes7.dex */
public final class sh0 {

    /* renamed from: break  reason: not valid java name */
    public static final Cif f4354break = new Cif(null);
    @JvmField
    @NotNull

    /* renamed from: goto  reason: not valid java name */
    public static final sh0 f4355goto;
    @NotNull

    /* renamed from: this  reason: not valid java name */
    public static final Logger f4356this;

    /* renamed from: case  reason: not valid java name */
    public final Runnable f4357case;

    /* renamed from: do  reason: not valid java name */
    public int f4358do;
    @NotNull

    /* renamed from: else  reason: not valid java name */
    public final Cdo f4359else;

    /* renamed from: for  reason: not valid java name */
    public long f4360for;

    /* renamed from: if  reason: not valid java name */
    public boolean f4361if;

    /* renamed from: new  reason: not valid java name */
    public final List<rh0> f4362new;

    /* renamed from: try  reason: not valid java name */
    public final List<rh0> f4363try;

    /* compiled from: TaskRunner.kt */
    /* renamed from: com.apk.sh0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cdo {
        /* renamed from: do  reason: not valid java name */
        void mo2473do(@NotNull sh0 sh0Var);

        void execute(@NotNull Runnable runnable);

        /* renamed from: for  reason: not valid java name */
        long mo2474for();

        /* renamed from: if  reason: not valid java name */
        void mo2475if(@NotNull sh0 sh0Var, long j);
    }

    /* compiled from: TaskRunner.kt */
    /* renamed from: com.apk.sh0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cfor implements Cdo {

        /* renamed from: do  reason: not valid java name */
        public final ThreadPoolExecutor f4364do;

        public Cfor(@NotNull ThreadFactory threadFactory) {
            nd0.m1875new(threadFactory, "threadFactory");
            this.f4364do = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // com.apk.sh0.Cdo
        /* renamed from: do */
        public void mo2473do(@NotNull sh0 sh0Var) {
            nd0.m1875new(sh0Var, "taskRunner");
            sh0Var.notify();
        }

        @Override // com.apk.sh0.Cdo
        public void execute(@NotNull Runnable runnable) {
            nd0.m1875new(runnable, "runnable");
            this.f4364do.execute(runnable);
        }

        @Override // com.apk.sh0.Cdo
        /* renamed from: for */
        public long mo2474for() {
            return System.nanoTime();
        }

        @Override // com.apk.sh0.Cdo
        /* renamed from: if */
        public void mo2475if(@NotNull sh0 sh0Var, long j) throws InterruptedException {
            nd0.m1875new(sh0Var, "taskRunner");
            long j2 = j / 1000000;
            long j3 = j - (1000000 * j2);
            if (j2 > 0 || j > 0) {
                sh0Var.wait(j2, (int) j3);
            }
        }
    }

    /* compiled from: TaskRunner.kt */
    /* renamed from: com.apk.sh0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {
        public Cif(md0 md0Var) {
        }
    }

    /* compiled from: TaskRunner.kt */
    /* renamed from: com.apk.sh0$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cnew implements Runnable {
        public Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ph0 m2469for;
            while (true) {
                synchronized (sh0.this) {
                    m2469for = sh0.this.m2469for();
                }
                if (m2469for == null) {
                    return;
                }
                rh0 rh0Var = m2469for.f3656do;
                nd0.m1874if(rh0Var);
                long j = -1;
                Cif cif = sh0.f4354break;
                boolean isLoggable = sh0.f4356this.isLoggable(Level.FINE);
                if (isLoggable) {
                    j = rh0Var.f4056try.f4359else.mo2474for();
                    sb0.m2413for(m2469for, rh0Var, "starting");
                }
                try {
                    sh0.m2467do(sh0.this, m2469for);
                    if (isLoggable) {
                        long mo2474for = rh0Var.f4056try.f4359else.mo2474for() - j;
                        StringBuilder m1016super = Cgoto.m1016super("finished run in ");
                        m1016super.append(sb0.m2407default(mo2474for));
                        sb0.m2413for(m2469for, rh0Var, m1016super.toString());
                    }
                } finally {
                }
            }
        }
    }

    static {
        String str = jh0.f2336this + " TaskRunner";
        nd0.m1875new(str, "name");
        f4355goto = new sh0(new Cfor(new ih0(str, true)));
        Logger logger = Logger.getLogger(sh0.class.getName());
        nd0.m1872for(logger, "Logger.getLogger(TaskRunner::class.java.name)");
        f4356this = logger;
    }

    public sh0(@NotNull Cdo cdo) {
        nd0.m1875new(cdo, "backend");
        this.f4359else = cdo;
        this.f4358do = 10000;
        this.f4362new = new ArrayList();
        this.f4363try = new ArrayList();
        this.f4357case = new Cnew();
    }

    /* renamed from: do  reason: not valid java name */
    public static final void m2467do(sh0 sh0Var, ph0 ph0Var) {
        if (sh0Var != null) {
            if (jh0.f2333goto && Thread.holdsLock(sh0Var)) {
                StringBuilder m1016super = Cgoto.m1016super("Thread ");
                Thread currentThread = Thread.currentThread();
                nd0.m1872for(currentThread, "Thread.currentThread()");
                m1016super.append(currentThread.getName());
                m1016super.append(" MUST NOT hold lock on ");
                m1016super.append(sh0Var);
                throw new AssertionError(m1016super.toString());
            }
            Thread currentThread2 = Thread.currentThread();
            nd0.m1872for(currentThread2, "currentThread");
            String name = currentThread2.getName();
            currentThread2.setName(ph0Var.f3657for);
            try {
                long mo56do = ph0Var.mo56do();
                synchronized (sh0Var) {
                    sh0Var.m2470if(ph0Var, mo56do);
                }
                currentThread2.setName(name);
                return;
            } catch (Throwable th) {
                synchronized (sh0Var) {
                    sh0Var.m2470if(ph0Var, -1L);
                    currentThread2.setName(name);
                    throw th;
                }
            }
        }
        throw null;
    }

    @NotNull
    /* renamed from: case  reason: not valid java name */
    public final rh0 m2468case() {
        int i;
        synchronized (this) {
            i = this.f4358do;
            this.f4358do = i + 1;
        }
        StringBuilder sb = new StringBuilder();
        sb.append('Q');
        sb.append(i);
        return new rh0(this, sb.toString());
    }

    @Nullable
    /* renamed from: for  reason: not valid java name */
    public final ph0 m2469for() {
        boolean z;
        if (jh0.f2333goto && !Thread.holdsLock(this)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST hold lock on ");
            m1016super.append(this);
            throw new AssertionError(m1016super.toString());
        }
        while (true) {
            ph0 ph0Var = null;
            if (this.f4363try.isEmpty()) {
                return null;
            }
            long mo2474for = this.f4359else.mo2474for();
            long j = RecyclerView.FOREVER_NS;
            Iterator<rh0> it = this.f4363try.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                ph0 ph0Var2 = it.next().f4053for.get(0);
                long max = Math.max(0L, ph0Var2.f3658if - mo2474for);
                if (max > 0) {
                    j = Math.min(max, j);
                } else if (ph0Var != null) {
                    z = true;
                    break;
                } else {
                    ph0Var = ph0Var2;
                }
            }
            if (ph0Var != null) {
                if (jh0.f2333goto && !Thread.holdsLock(this)) {
                    StringBuilder m1016super2 = Cgoto.m1016super("Thread ");
                    Thread currentThread2 = Thread.currentThread();
                    nd0.m1872for(currentThread2, "Thread.currentThread()");
                    m1016super2.append(currentThread2.getName());
                    m1016super2.append(" MUST hold lock on ");
                    m1016super2.append(this);
                    throw new AssertionError(m1016super2.toString());
                }
                ph0Var.f3658if = -1L;
                rh0 rh0Var = ph0Var.f3656do;
                nd0.m1874if(rh0Var);
                rh0Var.f4053for.remove(ph0Var);
                this.f4363try.remove(rh0Var);
                rh0Var.f4054if = ph0Var;
                this.f4362new.add(rh0Var);
                if (z || (!this.f4361if && (!this.f4363try.isEmpty()))) {
                    this.f4359else.execute(this.f4357case);
                }
                return ph0Var;
            } else if (this.f4361if) {
                if (j < this.f4360for - mo2474for) {
                    this.f4359else.mo2473do(this);
                    return null;
                }
                return null;
            } else {
                this.f4361if = true;
                this.f4360for = mo2474for + j;
                try {
                    try {
                        this.f4359else.mo2475if(this, j);
                    } catch (InterruptedException unused) {
                        m2471new();
                    }
                } finally {
                    this.f4361if = false;
                }
            }
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final void m2470if(ph0 ph0Var, long j) {
        if (jh0.f2333goto && !Thread.holdsLock(this)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST hold lock on ");
            m1016super.append(this);
            throw new AssertionError(m1016super.toString());
        }
        rh0 rh0Var = ph0Var.f3656do;
        nd0.m1874if(rh0Var);
        if (rh0Var.f4054if == ph0Var) {
            boolean z = rh0Var.f4055new;
            rh0Var.f4055new = false;
            rh0Var.f4054if = null;
            this.f4362new.remove(rh0Var);
            if (j != -1 && !z && !rh0Var.f4052do) {
                rh0Var.m2273try(ph0Var, j, true);
            }
            if (!rh0Var.f4053for.isEmpty()) {
                this.f4363try.add(rh0Var);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* renamed from: new  reason: not valid java name */
    public final void m2471new() {
        for (int size = this.f4362new.size() - 1; size >= 0; size--) {
            this.f4362new.get(size).m2272if();
        }
        for (int size2 = this.f4363try.size() - 1; size2 >= 0; size2--) {
            rh0 rh0Var = this.f4363try.get(size2);
            rh0Var.m2272if();
            if (rh0Var.f4053for.isEmpty()) {
                this.f4363try.remove(size2);
            }
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final void m2472try(@NotNull rh0 rh0Var) {
        nd0.m1875new(rh0Var, "taskQueue");
        if (jh0.f2333goto && !Thread.holdsLock(this)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST hold lock on ");
            m1016super.append(this);
            throw new AssertionError(m1016super.toString());
        }
        if (rh0Var.f4054if == null) {
            if (!rh0Var.f4053for.isEmpty()) {
                List<rh0> list = this.f4363try;
                nd0.m1875new(list, "$this$addIfAbsent");
                if (!list.contains(rh0Var)) {
                    list.add(rh0Var);
                }
            } else {
                this.f4363try.remove(rh0Var);
            }
        }
        if (this.f4361if) {
            this.f4359else.mo2473do(this);
        } else {
            this.f4359else.execute(this.f4357case);
        }
    }
}
