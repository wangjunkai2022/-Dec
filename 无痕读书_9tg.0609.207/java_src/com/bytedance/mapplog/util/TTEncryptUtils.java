package com.bytedance.mapplog.util;

import bykvm_19do.bykvm_19do.bykvm_19do.l0;
/* loaded from: classes8.dex */
public class TTEncryptUtils {
    static {
        try {
            System.loadLibrary("tobEmbedEncryptForM");
        } catch (UnsatisfiedLinkError e) {
            l0.a(e);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static byte[] m3552do(byte[] bArr, int i) {
        try {
            return ttEncrypt(bArr, i);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static native byte[] ttEncrypt(byte[] bArr, int i);
}
