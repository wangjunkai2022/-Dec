package com.apk;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.apk.al;
import com.apk.hm;
import com.apk.hs;
import com.apk.kk;
import com.apk.sk;
import com.apk.zl;
import java.io.File;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: Engine.java */
/* loaded from: classes8.dex */
public class vk implements xk, hm.Cdo, al.Cdo {

    /* renamed from: this  reason: not valid java name */
    public static final boolean f5132this = Log.isLoggable("Engine", 2);

    /* renamed from: case  reason: not valid java name */
    public final Cfor f5133case;

    /* renamed from: do  reason: not valid java name */
    public final dl f5134do;

    /* renamed from: else  reason: not valid java name */
    public final Cdo f5135else;

    /* renamed from: for  reason: not valid java name */
    public final hm f5136for;

    /* renamed from: goto  reason: not valid java name */
    public final kk f5137goto;

    /* renamed from: if  reason: not valid java name */
    public final zk f5138if;

    /* renamed from: new  reason: not valid java name */
    public final Cif f5139new;

    /* renamed from: try  reason: not valid java name */
    public final jl f5140try;

    /* compiled from: Engine.java */
    @VisibleForTesting
    /* renamed from: com.apk.vk$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {

        /* renamed from: do  reason: not valid java name */
        public final sk.Cnew f5141do;

        /* renamed from: for  reason: not valid java name */
        public int f5142for;

        /* renamed from: if  reason: not valid java name */
        public final Pools.Pool<sk<?>> f5143if = hs.m1168do(150, new C0077do());

