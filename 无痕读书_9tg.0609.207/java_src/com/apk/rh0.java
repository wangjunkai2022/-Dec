package com.apk;

import com.apk.sh0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TaskQueue.kt */
/* loaded from: classes7.dex */
public final class rh0 {
    @NotNull

    /* renamed from: case  reason: not valid java name */
    public final String f4051case;

    /* renamed from: do  reason: not valid java name */
    public boolean f4052do;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final List<ph0> f4053for;
    @Nullable

    /* renamed from: if  reason: not valid java name */
    public ph0 f4054if;

    /* renamed from: new  reason: not valid java name */
    public boolean f4055new;
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public final sh0 f4056try;

    public rh0(@NotNull sh0 sh0Var, @NotNull String str) {
        nd0.m1875new(sh0Var, "taskRunner");
        nd0.m1875new(str, "name");
        this.f4056try = sh0Var;
        this.f4051case = str;
        this.f4053for = new ArrayList();
    }

    /* renamed from: new  reason: not valid java name */
    public static /* synthetic */ void m2268new(rh0 rh0Var, ph0 ph0Var, long j, int i) {
        if ((i & 2) != 0) {
            j = 0;
        }
        rh0Var.m2271for(ph0Var, j);
    }

    /* renamed from: case  reason: not valid java name */
    public final void m2269case() {
        if (jh0.f2333goto && Thread.holdsLock(this)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST NOT hold lock on ");
            m1016super.append(this);
            throw new AssertionError(m1016super.toString());
        }
        synchronized (this.f4056try) {
            this.f4052do = true;
            if (m2272if()) {
                this.f4056try.m2472try(this);
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final void m2270do() {
        if (jh0.f2333goto && Thread.holdsLock(this)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST NOT hold lock on ");
            m1016super.append(this);
            throw new AssertionError(m1016super.toString());
        }
        synchronized (this.f4056try) {
            if (m2272if()) {
                this.f4056try.m2472try(this);
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m2271for(@NotNull ph0 ph0Var, long j) {
        nd0.m1875new(ph0Var, "task");
        synchronized (this.f4056try) {
            if (this.f4052do) {
                if (ph0Var.f3659new) {
                    if (sh0.f4354break != null) {
                        if (sh0.f4356this.isLoggable(Level.FINE)) {
                            sb0.m2413for(ph0Var, this, "schedule canceled (queue is shutdown)");
                        }
                        return;
                    }
                    throw null;
                } else if (sh0.f4354break != null) {
                    if (sh0.f4356this.isLoggable(Level.FINE)) {
                        sb0.m2413for(ph0Var, this, "schedule failed (queue is shutdown)");
                    }
                    throw new RejectedExecutionException();
                } else {
                    throw null;
                }
            }
            if (m2273try(ph0Var, j, false)) {
                this.f4056try.m2472try(this);
            }
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m2272if() {
        ph0 ph0Var = this.f4054if;
        if (ph0Var != null) {
            nd0.m1874if(ph0Var);
            if (ph0Var.f3659new) {
                this.f4055new = true;
            }
        }
        boolean z = false;
        for (int size = this.f4053for.size() - 1; size >= 0; size--) {
            if (this.f4053for.get(size).f3659new) {
                ph0 ph0Var2 = this.f4053for.get(size);
                if (sh0.f4354break != null) {
                    if (sh0.f4356this.isLoggable(Level.FINE)) {
                        sb0.m2413for(ph0Var2, this, "canceled");
                    }
                    this.f4053for.remove(size);
                    z = true;
                } else {
                    throw null;
                }
            }
        }
        return z;
    }

    @NotNull
    public String toString() {
        return this.f4051case;
    }

    /* renamed from: try  reason: not valid java name */
    public final boolean m2273try(@NotNull ph0 ph0Var, long j, boolean z) {
        String sb;
        nd0.m1875new(ph0Var, "task");
        nd0.m1875new(this, "queue");
        rh0 rh0Var = ph0Var.f3656do;
        if (rh0Var != this) {
            if (rh0Var == null) {
                ph0Var.f3656do = this;
            } else {
                throw new IllegalStateException("task is in multiple queues".toString());
            }
        }
        long mo2474for = this.f4056try.f4359else.mo2474for();
        long j2 = mo2474for + j;
        int indexOf = this.f4053for.indexOf(ph0Var);
        if (indexOf != -1) {
            if (ph0Var.f3658if <= j2) {
                sh0.Cif cif = sh0.f4354break;
                if (sh0.f4356this.isLoggable(Level.FINE)) {
                    sb0.m2413for(ph0Var, this, "already scheduled");
                }
                return false;
            }
            this.f4053for.remove(indexOf);
        }
        ph0Var.f3658if = j2;
        sh0.Cif cif2 = sh0.f4354break;
        if (sh0.f4356this.isLoggable(Level.FINE)) {
            if (z) {
                StringBuilder m1016super = Cgoto.m1016super("run again after ");
                m1016super.append(sb0.m2407default(j2 - mo2474for));
                sb = m1016super.toString();
            } else {
                StringBuilder m1016super2 = Cgoto.m1016super("scheduled after ");
                m1016super2.append(sb0.m2407default(j2 - mo2474for));
                sb = m1016super2.toString();
            }
            sb0.m2413for(ph0Var, this, sb);
        }
        Iterator<ph0> it = this.f4053for.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (it.next().f3658if - mo2474for > j) {
                break;
            }
            i++;
        }
        if (i == -1) {
            i = this.f4053for.size();
        }
        this.f4053for.add(i, ph0Var);
        return i == 0;
    }
}
