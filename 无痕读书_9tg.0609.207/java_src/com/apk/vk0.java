package com.apk;

import java.io.IOException;
import org.jetbrains.annotations.NotNull;
/* compiled from: ForwardingSink.kt */
/* loaded from: classes7.dex */
public abstract class vk0 implements jl0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final jl0 f5158do;

    public vk0(@NotNull jl0 jl0Var) {
        nd0.m1875new(jl0Var, "delegate");
        this.f5158do = jl0Var;
    }

    @Override // com.apk.jl0
    /* renamed from: class */
    public void mo477class(@NotNull rk0 rk0Var, long j) throws IOException {
        nd0.m1875new(rk0Var, "source");
        this.f5158do.mo477class(rk0Var, j);
    }

    @Override // com.apk.jl0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5158do.close();
    }

    @Override // com.apk.jl0, java.io.Flushable
    public void flush() throws IOException {
        this.f5158do.flush();
    }

    @Override // com.apk.jl0
    @NotNull
    /* renamed from: if */
    public ml0 mo478if() {
        return this.f5158do.mo478if();
    }

    @NotNull
    public String toString() {
        return getClass().getSimpleName() + '(' + this.f5158do + ')';
    }
}
