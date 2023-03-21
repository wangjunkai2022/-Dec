package org.litepal.util.cipher;

import android.util.Base64;
import androidx.exifinterface.media.ExifInterface;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes7.dex */
public final class AESCrypt {
    public static final String AES_MODE = "AES/CBC/PKCS7Padding";
    public static final String CHARSET = "UTF-8";
    public static final String HASH_ALGORITHM = "SHA-256";
    public static final String TAG = "AESCrypt";
    public static final byte[] ivBytes = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    public static boolean DEBUG_LOG_ENABLED = false;

    public static String bytesToHex(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & ExifInterface.MARKER;
            int i3 = i * 2;
            cArr2[i3] = cArr[i2 >>> 4];
            cArr2[i3 + 1] = cArr[i2 & 15];
        }
        return new String(cArr2);
    }

    public static String decrypt(String str, String str2) throws GeneralSecurityException {
        try {
            SecretKeySpec generateKey = generateKey(str);
            log("base64EncodedCipherText", str2);
            byte[] decode = Base64.decode(str2, 2);
            log("decodedCipherText", decode);
            byte[] decrypt = decrypt(generateKey, ivBytes, decode);
            log("decryptedBytes", decrypt);
            String str3 = new String(decrypt, "UTF-8");
            log("message", str3);
            return str3;
        } catch (UnsupportedEncodingException e) {
            boolean z = DEBUG_LOG_ENABLED;
            throw new GeneralSecurityException(e);
        }
    }

    public static String encrypt(String str, String str2) throws GeneralSecurityException {
        try {
            SecretKeySpec generateKey = generateKey(str);
            log("message", str2);
            String encodeToString = Base64.encodeToString(encrypt(generateKey, ivBytes, str2.getBytes("UTF-8")), 2);
            log("Base64.NO_WRAP", encodeToString);
            return encodeToString;
        } catch (UnsupportedEncodingException e) {
            boolean z = DEBUG_LOG_ENABLED;
            throw new GeneralSecurityException(e);
        }
    }

    public static SecretKeySpec generateKey(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance(HASH_ALGORITHM);
        byte[] bytes = str.getBytes("UTF-8");
        messageDigest.update(bytes, 0, bytes.length);
        byte[] digest = messageDigest.digest();
        log("SHA-256 key ", digest);
        return new SecretKeySpec(digest, LitePalSupport.AES);
    }

    public static void log(String str, byte[] bArr) {
        if (DEBUG_LOG_ENABLED) {
            int length = bArr.length;
            bytesToHex(bArr);
        }
    }

    public static void log(String str, String str2) {
        if (DEBUG_LOG_ENABLED) {
            str2.length();
        }
    }

    public static byte[] encrypt(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance(AES_MODE);
        cipher.init(1, secretKeySpec, new IvParameterSpec(bArr));
        byte[] doFinal = cipher.doFinal(bArr2);
        log("cipherText", doFinal);
        return doFinal;
    }

    public static byte[] decrypt(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance(AES_MODE);
        cipher.init(2, secretKeySpec, new IvParameterSpec(bArr));
        byte[] doFinal = cipher.doFinal(bArr2);
        log("decryptedBytes", doFinal);
        return doFinal;
    }
}
