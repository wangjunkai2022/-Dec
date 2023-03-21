package com.apk;

import androidx.exifinterface.media.ExifInterface;
/* compiled from: StandardDecrypter.java */
/* loaded from: classes7.dex */
public class xe0 implements te0 {

    /* renamed from: do  reason: not valid java name */
    public if0 f5518do;

    /* renamed from: for  reason: not valid java name */
    public ze0 f5519for;

    /* renamed from: if  reason: not valid java name */
    public byte[] f5520if = new byte[4];

    public xe0(if0 if0Var, byte[] bArr) throws af0 {
        if (if0Var != null) {
            this.f5518do = if0Var;
            ze0 ze0Var = new ze0();
            this.f5519for = ze0Var;
            if0 if0Var2 = this.f5518do;
            byte[] bArr2 = if0Var2.f2088new;
            byte[] bArr3 = this.f5520if;
            bArr3[3] = (byte) (bArr2[3] & ExifInterface.MARKER);
            bArr3[2] = (byte) ((bArr2[3] >> 8) & 255);
            bArr3[1] = (byte) ((bArr2[3] >> com.umeng.analytics.pro.bz.n) & 255);
            int i = 0;
            bArr3[0] = (byte) ((bArr2[3] >> 24) & 255);
            if (bArr3[2] <= 0 && bArr3[1] <= 0 && bArr3[0] <= 0) {
                char[] cArr = if0Var2.f2089super;
                if (cArr != null && cArr.length > 0) {
                    int[] iArr = ze0Var.f6181do;
                    iArr[0] = 305419896;
                    iArr[1] = 591751049;
                    iArr[2] = 878082192;
                    for (char c : cArr) {
                        ze0Var.m3195do((byte) (c & 255));
                    }
                    try {
                        byte b = bArr[0];
                        while (i < 12) {
                            ze0 ze0Var2 = this.f5519for;
                            int i2 = this.f5519for.f6181do[2] | 2;
                            ze0Var2.m3195do((byte) (((byte) ((i2 * (i2 ^ 1)) >>> 8)) ^ b));
                            i++;
                            if (i != 12) {
                                b = bArr[i];
                            }
                        }
                        return;
                    } catch (Exception e) {
                        throw new af0(e);
                    }
                }
                throw new af0("Wrong password!", 5);
            }
            throw new IllegalStateException("Invalid CRC in File Header");
        }
        throw new af0("one of more of the input parameters were null in StandardDecryptor");
    }

    @Override // com.apk.te0
    /* renamed from: do */
    public int mo2439do(byte[] bArr, int i, int i2) throws af0 {
        if (i < 0 || i2 < 0) {
            throw new af0("one of the input parameters were null in standard decrpyt data");
        }
        for (int i3 = i; i3 < i + i2; i3++) {
            try {
                int i4 = bArr[i3] & ExifInterface.MARKER;
                int i5 = this.f5519for.f6181do[2] | 2;
                byte b = (byte) ((i4 ^ ((byte) ((i5 * (i5 ^ 1)) >>> 8))) & 255);
                this.f5519for.m3195do(b);
                bArr[i3] = b;
            } catch (Exception e) {
                throw new af0(e);
            }
        }
        return i2;
    }
}
