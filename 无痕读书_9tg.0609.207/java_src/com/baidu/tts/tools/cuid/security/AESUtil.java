package com.baidu.tts.tools.cuid.security;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public final class AESUtil {
    public static byte[] decrypt(String str, String str2, byte[] bArr) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), LitePalSupport.AES);
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKeySpec, new IvParameterSpec(str.getBytes()));
        return cipher.doFinal(bArr);
    }

    public static byte[] encrypt(String str, String str2, byte[] bArr) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), LitePalSupport.AES);
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, secretKeySpec, new IvParameterSpec(str.getBytes()));
        return cipher.doFinal(bArr);
    }
}
