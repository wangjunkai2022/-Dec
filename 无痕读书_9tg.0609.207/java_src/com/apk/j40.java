package com.apk;

import android.graphics.Color;
/* compiled from: ColorGradient.java */
/* loaded from: classes8.dex */
public class j40 {

    /* renamed from: do  reason: not valid java name */
    public int f2279do;

    /* renamed from: for  reason: not valid java name */
    public int[] f2280for;

    /* renamed from: if  reason: not valid java name */
    public int[] f2281if;

    public j40(int i, int i2, int i3) {
        this.f2279do = i3;
        this.f2281if = m1295do(i);
        this.f2280for = m1295do(i2);
    }

    /* renamed from: do  reason: not valid java name */
    public final int[] m1295do(int i) {
        return new int[]{Color.alpha(i), Color.red(i), Color.green(i), Color.blue(i)};
    }
}
