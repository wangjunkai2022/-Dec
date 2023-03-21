package com.apk;
/* compiled from: ZipCryptoEngine.java */
/* loaded from: classes7.dex */
public class ze0 {

    /* renamed from: if  reason: not valid java name */
    public static final int[] f6180if = new int[256];

    /* renamed from: do  reason: not valid java name */
    public final int[] f6181do = new int[3];

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                i2 = (i2 & 1) == 1 ? (i2 >>> 1) ^ (-306674912) : i2 >>> 1;
            }
            f6180if[i] = i2;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m3195do(byte b) {
        int[] iArr = this.f6181do;
        int i = iArr[0];
        int[] iArr2 = f6180if;
        iArr[0] = iArr2[(b ^ i) & 255] ^ (i >>> 8);
        iArr[1] = iArr[1] + (iArr[0] & 255);
        iArr[1] = (iArr[1] * 134775813) + 1;
        int i2 = iArr[2];
        iArr[2] = iArr2[(((byte) (iArr[1] >> 24)) ^ i2) & 255] ^ (i2 >>> 8);
    }
}
