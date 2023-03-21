package com.apk;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.apk.ks;
/* compiled from: FactoryPools.java */
/* loaded from: classes8.dex */
public final class hs {

    /* renamed from: do  reason: not valid java name */
    public static final Ctry<Object> f1978do = new Cdo();

    /* compiled from: FactoryPools.java */
    /* renamed from: com.apk.hs$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Ctry<Object> {
        @Override // com.apk.hs.Ctry
        /* renamed from: do  reason: not valid java name */
        public void mo1169do(@NonNull Object obj) {
        }
    }

    /* compiled from: FactoryPools.java */
    /* renamed from: com.apk.hs$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cfor<T> implements Pools.Pool<T> {

        /* renamed from: do  reason: not valid java name */
        public final Cif<T> f1979do;

        /* renamed from: for  reason: not valid java name */
        public final Pools.Pool<T> f1980for;

        /* renamed from: if  reason: not valid java name */
        public final Ctry<T> f1981if;

        public Cfor(@NonNull Pools.Pool<T> pool, @NonNull Cif<T> cif, @NonNull Ctry<T> ctry) {
            this.f1980for = pool;
            this.f1979do = cif;
            this.f1981if = ctry;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            T acquire = this.f1980for.acquire();
            if (acquire == null) {
                acquire = this.f1979do.mo848do();
                if (Log.isLoggable("FactoryPools", 2)) {
                    StringBuilder m1016super = Cgoto.m1016super("Created new ");
                    m1016super.append(acquire.getClass());
                    m1016super.toString();
                }
            }
            if (acquire instanceof Cnew) {
                ((ks.Cif) ((Cnew) acquire).mo847if()).f2660do = false;
            }
            return acquire;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t) {
            if (t instanceof Cnew) {
                ((ks.Cif) ((Cnew) t).mo847if()).f2660do = true;
            }
            this.f1981if.mo1169do(t);
            return this.f1980for.release(t);
        }
    }

    /* compiled from: FactoryPools.java */
    /* renamed from: com.apk.hs$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif<T> {
        /* renamed from: do */
        T mo848do();
    }

    /* compiled from: FactoryPools.java */
    /* renamed from: com.apk.hs$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cnew {
        @NonNull
        /* renamed from: if */
        ks mo847if();
    }

    /* compiled from: FactoryPools.java */
    /* renamed from: com.apk.hs$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Ctry<T> {
        /* renamed from: do */
        void mo1169do(@NonNull T t);
    }

    @NonNull
    /* renamed from: do  reason: not valid java name */
    public static <T extends Cnew> Pools.Pool<T> m1168do(int i, @NonNull Cif<T> cif) {
        return new Cfor(new Pools.SynchronizedPool(i), cif, f1978do);
    }
}
