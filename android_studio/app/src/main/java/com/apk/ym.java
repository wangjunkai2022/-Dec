package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

/* compiled from: ModelLoader.java */
/* loaded from: classes8.dex */
public interface ym<Model, Data> {

    /* compiled from: ModelLoader.java */
    /* renamed from: com.apk.ym$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo<Data> {

        /* renamed from: do  reason: not valid java name */
        public final kj f6003do;

        /* renamed from: for  reason: not valid java name */
        public final uj<Data> f6004for;

        /* renamed from: if  reason: not valid java name */
        public final List<kj> f6005if;

        public Cdo(@NonNull kj kjVar, @NonNull uj<Data> ujVar) {
            List<kj> emptyList = Collections.emptyList();
            eg.m593else(kjVar, "Argument must not be null");
            this.f6003do = kjVar;
            eg.m593else(emptyList, "Argument must not be null");
            this.f6005if = emptyList;
            eg.m593else(ujVar, "Argument must not be null");
            this.f6004for = ujVar;
        }
    }

    /* renamed from: do */
    boolean mo52do(@NonNull Model model);

    @Nullable
    /* renamed from: if */
    Cdo<Data> mo53if(@NonNull Model model, int i, int i2, @NonNull mj mjVar);
}
