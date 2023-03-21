package com.apk;

import java.util.HashMap;

/* compiled from: FastClickUtils.java */
/* loaded from: classes7.dex */
public final class tb0 {

    /* renamed from: do  reason: not valid java name */
    public static long f4673do;

    static {
        new HashMap();
    }

    /* renamed from: do  reason: not valid java name */
    public static boolean m2586do() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - f4673do;
        if (j <= 0 || j >= 1000) {
            f4673do = currentTimeMillis;
            return false;
        }
        return true;
    }
}
