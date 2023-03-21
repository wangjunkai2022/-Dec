package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1;

import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.i;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
/* compiled from: EncryptUtil.java */
/* loaded from: classes8.dex */
public class a {
    public static byte[] a(byte[] bArr, int i) {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b;
        i k;
        if (bArr != null && i > 0) {
            try {
                if (bArr.length != i || (b = j.l().b()) == null || (k = b.k()) == null) {
                    return null;
                }
                return k.a(bArr, i);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }
}
