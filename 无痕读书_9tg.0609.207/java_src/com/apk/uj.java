package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: DataFetcher.java */
/* loaded from: classes8.dex */
public interface uj<T> {

    /* compiled from: DataFetcher.java */
    /* renamed from: com.apk.uj$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo<T> {
        /* renamed from: for */
        void mo212for(@NonNull Exception exc);

        /* renamed from: new */
        void mo213new(@Nullable T t);
    }

    void cancel();

    /* renamed from: case */
    void mo57case(@NonNull ni niVar, @NonNull Cdo<? super T> cdo);

    @NonNull
    /* renamed from: do */
    Class<T> mo58do();

    /* renamed from: if */
    void mo60if();

    @NonNull
    /* renamed from: try */
    dj mo61try();
}
