package com.apk;

import org.jetbrains.annotations.NotNull;

/* compiled from: Settings.kt */
/* loaded from: classes7.dex */
public final class lj0 {

    /* renamed from: do  reason: not valid java name */
    public int f2823do;

    /* renamed from: if  reason: not valid java name */
    public final int[] f2824if = new int[10];

    /* renamed from: do  reason: not valid java name */
    public final int m1636do() {
        if ((this.f2823do & 128) != 0) {
            return this.f2824if[7];
        }
        return 65535;
    }

    @NotNull
    /* renamed from: for  reason: not valid java name */
    public final lj0 m1637for(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.f2824if;
            if (i < iArr.length) {
                this.f2823do = (1 << i) | this.f2823do;
                iArr[i] = i2;
            }
        }
        return this;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m1638if(@NotNull lj0 lj0Var) {
        nd0.m1875new(lj0Var, "other");
        for (int i = 0; i < 10; i++) {
            if (((1 << i) & lj0Var.f2823do) != 0) {
                m1637for(i, lj0Var.f2824if[i]);
            }
        }
    }
}
