package com.apk;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* compiled from: TranscoderRegistry.java */
/* loaded from: classes8.dex */
public class up {

    /* renamed from: do  reason: not valid java name */
    public final List<Cdo<?, ?>> f4950do = new ArrayList();

    /* compiled from: TranscoderRegistry.java */
    /* renamed from: com.apk.up$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo<Z, R> {

        /* renamed from: do  reason: not valid java name */
        public final Class<Z> f4951do;

        /* renamed from: for  reason: not valid java name */
        public final tp<Z, R> f4952for;

        /* renamed from: if  reason: not valid java name */
        public final Class<R> f4953if;

        public Cdo(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull tp<Z, R> tpVar) {
            this.f4951do = cls;
            this.f4953if = cls2;
            this.f4952for = tpVar;
        }

        /* renamed from: do  reason: not valid java name */
        public boolean m2730do(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f4951do.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f4953if);
        }
    }

    @NonNull
    /* renamed from: do  reason: not valid java name */
    public synchronized <Z, R> List<Class<R>> m2729do(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (Cdo<?, ?> cdo : this.f4950do) {
            if (cdo.m2730do(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }
}
