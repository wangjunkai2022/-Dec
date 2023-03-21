package com.apk;

import java.io.IOException;
import org.jetbrains.annotations.NotNull;
/* compiled from: ForwardingSource.kt */
/* loaded from: classes7.dex */
public abstract class wk0 implements ll0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final ll0 f5350do;

    public wk0(@NotNull ll0 ll0Var) {
        nd0.m1875new(ll0Var, "delegate");
        this.f5350do = ll0Var;
    }

    @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5350do.close();
    }

    @Override // com.apk.ll0
    @NotNull
    /* renamed from: if */
    public ml0 mo71if() {
        return this.f5350do.mo71if();
    }

    @NotNull
    public String toString() {
        return getClass().getSimpleName() + '(' + this.f5350do + ')';
    }
}
