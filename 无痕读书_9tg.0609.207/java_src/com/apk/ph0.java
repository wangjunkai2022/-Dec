package com.apk;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Task.kt */
/* loaded from: classes7.dex */
public abstract class ph0 {
    @Nullable

    /* renamed from: do  reason: not valid java name */
    public rh0 f3656do;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final String f3657for;

    /* renamed from: if  reason: not valid java name */
    public long f3658if;

    /* renamed from: new  reason: not valid java name */
    public final boolean f3659new;

    public ph0(@NotNull String str, boolean z) {
        nd0.m1875new(str, "name");
        this.f3657for = str;
        this.f3659new = z;
        this.f3658if = -1L;
    }

    /* renamed from: do */
    public abstract long mo56do();

    @NotNull
    public String toString() {
        return this.f3657for;
    }
}
