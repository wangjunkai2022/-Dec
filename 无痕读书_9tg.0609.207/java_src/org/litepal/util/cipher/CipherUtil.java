package org.litepal.util.cipher;

import android.text.TextUtils;
import com.umeng.analytics.pro.bz;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes7.dex */
public class CipherUtil {
    public static final char[] DIGITS_UPPER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static String aesKey = "LitePalKey";

    public static String aesDecrypt(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return AESCrypt.decrypt(aesKey, str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String aesEncrypt(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return AESCrypt.encrypt(aesKey, str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String md5Encrypt(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(LitePalSupport.MD5);
            messageDigest.update(str.getBytes(Charset.defaultCharset()));
            return new String(toHex(messageDigest.digest()));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static char[] toHex(byte[] bArr) {
        char[] cArr = DIGITS_UPPER;
        int length = bArr.length;
        char[] cArr2 = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            cArr2[i] = cArr[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr2[i3] = cArr[bArr[i2] & bz.m];
        }
        return cArr2;
    }
}
