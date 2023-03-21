package com.apk;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ResourceDecoderRegistry.java */
/* loaded from: classes8.dex */
public class vq {

    /* renamed from: do  reason: not valid java name */
    public final List<String> f5189do = new ArrayList();

    /* renamed from: if  reason: not valid java name */
    public final Map<String, List<Cdo<?, ?>>> f5190if = new HashMap();

    /* compiled from: ResourceDecoderRegistry.java */
    /* renamed from: com.apk.vq$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo<T, R> {

        /* renamed from: do  reason: not valid java name */
        public final Class<T> f5191do;

        /* renamed from: for  reason: not valid java name */
        public final oj<T, R> f5192for;

        /* renamed from: if  reason: not valid java name */
        public final Class<R> f5193if;

        public Cdo(@NonNull Class<T> cls, @NonNull Class<R> cls2, oj<T, R> ojVar) {
            this.f5191do = cls;
            this.f5193if = cls2;
            this.f5192for = ojVar;
        }

        /* renamed from: do  reason: not valid java name */
        public boolean m2832do(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f5191do.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f5193if);
        }
    }

    @NonNull
    /* renamed from: do  reason: not valid java name */
    public final synchronized List<Cdo<?, ?>> m2830do(@NonNull String str) {
        List<Cdo<?, ?>> list;
        if (!this.f5189do.contains(str)) {
            this.f5189do.add(str);
        }
        list = this.f5190if.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f5190if.put(str, list);
        }
        return list;
    }

    @NonNull
    /* renamed from: if  reason: not valid java name */
    public synchronized <T, R> List<Class<R>> m2831if(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f5189do) {
            List<Cdo<?, ?>> list = this.f5190if.get(str);
            if (list != null) {
                for (Cdo<?, ?> cdo : list) {
                    if (cdo.m2832do(cls, cls2) && !arrayList.contains(cdo.f5193if)) {
                        arrayList.add(cdo.f5193if);
                    }
                }
            }
        }
        return arrayList;
    }
}
