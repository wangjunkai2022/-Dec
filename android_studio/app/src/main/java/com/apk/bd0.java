package com.apk;

import java.util.Comparator;
import org.jetbrains.annotations.NotNull;

/* compiled from: Comparisons.kt */
/* loaded from: classes7.dex */
public final class bd0 implements Comparator<Comparable<? super Object>> {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final bd0 f297do = new bd0();

    @Override // java.util.Comparator
    public int compare(Comparable<? super Object> comparable, Comparable<? super Object> comparable2) {
        Comparable<? super Object> comparable3 = comparable;
        Comparable<? super Object> comparable4 = comparable2;
        nd0.m1875new(comparable3, "a");
        nd0.m1875new(comparable4, "b");
        return comparable3.compareTo(comparable4);
    }

    @Override // java.util.Comparator
    @NotNull
    public final Comparator<Comparable<? super Object>> reversed() {
        return cd0.f579do;
    }
}
