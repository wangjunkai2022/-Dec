package com.apk;

import androidx.exifinterface.media.ExifInterface;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
/* compiled from: -Base64.kt */
@JvmName(name = "-Base64")
/* loaded from: classes7.dex */
public final class nk0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final byte[] f3255do = uk0.f4913try.m2717if("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").f4915for;

    static {
        uk0.f4913try.m2717if("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
    }

    /* renamed from: do  reason: not valid java name */
    public static String m1886do(byte[] bArr, byte[] bArr2, int i) {
        byte[] bArr3 = (i & 1) != 0 ? f3255do : null;
        nd0.m1875new(bArr, "$this$encodeBase64");
        nd0.m1875new(bArr3, "map");
        byte[] bArr4 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            byte b = bArr[i2];
            int i5 = i4 + 1;
            byte b2 = bArr[i4];
            int i6 = i5 + 1;
            byte b3 = bArr[i5];
            int i7 = i3 + 1;
            bArr4[i3] = bArr3[(b & ExifInterface.MARKER) >> 2];
            int i8 = i7 + 1;
            bArr4[i7] = bArr3[((b & 3) << 4) | ((b2 & ExifInterface.MARKER) >> 4)];
            int i9 = i8 + 1;
            bArr4[i8] = bArr3[((b2 & com.umeng.analytics.pro.bz.m) << 2) | ((b3 & ExifInterface.MARKER) >> 6)];
            i3 = i9 + 1;
            bArr4[i9] = bArr3[b3 & 63];
            i2 = i6;
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b4 = bArr[i2];
            int i10 = i3 + 1;
            bArr4[i3] = bArr3[(b4 & ExifInterface.MARKER) >> 2];
            int i11 = i10 + 1;
            bArr4[i10] = bArr3[(b4 & 3) << 4];
            byte b5 = (byte) 61;
            bArr4[i11] = b5;
            bArr4[i11 + 1] = b5;
        } else if (length2 == 2) {
            int i12 = i2 + 1;
            byte b6 = bArr[i2];
            byte b7 = bArr[i12];
            int i13 = i3 + 1;
            bArr4[i3] = bArr3[(b6 & ExifInterface.MARKER) >> 2];
            int i14 = i13 + 1;
            bArr4[i13] = bArr3[((b6 & 3) << 4) | ((b7 & ExifInterface.MARKER) >> 4)];
            bArr4[i14] = bArr3[(b7 & com.umeng.analytics.pro.bz.m) << 2];
            bArr4[i14 + 1] = (byte) 61;
        }
        nd0.m1875new(bArr4, "$this$toUtf8String");
        return new String(bArr4, ee0.f1037do);
    }
}
