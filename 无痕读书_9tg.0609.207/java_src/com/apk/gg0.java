package com.apk;

import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConnectionPool.kt */
/* loaded from: classes7.dex */
public final class gg0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final ci0 f1565do;

    public gg0() {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        nd0.m1875new(timeUnit, "timeUnit");
        ci0 ci0Var = new ci0(sh0.f4355goto, 5, 5L, timeUnit);
        nd0.m1875new(ci0Var, "delegate");
        this.f1565do = ci0Var;
    }
}
