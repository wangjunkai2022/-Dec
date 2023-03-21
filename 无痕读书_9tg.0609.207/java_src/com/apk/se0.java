package com.apk;

import com.google.zxing.qrcode.encoder.Encoder;
import java.security.InvalidKeyException;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: AESDecrypter.java */
/* loaded from: classes7.dex */
public class se0 implements te0 {

    /* renamed from: break  reason: not valid java name */
    public byte[] f4326break;

    /* renamed from: case  reason: not valid java name */
    public int f4327case;

    /* renamed from: class  reason: not valid java name */
    public byte[] f4329class;

    /* renamed from: const  reason: not valid java name */
    public byte[] f4330const;

    /* renamed from: do  reason: not valid java name */
    public jf0 f4331do;

    /* renamed from: else  reason: not valid java name */
    public byte[] f4332else;

    /* renamed from: for  reason: not valid java name */
    public ue0 f4334for;

    /* renamed from: goto  reason: not valid java name */
    public byte[] f4335goto;

    /* renamed from: if  reason: not valid java name */
    public ye0 f4336if;

    /* renamed from: new  reason: not valid java name */
    public int f4337new;

    /* renamed from: this  reason: not valid java name */
    public byte[] f4338this;

    /* renamed from: try  reason: not valid java name */
    public int f4339try;

    /* renamed from: catch  reason: not valid java name */
    public int f4328catch = 1;

    /* renamed from: final  reason: not valid java name */
    public int f4333final = 0;

    public se0(jf0 jf0Var, byte[] bArr, byte[] bArr2) throws af0 {
        if (jf0Var != null) {
            this.f4331do = jf0Var;
            this.f4326break = null;
            this.f4329class = new byte[16];
            this.f4330const = new byte[16];
            ef0 ef0Var = jf0Var.f2318class;
            if (ef0Var != null) {
                int i = ef0Var.f1041do;
                if (i == 1) {
                    this.f4337new = 16;
                    this.f4339try = 16;
                    this.f4327case = 8;
                } else if (i == 2) {
                    this.f4337new = 24;
                    this.f4339try = 24;
                    this.f4327case = 12;
                } else if (i == 3) {
                    this.f4337new = 32;
                    this.f4339try = 32;
                    this.f4327case = 16;
                } else {
                    StringBuilder m1016super = Cgoto.m1016super("invalid aes key strength for file: ");
                    m1016super.append(this.f4331do.f2316case);
                    throw new af0(m1016super.toString());
                }
                char[] cArr = this.f4331do.f2315break;
                if (cArr != null && cArr.length > 0) {
                    try {
                        byte[] m2789do = new ve0(new we0("HmacSHA1", Encoder.DEFAULT_BYTE_MODE_ENCODING, bArr, 1000)).m2789do(cArr, this.f4337new + this.f4339try + 2);
                        int length = m2789do.length;
                        int i2 = this.f4337new;
                        int i3 = this.f4339try;
                        if (length == i2 + i3 + 2) {
                            byte[] bArr3 = new byte[i2];
                            this.f4332else = bArr3;
                            this.f4335goto = new byte[i3];
                            this.f4338this = new byte[2];
                            System.arraycopy(m2789do, 0, bArr3, 0, i2);
                            System.arraycopy(m2789do, this.f4337new, this.f4335goto, 0, this.f4339try);
                            System.arraycopy(m2789do, this.f4337new + this.f4339try, this.f4338this, 0, 2);
                            byte[] bArr4 = this.f4338this;
                            if (bArr4 != null) {
                                if (Arrays.equals(bArr2, bArr4)) {
                                    this.f4336if = new ye0(this.f4332else);
                                    ue0 ue0Var = new ue0("HmacSHA1");
                                    this.f4334for = ue0Var;
                                    try {
                                        ue0Var.f4874do.init(new SecretKeySpec(this.f4335goto, ue0Var.f4875for));
                                        return;
                                    } catch (InvalidKeyException e) {
                                        throw new RuntimeException(e);
                                    }
                                }
                                StringBuilder m1016super2 = Cgoto.m1016super("Wrong Password for file: ");
                                m1016super2.append(this.f4331do.f2316case);
                                throw new af0(m1016super2.toString(), 5);
                            }
                            throw new af0("invalid derived password verifier for AES");
                        }
                        throw new af0("invalid derived key");
                    } catch (Exception e2) {
                        throw new af0(e2);
                    }
                }
                throw new af0("empty or null password provided for AES Decryptor");
            }
            throw new af0("invalid aes extra data record - in init method of AESDecryptor");
        }
        throw new af0("one of the input parameters is null in AESDecryptor Constructor");
    }

    @Override // com.apk.te0
    /* renamed from: do  reason: not valid java name */
    public int mo2439do(byte[] bArr, int i, int i2) throws af0 {
        if (this.f4336if == null) {
            throw new af0("AES not initialized properly");
        }
        int i3 = i;
        while (true) {
            int i4 = i + i2;
            if (i3 >= i4) {
                return i2;
            }
            int i5 = i3 + 16;
            int i6 = i5 <= i4 ? 16 : i4 - i3;
            try {
                this.f4333final = i6;
                this.f4334for.update(bArr, i3, i6);
                sb0.e(this.f4329class, this.f4328catch);
                this.f4336if.m3061do(this.f4329class, this.f4330const);
                for (int i7 = 0; i7 < this.f4333final; i7++) {
                    int i8 = i3 + i7;
                    bArr[i8] = (byte) (bArr[i8] ^ this.f4330const[i7]);
                }
                this.f4328catch++;
                i3 = i5;
            } catch (af0 e) {
                throw e;
            } catch (Exception e2) {
                throw new af0(e2);
            }
        }
    }
}
