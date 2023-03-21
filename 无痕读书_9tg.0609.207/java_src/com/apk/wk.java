package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.apk.al;
import com.apk.hs;
import com.apk.ks;
import com.apk.sk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: EngineJob.java */
/* loaded from: classes8.dex */
public class wk<R> implements sk.Cdo<R>, hs.Cnew {

    /* renamed from: default  reason: not valid java name */
    public static final Cfor f5318default = new Cfor();

    /* renamed from: break  reason: not valid java name */
    public final km f5319break;

    /* renamed from: case  reason: not valid java name */
    public final xk f5320case;

    /* renamed from: catch  reason: not valid java name */
    public final AtomicInteger f5321catch;

    /* renamed from: class  reason: not valid java name */
    public kj f5322class;

    /* renamed from: const  reason: not valid java name */
    public boolean f5323const;

    /* renamed from: do  reason: not valid java name */
    public final Ctry f5324do;

    /* renamed from: else  reason: not valid java name */
    public final km f5325else;

    /* renamed from: final  reason: not valid java name */
    public boolean f5326final;

    /* renamed from: for  reason: not valid java name */
    public final al.Cdo f5327for;

    /* renamed from: goto  reason: not valid java name */
    public final km f5328goto;

    /* renamed from: if  reason: not valid java name */
    public final ks f5329if;

    /* renamed from: import  reason: not valid java name */
    public dj f5330import;

    /* renamed from: native  reason: not valid java name */
    public boolean f5331native;

    /* renamed from: new  reason: not valid java name */
    public final Pools.Pool<wk<?>> f5332new;

    /* renamed from: public  reason: not valid java name */
    public bl f5333public;

    /* renamed from: return  reason: not valid java name */
    public boolean f5334return;

    /* renamed from: static  reason: not valid java name */
    public al<?> f5335static;

    /* renamed from: super  reason: not valid java name */
    public boolean f5336super;

    /* renamed from: switch  reason: not valid java name */
    public sk<R> f5337switch;

    /* renamed from: this  reason: not valid java name */
    public final km f5338this;

    /* renamed from: throw  reason: not valid java name */
    public boolean f5339throw;

    /* renamed from: throws  reason: not valid java name */
    public volatile boolean f5340throws;

    /* renamed from: try  reason: not valid java name */
    public final Cfor f5341try;

    /* renamed from: while  reason: not valid java name */
    public gl<?> f5342while;

    /* compiled from: EngineJob.java */
    /* renamed from: com.apk.wk$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final er f5343do;

        public Cdo(er erVar) {
            this.f5343do = erVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            fr frVar = (fr) this.f5343do;
            frVar.f1438if.mo1555do();
            synchronized (frVar.f1436for) {
                synchronized (wk.this) {
                    if (wk.this.f5324do.f5349do.contains(new Cnew(this.f5343do, as.f160if))) {
                        wk wkVar = wk.this;
                        er erVar = this.f5343do;
                        if (wkVar != null) {
                            ((fr) erVar).m880const(wkVar.f5333public, 5);
                        } else {
                            throw null;
                        }
                    }
                    wk.this.m2920new();
                }
            }
        }
    }

    /* compiled from: EngineJob.java */
    @VisibleForTesting
    /* renamed from: com.apk.wk$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor {
    }

    /* compiled from: EngineJob.java */
    /* renamed from: com.apk.wk$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final er f5345do;

        public Cif(er erVar) {
            this.f5345do = erVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            fr frVar = (fr) this.f5345do;
            frVar.f1438if.mo1555do();
            synchronized (frVar.f1436for) {
                synchronized (wk.this) {
                    if (wk.this.f5324do.f5349do.contains(new Cnew(this.f5345do, as.f160if))) {
                        wk.this.f5335static.m67if();
                        wk wkVar = wk.this;
                        er erVar = this.f5345do;
                        if (wkVar != null) {
                            ((fr) erVar).m883final(wkVar.f5335static, wkVar.f5330import);
                            wk.this.m2919goto(this.f5345do);
                        } else {
                            throw null;
                        }
                    }
                    wk.this.m2920new();
                }
            }
        }
    }

    /* compiled from: EngineJob.java */
    /* renamed from: com.apk.wk$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cnew {

        /* renamed from: do  reason: not valid java name */
        public final er f5347do;

        /* renamed from: if  reason: not valid java name */
        public final Executor f5348if;

