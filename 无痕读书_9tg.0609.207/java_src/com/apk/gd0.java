package com.apk;

import org.jetbrains.annotations.NotNull;
/* compiled from: JDK7PlatformImplementations.kt */
/* loaded from: classes7.dex */
public class gd0 extends dd0 {
    @Override // com.apk.dd0
    /* renamed from: do */
    public void mo447do(@NotNull Throwable th, @NotNull Throwable th2) {
        nd0.m1875new(th, "cause");
        nd0.m1875new(th2, "exception");
        th.addSuppressed(th2);
    }
}
