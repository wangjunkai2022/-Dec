package com.apk;

import java.io.IOException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Interceptor.kt */
/* loaded from: classes7.dex */
public interface ug0 {

    /* compiled from: Interceptor.kt */
    /* renamed from: com.apk.ug0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cdo {
        @NotNull
        zf0 call();

        @NotNull
        /* renamed from: do */
        ch0 mo1721do(@NotNull zg0 zg0Var) throws IOException;

        @NotNull
        /* renamed from: for */
        zg0 mo1722for();

        @Nullable
        /* renamed from: if */
        fg0 mo1723if();
    }

    @NotNull
    /* renamed from: do */
    ch0 mo678do(@NotNull Cdo cdo) throws IOException;
}
