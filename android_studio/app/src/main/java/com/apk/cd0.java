package com.apk;

import java.util.Comparator;
import org.jetbrains.annotations.NotNull;

/* compiled from: Comparisons.kt */
/* loaded from: classes7.dex */
public final class cd0 implements Comparator<Comparable<? super Object>> {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final cd0 f579do = new cd0();

    @Override // java.util.Comparator
    public int compare(Comparable<? super Object> comparable, Comparable<? super Object> comparable2) {
        Comparable<? super Object> comparable3 = comparable;
        Comparable<? super Object> comparable4 = comparable2;
        nd0.m1875new(comparable3, "a");
        nd0.m1875new(comparable4, "b");
        return comparable4.compareTo(comparable3);
    }

    @Override // java.util.Comparator
    @NotNull
    public final Comparator<Comparable<? super Object>> reversed() {
        return bd0.f297do;
    }
}
