package com.tencent.bugly.proguard;

import com.umeng.analytics.pro.bz;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f12087a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = f12087a;
            cArr[i2 + 1] = cArr2[b & bz.m];
            cArr[i2] = cArr2[((byte) (b >>> 4)) & bz.m];
        }
        return new String(cArr);
    }
}
