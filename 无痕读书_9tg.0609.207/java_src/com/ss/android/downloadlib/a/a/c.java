package com.ss.android.downloadlib.a.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.MessageDigest;
/* loaded from: classes8.dex */
public class c {
    public static byte[] a(CharSequence charSequence, String str) throws Exception {
        return a(charSequence.toString().getBytes(), str);
    }

    public static byte[] a(byte[] bArr, String str) throws Exception {
        return a(new ByteArrayInputStream(bArr), str);
    }

    public static byte[] a(InputStream inputStream, String str) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                return messageDigest.digest();
            }
            messageDigest.update(bArr, 0, read);
        }
    }
}
