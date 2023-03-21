package com.apk;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sink.kt */
/* loaded from: classes7.dex */
public interface jl0 extends Closeable, Flushable {
    /* renamed from: class */
    void mo477class(@NotNull rk0 rk0Var, long j) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    @NotNull
    /* renamed from: if */
    ml0 mo478if();
}