        /* compiled from: Engine.java */
        /* renamed from: com.apk.vk$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0077do implements hs.Cif<sk<?>> {
            public C0077do() {
            }

            @Override // com.apk.hs.Cif
            /* renamed from: do */
            public sk<?> mo848do() {
                Cdo cdo = Cdo.this;
                return new sk<>(cdo.f5141do, cdo.f5143if);
            }
        }

        public Cdo(sk.Cnew cnew) {
            this.f5141do = cnew;
        }
    }

    /* compiled from: Engine.java */
    /* renamed from: com.apk.vk$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor implements sk.Cnew {

        /* renamed from: do  reason: not valid java name */
        public final zl.Cdo f5145do;

        /* renamed from: if  reason: not valid java name */
        public volatile zl f5146if;

        public Cfor(zl.Cdo cdo) {
            this.f5145do = cdo;
        }

        /* renamed from: do  reason: not valid java name */
        public zl m2822do() {
            if (this.f5146if == null) {
                synchronized (this) {
                    if (this.f5146if == null) {
                        cm cmVar = (cm) this.f5145do;
                        File mo364do = cmVar.f667if.mo364do();
                        dm dmVar = null;
                        if (mo364do != null && (mo364do.mkdirs() || (mo364do.exists() && mo364do.isDirectory()))) {
                            dmVar = new dm(mo364do, cmVar.f666do);
                        }
                        this.f5146if = dmVar;
                    }
                    if (this.f5146if == null) {
                        this.f5146if = new am();
                    }
                }
            }
            return this.f5146if;
        }
    }

    /* compiled from: Engine.java */
    @VisibleForTesting
    /* renamed from: com.apk.vk$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: case  reason: not valid java name */
        public final al.Cdo f5147case;

        /* renamed from: do  reason: not valid java name */
        public final km f5148do;

        /* renamed from: else  reason: not valid java name */
        public final Pools.Pool<wk<?>> f5149else = hs.m1168do(150, new Cdo());

        /* renamed from: for  reason: not valid java name */
        public final km f5150for;

        /* renamed from: if  reason: not valid java name */
        public final km f5151if;

        /* renamed from: new  reason: not valid java name */
        public final km f5152new;

        /* renamed from: try  reason: not valid java name */
        public final xk f5153try;

        /* compiled from: Engine.java */
        /* renamed from: com.apk.vk$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements hs.Cif<wk<?>> {
            public Cdo() {
            }

            @Override // com.apk.hs.Cif
            /* renamed from: do */
            public wk<?> mo848do() {
                Cif cif = Cif.this;
                return new wk<>(cif.f5148do, cif.f5151if, cif.f5150for, cif.f5152new, cif.f5153try, cif.f5147case, cif.f5149else);
            }
        }

        public Cif(km kmVar, km kmVar2, km kmVar3, km kmVar4, xk xkVar, al.Cdo cdo) {
            this.f5148do = kmVar;
            this.f5151if = kmVar2;
            this.f5150for = kmVar3;
            this.f5152new = kmVar4;
            this.f5153try = xkVar;
            this.f5147case = cdo;
        }
    }

    /* compiled from: Engine.java */
    /* renamed from: com.apk.vk$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew {

        /* renamed from: do  reason: not valid java name */
        public final wk<?> f5155do;

        /* renamed from: if  reason: not valid java name */
        public final er f5157if;

        public Cnew(er erVar, wk<?> wkVar) {
            this.f5157if = erVar;
            this.f5155do = wkVar;
        }
    }

    public vk(hm hmVar, zl.Cdo cdo, km kmVar, km kmVar2, km kmVar3, km kmVar4, boolean z) {
        this.f5136for = hmVar;
        this.f5133case = new Cfor(cdo);
        kk kkVar = new kk(z);
        this.f5137goto = kkVar;
        synchronized (this) {
            synchronized (kkVar) {
                kkVar.f2580new = this;
            }
        }
        this.f5138if = new zk();
        this.f5134do = new dl();
        this.f5139new = new Cif(kmVar, kmVar2, kmVar3, kmVar4, this, this);
        this.f5135else = new Cdo(this.f5133case);
        this.f5140try = new jl();
        ((gm) hmVar).f1609new = this;
    }

    /* renamed from: new  reason: not valid java name */
    public static void m2816new(String str, long j, kj kjVar) {
        StringBuilder m1025while = Cgoto.m1025while(str, " in ");
        m1025while.append(cs.m395do(j));
        m1025while.append("ms, key: ");
        m1025while.append(kjVar);
        m1025while.toString();
    }

    /* renamed from: case  reason: not valid java name */
    public void m2817case(gl<?> glVar) {
        if (glVar instanceof al) {
            ((al) glVar).m69try();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    @Override // com.apk.al.Cdo
    /* renamed from: do */
    public void mo70do(kj kjVar, al<?> alVar) {
        kk kkVar = this.f5137goto;
        synchronized (kkVar) {
            kk.Cif remove = kkVar.f2579if.remove(kjVar);
            if (remove != null) {
                remove.f2583for = null;
                remove.clear();
            }
        }
        if (alVar.f115do) {
            ((gm) this.f5136for).m981case(kjVar, alVar);
        } else {
            this.f5140try.m1356do(alVar, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e8 A[Catch: all -> 0x0112, TryCatch #0 {, blocks: (B:21:0x00d2, B:23:0x00de, B:29:0x00e8, B:37:0x00fb, B:30:0x00eb, B:32:0x00ef, B:33:0x00f2, B:35:0x00f6, B:36:0x00f9), top: B:52:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00eb A[Catch: all -> 0x0112, TryCatch #0 {, blocks: (B:21:0x00d2, B:23:0x00de, B:29:0x00e8, B:37:0x00fb, B:30:0x00eb, B:32:0x00ef, B:33:0x00f2, B:35:0x00f6, B:36:0x00f9), top: B:52:0x00d2 }] */
    /* renamed from: else  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <R> com.apk.vk.Cnew m2818else(com.apk.li r17, java.lang.Object r18, com.apk.kj r19, int r20, int r21, java.lang.Class<?> r22, java.lang.Class<R> r23, com.apk.ni r24, com.apk.uk r25, java.util.Map<java.lang.Class<?>, com.apk.qj<?>> r26, boolean r27, boolean r28, com.apk.mj r29, boolean r30, boolean r31, boolean r32, boolean r33, com.apk.er r34, java.util.concurrent.Executor r35, com.apk.yk r36, long r37) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.vk.m2818else(com.apk.li, java.lang.Object, com.apk.kj, int, int, java.lang.Class, java.lang.Class, com.apk.ni, com.apk.uk, java.util.Map, boolean, boolean, com.apk.mj, boolean, boolean, boolean, boolean, com.apk.er, java.util.concurrent.Executor, com.apk.yk, long):com.apk.vk$new");
    }

    @Nullable
    /* renamed from: for  reason: not valid java name */
    public final al<?> m2819for(yk ykVar, boolean z, long j) {
        al<?> alVar;
        Object remove;
        al<?> alVar2;
        if (z) {
            kk kkVar = this.f5137goto;
            synchronized (kkVar) {
                kk.Cif cif = kkVar.f2579if.get(ykVar);
                if (cif == null) {
                    alVar = null;
                } else {
                    alVar = cif.get();
                    if (alVar == null) {
                        kkVar.m1513if(cif);
                    }
                }
            }
            if (alVar != null) {
                alVar.m67if();
            }
            if (alVar != null) {
                if (f5132this) {
                    m2816new("Loaded resource from active resources", j, ykVar);
                }
                return alVar;
            }
            gm gmVar = (gm) this.f5136for;
            synchronized (gmVar) {
                remove = gmVar.f958do.remove(ykVar);
                if (remove != null) {
                    gmVar.f959for -= gmVar.mo513if(remove);
                }
            }
            gl glVar = (gl) remove;
            if (glVar == null) {
                alVar2 = null;
            } else if (glVar instanceof al) {
                alVar2 = (al) glVar;
            } else {
                alVar2 = new al<>(glVar, true, true, ykVar, this);
            }
            if (alVar2 != null) {
                alVar2.m67if();
                this.f5137goto.m1512do(ykVar, alVar2);
            }
            if (alVar2 != null) {
                if (f5132this) {
                    m2816new("Loaded resource from cache", j, ykVar);
                }
                return alVar2;
            }
            return null;
        }
        return null;
    }

    /* renamed from: if  reason: not valid java name */
    public <R> Cnew m2820if(li liVar, Object obj, kj kjVar, int i, int i2, Class<?> cls, Class<R> cls2, ni niVar, uk ukVar, Map<Class<?>, qj<?>> map, boolean z, boolean z2, mj mjVar, boolean z3, boolean z4, boolean z5, boolean z6, er erVar, Executor executor) {
        long m396if = f5132this ? cs.m396if() : 0L;
        if (this.f5138if != null) {
            yk ykVar = new yk(obj, kjVar, i, i2, map, cls, cls2, mjVar);
            synchronized (this) {
                al<?> m2819for = m2819for(ykVar, z3, m396if);
                if (m2819for == null) {
                    return m2818else(liVar, obj, kjVar, i, i2, cls, cls2, niVar, ukVar, map, z, z2, mjVar, z3, z4, z5, z6, erVar, executor, ykVar, m396if);
                }
                ((fr) erVar).m883final(m2819for, dj.MEMORY_CACHE);
                return null;
            }
        }
        throw null;
    }

    /* renamed from: try  reason: not valid java name */
    public synchronized void m2821try(wk<?> wkVar, kj kjVar, al<?> alVar) {
        if (alVar != null) {
            if (alVar.f115do) {
                this.f5137goto.m1512do(kjVar, alVar);
            }
        }
        dl dlVar = this.f5134do;
        if (dlVar != null) {
            Map<kj, wk<?>> m476do = dlVar.m476do(wkVar.f5339throw);
            if (wkVar.equals(m476do.get(kjVar))) {
                m476do.remove(kjVar);
            }
        } else {
            throw null;
        }
    }
}
