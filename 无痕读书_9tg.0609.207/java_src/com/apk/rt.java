package com.apk;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.litepal.crud.LitePalSupport;
/* compiled from: Md5Util.java */
/* loaded from: classes8.dex */
public final class rt {

    /* renamed from: do  reason: not valid java name */
    public static final char[] f4203do = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2360do(java.io.File r9) throws java.io.IOException {
        /*
            r0 = 0
            java.lang.String r1 = "MD5"
            java.security.MessageDigest r1 = java.security.MessageDigest.getInstance(r1)     // Catch: java.lang.Throwable -> L37 java.security.NoSuchAlgorithmException -> L3a
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L37 java.security.NoSuchAlgorithmException -> L3a
            r2.<init>(r9)     // Catch: java.lang.Throwable -> L37 java.security.NoSuchAlgorithmException -> L3a
            java.nio.channels.FileChannel r0 = r2.getChannel()     // Catch: java.lang.Throwable -> L2f java.security.NoSuchAlgorithmException -> L33
            java.nio.channels.FileChannel$MapMode r4 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L2f java.security.NoSuchAlgorithmException -> L33
            r5 = 0
            long r7 = r9.length()     // Catch: java.lang.Throwable -> L2f java.security.NoSuchAlgorithmException -> L33
            r3 = r0
            java.nio.MappedByteBuffer r9 = r3.map(r4, r5, r7)     // Catch: java.lang.Throwable -> L2f java.security.NoSuchAlgorithmException -> L33
            r1.update(r9)     // Catch: java.lang.Throwable -> L2f java.security.NoSuchAlgorithmException -> L33
            byte[] r9 = r1.digest()     // Catch: java.lang.Throwable -> L2f java.security.NoSuchAlgorithmException -> L33
            r2.close()     // Catch: java.lang.Throwable -> L27
        L27:
            r0.close()     // Catch: java.lang.Throwable -> L2a
        L2a:
            java.lang.String r9 = m2361for(r9)
            return r9
        L2f:
            r9 = move-exception
            r1 = r0
            r0 = r2
            goto L43
        L33:
            r9 = move-exception
            r1 = r0
            r0 = r2
            goto L3c
        L37:
            r9 = move-exception
            r1 = r0
            goto L43
        L3a:
            r9 = move-exception
            r1 = r0
        L3c:
            java.lang.RuntimeException r2 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L42
            r2.<init>(r9)     // Catch: java.lang.Throwable -> L42
            throw r2     // Catch: java.lang.Throwable -> L42
        L42:
            r9 = move-exception
        L43:
            if (r0 == 0) goto L4a
            r0.close()     // Catch: java.lang.Throwable -> L49
            goto L4a
        L49:
        L4a:
            if (r1 == 0) goto L4f
            r1.close()     // Catch: java.lang.Throwable -> L4f
        L4f:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.rt.m2360do(java.io.File):java.lang.String");
    }

    /* renamed from: for  reason: not valid java name */
    public static String m2361for(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(f4203do[(b >> 4) & 15]);
            sb.append(f4203do[b & com.umeng.analytics.pro.bz.m]);
        }
        return sb.toString();
    }

    /* renamed from: if  reason: not valid java name */
    public static String m2362if(String str) {
        try {
            return m2361for(MessageDigest.getInstance(LitePalSupport.MD5).digest(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }
}
