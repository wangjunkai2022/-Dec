package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import com.umeng.analytics.pro.bz;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: MD5.java */
/* loaded from: classes8.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public static final MessageDigest f11011a = a();
    public static final Charset b = Charset.forName("UTF-8");
    public static final char[] c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static MessageDigest a() {
        try {
            return MessageDigest.getInstance("md5");
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static String a(String str) {
        byte[] digest;
        MessageDigest messageDigest = f11011a;
        if (str == null) {
            return "";
        }
        byte[] bytes = str.getBytes(b);
        synchronized (x.class) {
            digest = messageDigest.digest(bytes);
        }
        return a(digest);
    }

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length << 1];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = c;
            cArr[i] = cArr2[(b2 & 240) >> 4];
            i = i2 + 1;
            cArr[i2] = cArr2[b2 & bz.m];
        }
        return new String(cArr);
    }
}
