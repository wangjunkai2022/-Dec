package com.apk;

import org.jetbrains.annotations.NotNull;

/* compiled from: Buffer.kt */
/* loaded from: classes7.dex */
public final class nl0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final byte[] f3256do;

    static {
        nd0.m1875new("0123456789abcdef", "$this$asUtf8ToByteArray");
        byte[] bytes = "0123456789abcdef".getBytes(ee0.f1037do);
        nd0.m1872for(bytes, "(this as java.lang.String).getBytes(charset)");
        f3256do = bytes;
    }

    @NotNull
    /* renamed from: do  reason: not valid java name */
    public static final String m1891do(@NotNull rk0 rk0Var, long j) {
        nd0.m1875new(rk0Var, "$this$readUtf8Line");
        if (j > 0) {
            long j2 = j - 1;
            if (rk0Var.m2289default(j2) == ((byte) 13)) {
                String m2302volatile = rk0Var.m2302volatile(j2);
                rk0Var.skip(2L);
                return m2302volatile;
            }
        }
        String m2302volatile2 = rk0Var.m2302volatile(j);
        rk0Var.skip(1L);
        return m2302volatile2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
        if (r19 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
        return r10;
     */
    /* renamed from: if  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int m1892if(@org.jetbrains.annotations.NotNull com.apk.rk0 r17, @org.jetbrains.annotations.NotNull com.apk.cl0 r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 175
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.nl0.m1892if(com.apk.rk0, com.apk.cl0, boolean):int");
    }
}
