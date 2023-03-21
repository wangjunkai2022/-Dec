package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResourceEncoderRegistry.java */
/* loaded from: classes8.dex */
public class wq {

    /* renamed from: do  reason: not valid java name */
    public final List<Cdo<?>> f5375do = new ArrayList();

    /* compiled from: ResourceEncoderRegistry.java */
    /* renamed from: com.apk.wq$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo<T> {

        /* renamed from: do  reason: not valid java name */
        public final Class<T> f5376do;

        /* renamed from: if  reason: not valid java name */
        public final pj<T> f5377if;

        public Cdo(@NonNull Class<T> cls, @NonNull pj<T> pjVar) {
            this.f5376do = cls;
            this.f5377if = pjVar;
        }
    }

    @Nullable
    /* renamed from: do  reason: not valid java name */
    public synchronized <Z> pj<Z> m2935do(@NonNull Class<Z> cls) {
        int size = this.f5375do.size();
        for (int i = 0; i < size; i++) {
            Cdo<?> cdo = this.f5375do.get(i);
            if (cdo.f5376do.isAssignableFrom(cls)) {
                return (pj<Z>) cdo.f5377if;
            }
        }
        return null;
    }
}
