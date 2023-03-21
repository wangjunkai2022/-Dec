package com.apk;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: ModelLoaderRegistry.java */
/* loaded from: classes8.dex */
public class an {

    /* renamed from: do  reason: not valid java name */
    public final cn f123do;

    /* renamed from: if  reason: not valid java name */
    public final Cdo f124if;

    /* compiled from: ModelLoaderRegistry.java */
    /* renamed from: com.apk.an$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {

        /* renamed from: do  reason: not valid java name */
        public final Map<Class<?>, C0060do<?>> f125do = new HashMap();

        /* compiled from: ModelLoaderRegistry.java */
        /* renamed from: com.apk.an$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0060do<Model> {

            /* renamed from: do  reason: not valid java name */
            public final List<ym<Model, ?>> f126do;

            public C0060do(List<ym<Model, ?>> list) {
                this.f126do = list;
            }
        }
    }

    public an(@NonNull Pools.Pool<List<Throwable>> pool) {
        cn cnVar = new cn(pool);
        this.f124if = new Cdo();
        this.f123do = cnVar;
    }
}
