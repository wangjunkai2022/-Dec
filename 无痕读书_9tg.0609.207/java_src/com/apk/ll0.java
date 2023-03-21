package com.apk;

import java.io.Closeable;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;
/* compiled from: Source.kt */
/* loaded from: classes7.dex */
public interface ll0 extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    @NotNull
    /* renamed from: if */
    ml0 mo71if();

    /* renamed from: import */
    long mo72import(@NotNull rk0 rk0Var, long j) throws IOException;
}
