package com.bytedance.pangle.res.a;

import java.io.ByteArrayInputStream;
/* loaded from: classes8.dex */
public final class k {
    public static int a(g gVar) {
        return (int) gVar.f11369a.a().b();
    }

    public static byte[] a(int i) {
        return new byte[]{(byte) (i >> 0), (byte) (i >> 8), (byte) (i >> 16), (byte) (i >> 24)};
    }

    public static void a(byte[] bArr, int i, int i2, h hVar) {
        if (i >= 2130706432) {
            byte[] a2 = a(hVar.a(i));
            bArr[i2] = a2[0];
            bArr[i2 + 1] = a2[1];
            bArr[i2 + 2] = a2[2];
            bArr[i2 + 3] = a2[3];
        }
    }

    public static void a(byte[] bArr, h hVar) {
        b bVar = new b(bArr, hVar);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        bVar.a();
        bVar.f11365a = new g(new i(new e(byteArrayInputStream)));
        do {
        } while (bVar.b() != 1);
    }
}
