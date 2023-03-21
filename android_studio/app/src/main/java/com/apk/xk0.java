package com.apk;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;

/* compiled from: ForwardingTimeout.kt */
/* loaded from: classes7.dex */
public class xk0 extends ml0 {
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public ml0 f5695try;

    public xk0(@NotNull ml0 ml0Var) {
        nd0.m1875new(ml0Var, "delegate");
        this.f5695try = ml0Var;
    }

    @Override // com.apk.ml0
    /* renamed from: case */
    public void mo1728case() throws IOException {
        this.f5695try.mo1728case();
    }

    @Override // com.apk.ml0
    @NotNull
    /* renamed from: do */
    public ml0 mo1729do() {
        return this.f5695try.mo1729do();
    }

    @Override // com.apk.ml0
    @NotNull
    /* renamed from: else */
    public ml0 mo1730else(long j, @NotNull TimeUnit timeUnit) {
        nd0.m1875new(timeUnit, "unit");
        return this.f5695try.mo1730else(j, timeUnit);
    }

    @Override // com.apk.ml0
    /* renamed from: for */
    public long mo1731for() {
        return this.f5695try.mo1731for();
    }

    @Override // com.apk.ml0
    @NotNull
    /* renamed from: if */
    public ml0 mo1732if() {
        return this.f5695try.mo1732if();
    }

    @Override // com.apk.ml0
    @NotNull
    /* renamed from: new */
    public ml0 mo1733new(long j) {
        return this.f5695try.mo1733new(j);
    }

    @Override // com.apk.ml0
    /* renamed from: try */
    public boolean mo1734try() {
        return this.f5695try.mo1734try();
    }
}
