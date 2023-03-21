package com.apk;

import org.jetbrains.annotations.NotNull;
/* compiled from: _Ranges.kt */
/* loaded from: classes7.dex */
public class yd0 {
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public static final vd0 m3058do(int i, int i2) {
        return new vd0(i, i2, -1);
    }

    @NotNull
    /* renamed from: for  reason: not valid java name */
    public static final xd0 m3059for(int i, int i2) {
        if (i2 <= Integer.MIN_VALUE) {
            xd0 xd0Var = xd0.f5515try;
            return xd0.f5514new;
        }
        return new xd0(i, i2 - 1);
    }

    @NotNull
    /* renamed from: if  reason: not valid java name */
    public static final vd0 m3060if(@NotNull vd0 vd0Var, int i) {
        nd0.m1875new(vd0Var, "$this$step");
        boolean z = i > 0;
        Integer valueOf = Integer.valueOf(i);
        nd0.m1875new(valueOf, "step");
        if (z) {
            int i2 = vd0Var.f5067do;
            int i3 = vd0Var.f5069if;
            if (vd0Var.f5068for <= 0) {
                i = -i;
            }
            return new vd0(i2, i3, i);
        }
        throw new IllegalArgumentException("Step must be positive, was: " + valueOf + '.');
    }
}
