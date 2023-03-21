package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Queue;

/* compiled from: ModelCache.java */
/* loaded from: classes8.dex */
public class xm<A, B> {

    /* renamed from: do  reason: not valid java name */
    public final ds<Cif<A>, B> f5696do;

    /* compiled from: ModelCache.java */
    /* renamed from: com.apk.xm$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends ds<Cif<A>, B> {
        public Cdo(xm xmVar, long j) {
            super(j);
        }

        @Override // com.apk.ds
        /* renamed from: for */
        public void mo512for(@NonNull Object obj, @Nullable Object obj2) {
            Cif<?> cif = (Cif) obj;
            if (cif != null) {
                synchronized (Cif.f5697new) {
                    Cif.f5697new.offer(cif);
                }
                return;
            }
            throw null;
        }
    }

    /* compiled from: ModelCache.java */
    @VisibleForTesting
    /* renamed from: com.apk.xm$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif<A> {

        /* renamed from: new  reason: not valid java name */
        public static final Queue<Cif<?>> f5697new = gs.m1041new(0);

        /* renamed from: do  reason: not valid java name */
        public int f5698do;

        /* renamed from: for  reason: not valid java name */
        public A f5699for;

        /* renamed from: if  reason: not valid java name */
        public int f5700if;

        /* renamed from: do  reason: not valid java name */
        public static <A> Cif<A> m3027do(A a2, int i, int i2) {
            Cif<A> cif;
            synchronized (f5697new) {
                cif = (Cif<A>) f5697new.poll();
            }
            if (cif == null) {
                cif = new Cif<>();
            }
            cif.f5699for = a2;
            cif.f5700if = i;
            cif.f5698do = i2;
            return cif;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cif) {
                Cif cif = (Cif) obj;
                return this.f5700if == cif.f5700if && this.f5698do == cif.f5698do && this.f5699for.equals(cif.f5699for);
            }
            return false;
        }

        public int hashCode() {
            return this.f5699for.hashCode() + (((this.f5698do * 31) + this.f5700if) * 31);
        }
    }

    public xm(long j) {
        this.f5696do = new Cdo(this, j);
    }
}