        public Cnew(er erVar, Executor executor) {
            this.f5347do = erVar;
            this.f5348if = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cnew) {
                return this.f5347do.equals(((Cnew) obj).f5347do);
            }
            return false;
        }

        public int hashCode() {
            return this.f5347do.hashCode();
        }
    }

    /* compiled from: EngineJob.java */
    /* renamed from: com.apk.wk$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Ctry implements Iterable<Cnew> {

        /* renamed from: do  reason: not valid java name */
        public final List<Cnew> f5349do = new ArrayList(2);

        public boolean isEmpty() {
            return this.f5349do.isEmpty();
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<Cnew> iterator() {
            return this.f5349do.iterator();
        }
    }

    public wk(km kmVar, km kmVar2, km kmVar3, km kmVar4, xk xkVar, al.Cdo cdo, Pools.Pool<wk<?>> pool) {
        Cfor cfor = f5318default;
        this.f5324do = new Ctry();
        this.f5329if = new ks.Cif();
        this.f5321catch = new AtomicInteger();
        this.f5325else = kmVar;
        this.f5328goto = kmVar2;
        this.f5338this = kmVar3;
        this.f5319break = kmVar4;
        this.f5320case = xkVar;
        this.f5327for = cdo;
        this.f5332new = pool;
        this.f5341try = cfor;
    }

    /* renamed from: case  reason: not valid java name */
    public final boolean m2915case() {
        return this.f5334return || this.f5331native || this.f5340throws;
    }

    /* renamed from: do  reason: not valid java name */
    public synchronized void m2916do(er erVar, Executor executor) {
        this.f5329if.mo1555do();
        this.f5324do.f5349do.add(new Cnew(erVar, executor));
        boolean z = true;
        if (this.f5331native) {
            m2922try(1);
            executor.execute(new Cif(erVar));
        } else if (this.f5334return) {
            m2922try(1);
            executor.execute(new Cdo(erVar));
        } else {
            if (this.f5340throws) {
                z = false;
            }
            eg.m620try(z, "Cannot add callbacks to a cancelled EngineJob");
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final synchronized void m2917else() {
        boolean m2507do;
        if (this.f5322class != null) {
            this.f5324do.f5349do.clear();
            this.f5322class = null;
            this.f5335static = null;
            this.f5342while = null;
            this.f5334return = false;
            this.f5340throws = false;
            this.f5331native = false;
            sk<R> skVar = this.f5337switch;
            sk.Ctry ctry = skVar.f4408else;
            synchronized (ctry) {
                ctry.f4446do = true;
                m2507do = ctry.m2507do(false);
            }
            if (m2507do) {
                skVar.m2499class();
            }
            this.f5337switch = null;
            this.f5333public = null;
            this.f5330import = null;
            this.f5332new.release(this);
        } else {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m2918for() {
        if (m2915case()) {
            return;
        }
        this.f5340throws = true;
        sk<R> skVar = this.f5337switch;
        skVar.f4405continue = true;
        qk qkVar = skVar.f4419private;
        if (qkVar != null) {
            qkVar.cancel();
        }
        xk xkVar = this.f5320case;
        kj kjVar = this.f5322class;
        vk vkVar = (vk) xkVar;
        synchronized (vkVar) {
            dl dlVar = vkVar.f5134do;
            if (dlVar != null) {
                Map<kj, wk<?>> m476do = dlVar.m476do(this.f5339throw);
                if (equals(m476do.get(kjVar))) {
                    m476do.remove(kjVar);
                }
            } else {
                throw null;
            }
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public synchronized void m2919goto(er erVar) {
        boolean z;
        this.f5329if.mo1555do();
        this.f5324do.f5349do.remove(new Cnew(erVar, as.f160if));
        if (this.f5324do.isEmpty()) {
            m2918for();
            if (!this.f5331native && !this.f5334return) {
                z = false;
                if (z && this.f5321catch.get() == 0) {
                    m2917else();
                }
            }
            z = true;
            if (z) {
                m2917else();
            }
        }
    }

    @Override // com.apk.hs.Cnew
    @NonNull
    /* renamed from: if */
    public ks mo847if() {
        return this.f5329if;
    }

    /* renamed from: new  reason: not valid java name */
    public void m2920new() {
        al<?> alVar;
        synchronized (this) {
            this.f5329if.mo1555do();
            eg.m620try(m2915case(), "Not yet complete!");
            int decrementAndGet = this.f5321catch.decrementAndGet();
            eg.m620try(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                alVar = this.f5335static;
                m2917else();
            } else {
                alVar = null;
            }
        }
        if (alVar != null) {
            alVar.m69try();
        }
    }

    /* renamed from: this  reason: not valid java name */
    public void m2921this(sk<?> skVar) {
        km kmVar;
        if (this.f5326final) {
            kmVar = this.f5338this;
        } else {
            kmVar = this.f5336super ? this.f5319break : this.f5328goto;
        }
        kmVar.f2590do.execute(skVar);
    }

    /* renamed from: try  reason: not valid java name */
    public synchronized void m2922try(int i) {
        eg.m620try(m2915case(), "Not yet complete!");
        if (this.f5321catch.getAndAdd(i) == 0 && this.f5335static != null) {
            this.f5335static.m67if();
        }
    }
}
