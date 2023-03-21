package com.apk;

import android.annotation.TargetApi;
import android.os.SystemClock;
/* compiled from: LogTime.java */
/* loaded from: classes8.dex */
public final class cs {

    /* renamed from: do  reason: not valid java name */
    public static final double f750do = 1.0d / Math.pow(10.0d, 6.0d);

    /* renamed from: do  reason: not valid java name */
    public static double m395do(long j) {
        return (SystemClock.elapsedRealtimeNanos() - j) * f750do;
    }

    @TargetApi(17)
    /* renamed from: if  reason: not valid java name */
    public static long m396if() {
        return SystemClock.elapsedRealtimeNanos();
    }
}
