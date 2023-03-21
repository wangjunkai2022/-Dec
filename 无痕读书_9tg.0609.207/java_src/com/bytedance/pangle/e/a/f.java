package com.bytedance.pangle.e.a;
/* loaded from: classes8.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public int[] f11320a;
    public int[] b;

    public final String a(int i) {
        int[] iArr;
        if (i < 0 || (iArr = this.f11320a) == null || i >= iArr.length) {
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
