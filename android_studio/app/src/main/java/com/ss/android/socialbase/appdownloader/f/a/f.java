package com.ss.android.socialbase.appdownloader.f.a;

import com.apk.Cgoto;
import java.io.IOException;

/* loaded from: classes7.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public int[] f11776a;
    public int[] b;

    public static f a(d dVar) throws IOException {
        b.a(dVar, 1835009);
        int b = dVar.b();
        int b2 = dVar.b();
        int b3 = dVar.b();
        dVar.b();
        int b4 = dVar.b();
        int b5 = dVar.b();
        f fVar = new f();
        fVar.f11776a = dVar.b(b2);
        if (b3 != 0) {
            dVar.b(b3);
        }
        int i = (b5 == 0 ? b : b5) - b4;
        if (i % 4 == 0) {
            fVar.b = dVar.b(i / 4);
            if (b5 != 0) {
                int i2 = b - b5;
                if (i2 % 4 == 0) {
                    dVar.b(i2 / 4);
                } else {
                    throw new IOException(Cgoto.m1005instanceof("Style data size is not multiple of 4 (", i2, ")."));
                }
            }
            return fVar;
        }
        throw new IOException(Cgoto.m1005instanceof("String data size is not multiple of 4 (", i, ")."));
    }

    public String a(int i) {
        int[] iArr;
        if (i < 0 || (iArr = this.f11776a) == null || i >= iArr.length) {
            return null;
        }
        int i2 = iArr[i];
        int a2 = a(this.b, i2);
        StringBuilder sb = new StringBuilder(a2);
        while (a2 != 0) {
            i2 += 2;
            sb.append((char) a(this.b, i2));
            a2--;
        }
        return sb.toString();
    }

    public static final int a(int[] iArr, int i) {
        int i2 = iArr[i / 4];
        return (i % 4) / 2 == 0 ? i2 & 65535 : i2 >>> 16;
    }
}
