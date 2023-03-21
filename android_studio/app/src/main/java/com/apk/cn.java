package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.apk.oi;
import com.apk.ym;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: MultiModelLoaderFactory.java */
/* loaded from: classes8.dex */
public class cn {

    /* renamed from: do  reason: not valid java name */
    public final List<Cif<?, ?>> f677do;

    /* renamed from: for  reason: not valid java name */
    public final Set<Cif<?, ?>> f678for;

    /* renamed from: if  reason: not valid java name */
    public final Cfor f679if;

    /* renamed from: new  reason: not valid java name */
    public final Pools.Pool<List<Throwable>> f680new;

    /* renamed from: try  reason: not valid java name */
    public static final Cfor f676try = new Cfor();

    /* renamed from: case  reason: not valid java name */
    public static final ym<Object, Object> f675case = new Cdo();

    /* compiled from: MultiModelLoaderFactory.java */
    /* renamed from: com.apk.cn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements ym<Object, Object> {
        @Override // com.apk.ym
        /* renamed from: do */
        public boolean mo52do(@NonNull Object obj) {
            return false;
        }

        @Override // com.apk.ym
        @Nullable
        /* renamed from: if */
        public ym.Cdo<Object> mo53if(@NonNull Object obj, int i, int i2, @NonNull mj mjVar) {
            return null;
        }
    }

    /* compiled from: MultiModelLoaderFactory.java */
    /* renamed from: com.apk.cn$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor {
    }

    /* compiled from: MultiModelLoaderFactory.java */
    /* renamed from: com.apk.cn$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif<Model, Data> {

        /* renamed from: do  reason: not valid java name */
        public final Class<Model> f681do;

        /* renamed from: for  reason: not valid java name */
        public final zm<? extends Model, ? extends Data> f682for;

        /* renamed from: if  reason: not valid java name */
        public final Class<Data> f683if;

        public Cif(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull zm<? extends Model, ? extends Data> zmVar) {
            this.f681do = cls;
            this.f683if = cls2;
            this.f682for = zmVar;
        }

        /* renamed from: do  reason: not valid java name */
        public boolean m372do(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f681do.isAssignableFrom(cls) && this.f683if.isAssignableFrom(cls2);
        }
    }

    public cn(@NonNull Pools.Pool<List<Throwable>> pool) {
        Cfor cfor = f676try;
        this.f677do = new ArrayList();
        this.f678for = new HashSet();
        this.f680new = pool;
        this.f679if = cfor;
    }

    @NonNull
    /* renamed from: case  reason: not valid java name */
    public synchronized <Model, Data> List<zm<? extends Model, ? extends Data>> m366case(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<Cif<?, ?>> it = this.f677do.iterator();
        while (it.hasNext()) {
            Cif<?, ?> next = it.next();
            if (next.m372do(cls, cls2)) {
                it.remove();
                arrayList.add(next.f682for);
            }
        }
        return arrayList;
    }

    /* renamed from: do  reason: not valid java name */
    public synchronized <Model, Data> void m367do(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull zm<? extends Model, ? extends Data> zmVar) {
        Cif<?, ?> cif = new Cif<>(cls, cls2, zmVar);
        List<Cif<?, ?>> list = this.f677do;
        list.add(list.size(), cif);
    }

    @NonNull
    /* renamed from: for  reason: not valid java name */
    public synchronized <Model, Data> ym<Model, Data> m368for(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (Cif<?, ?> cif : this.f677do) {
                if (this.f678for.contains(cif)) {
                    z = true;
                } else if (cif.m372do(cls, cls2)) {
                    this.f678for.add(cif);
                    arrayList.add(m369if(cif));
                    this.f678for.remove(cif);
                }
            }
            if (arrayList.size() > 1) {
                Cfor cfor = this.f679if;
                Pools.Pool<List<Throwable>> pool = this.f680new;
                if (cfor != null) {
                    return new bn(arrayList, pool);
                }
                throw null;
            } else if (arrayList.size() == 1) {
                return (ym) arrayList.get(0);
            } else if (z) {
                return (ym<Model, Data>) f675case;
            } else {
                throw new oi.Cfor((Class<?>) cls, (Class<?>) cls2);
            }
        } catch (Throwable th) {
            this.f678for.clear();
            throw th;
        }
    }

    @NonNull
    /* renamed from: if  reason: not valid java name */
    public final <Model, Data> ym<Model, Data> m369if(@NonNull Cif<?, ?> cif) {
        ym<Model, Data> ymVar = (ym<Model, Data>) cif.f682for.mo55for(this);
        eg.m593else(ymVar, "Argument must not be null");
        return ymVar;
    }

    @NonNull
    /* renamed from: new  reason: not valid java name */
    public synchronized <Model> List<ym<Model, ?>> m370new(@NonNull Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (Cif<?, ?> cif : this.f677do) {
                if (!this.f678for.contains(cif) && cif.f681do.isAssignableFrom(cls)) {
                    this.f678for.add(cif);
                    ym<? extends Object, ? extends Object> mo55for = cif.f682for.mo55for(this);
                    eg.m593else(mo55for, "Argument must not be null");
                    arrayList.add(mo55for);
                    this.f678for.remove(cif);
                }
            }
        } catch (Throwable th) {
            this.f678for.clear();
            throw th;
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: try  reason: not valid java name */
    public synchronized List<Class<?>> m371try(@NonNull Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (Cif<?, ?> cif : this.f677do) {
            if (!arrayList.contains(cif.f683if) && cif.f681do.isAssignableFrom(cls)) {
                arrayList.add(cif.f683if);
            }
        }
        return arrayList;
    }
}
