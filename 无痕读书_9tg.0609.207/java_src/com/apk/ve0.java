package com.apk;

import java.security.InvalidKeyException;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: PBKDF2Engine.java */
/* loaded from: classes7.dex */
public class ve0 {

    /* renamed from: do  reason: not valid java name */
    public we0 f5071do;

    /* renamed from: if  reason: not valid java name */
    public ue0 f5072if = null;

    public ve0(we0 we0Var) {
        this.f5071do = we0Var;
    }

    /* renamed from: do  reason: not valid java name */
    public byte[] m2789do(char[] cArr, int i) {
        if (cArr != null) {
            byte[] bArr = new byte[cArr.length];
            int i2 = 0;
            for (int i3 = 0; i3 < cArr.length; i3++) {
                bArr[i3] = (byte) cArr[i3];
            }
            if (this.f5072if == null) {
                this.f5072if = new ue0(this.f5071do.f5265for);
            }
            ue0 ue0Var = this.f5072if;
            if (ue0Var != null) {
                try {
                    ue0Var.f4874do.init(new SecretKeySpec(bArr, ue0Var.f4875for));
                    int i4 = i == 0 ? this.f5072if.f4876if : i;
                    ue0 ue0Var2 = this.f5072if;
                    we0 we0Var = this.f5071do;
                    byte[] bArr2 = we0Var.f5264do;
                    int i5 = we0Var.f5266if;
                    if (bArr2 == null) {
                        bArr2 = new byte[0];
                    }
                    int i6 = ue0Var2.f4876if;
                    int i7 = 1;
                    int i8 = (i4 / i6) + (i4 % i6 > 0 ? 1 : 0);
                    int i9 = i4 - ((i8 - 1) * i6);
                    byte[] bArr3 = new byte[i8 * i6];
                    int i10 = 0;
                    while (i7 <= i8) {
                        int i11 = ue0Var2.f4876if;
                        byte[] bArr4 = new byte[i11];
                        byte[] bArr5 = new byte[bArr2.length + 4];
                        System.arraycopy(bArr2, i2, bArr5, i2, bArr2.length);
                        int length = bArr2.length;
                        bArr5[length + 0] = (byte) (i7 / 16777216);
                        bArr5[length + 1] = (byte) (i7 / 65536);
                        bArr5[length + 2] = (byte) (i7 / 256);
                        bArr5[length + 3] = (byte) i7;
                        for (int i12 = 0; i12 < i5; i12++) {
                            bArr5 = ue0Var2.f4874do.doFinal(bArr5);
                            for (int i13 = 0; i13 < i11; i13++) {
                                bArr4[i13] = (byte) (bArr4[i13] ^ bArr5[i13]);
                            }
                        }
                        System.arraycopy(bArr4, 0, bArr3, i10, i11);
                        i10 += i6;
                        i7++;
                        i2 = 0;
                    }
                    if (i9 < i6) {
                        byte[] bArr6 = new byte[i4];
                        System.arraycopy(bArr3, 0, bArr6, 0, i4);
                        return bArr6;
                    }
                    return bArr3;
                } catch (InvalidKeyException e) {
                    throw new RuntimeException(e);
                }
            }
            throw null;
        }
        throw null;
    }
}
