package com.baidu.tts.tools;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.bz;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class CommonUtility {
    public static byte[] AES_cbc_decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            Cipher.getMaxAllowedKeyLength("AES/CBC/PKCS5Padding");
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, LitePalSupport.AES);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String AES_cbc_encrypt(String str, String str2, String str3) {
        try {
            Cipher.getMaxAllowedKeyLength("AES/CBC/PKCS5Padding");
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("utf-8"), LitePalSupport.AES);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeySpec, new IvParameterSpec(str3.getBytes("utf-8")));
            return parseByte2HexStr(cipher.doFinal(str.getBytes("utf-8")));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int[] a(byte[] bArr) {
        int[] iArr = new int[bArr.length];
        int i = 0;
        for (int i2 = 1; i2 < bArr.length; i2++) {
            while (i > 0 && bArr[i] != bArr[i2]) {
                i = iArr[i - 1];
            }
            if (bArr[i] == bArr[i2]) {
                i++;
            }
            iArr[i2] = i;
        }
        return iArr;
    }

    public static byte[] addCAFHeaderForPCMData(byte[] bArr) {
        long j;
        long length;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        long length2 = ((16 * (44 + bArr.length)) * 1) / 8;
        byte[] bArr2 = {82, 73, 70, 70, (byte) (length & 255), (byte) ((length >> 8) & 255), (byte) ((length >> 16) & 255), (byte) ((length >> 24) & 255), 87, 65, 86, 69, 102, 109, 116, 32, bz.n, 0, 0, 0, 1, 0, (byte) 1, 0, (byte) 128, (byte) 62, (byte) 0, (byte) 0, (byte) (length2 & 255), (byte) ((length2 >> 8) & 255), (byte) ((length2 >> 16) & 255), (byte) ((length2 >> 24) & 255), 2, 0, bz.n, 0, 100, 97, 116, 97, (byte) (j & 255), (byte) ((j >> 8) & 255), (byte) ((j >> 16) & 255), (byte) ((j >> 24) & 255)};
        byte[] bArr3 = new byte[44 + bArr.length];
        System.arraycopy(bArr2, 0, bArr3, 0, 44);
        System.arraycopy(bArr, 0, bArr3, 44, bArr.length);
        return bArr3;
    }

    public static byte[] copyBytesOfRange(byte[] bArr, int i, int i2) {
        if (i > i2 || i < 0 || i2 < 0 || i2 > bArr.length) {
            return null;
        }
        byte[] bArr2 = new byte[i2 - i];
        for (int i3 = i; i3 < i2; i3++) {
            bArr2[i3 - i] = bArr[i3];
        }
        return bArr2;
    }

    public static String generateSerialNumber() {
        return UUID.randomUUID().toString();
    }

    public static NetworkInfo getNetworkInfo(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static int indexOf(byte[] bArr, byte[] bArr2, int i) {
        int[] a2;
        int i2;
        try {
            a2 = a(bArr2);
            i2 = 0;
        } catch (Exception unused) {
        }
        if (bArr.length != 0 && i < bArr.length) {
            while (i < bArr.length) {
                while (i2 > 0 && bArr2[i2] != bArr[i]) {
                    i2 = a2[i2 - 1];
                }
                if (bArr2[i2] == bArr[i]) {
                    i2++;
                }
                if (i2 == bArr2.length) {
                    return (i - bArr2.length) + 1;
                }
                i++;
            }
            return -1;
        }
        return -1;
    }

    public static boolean isNetworkConnected(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean isWifiConnected(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected() && networkInfo.getType() == 1;
    }

    public static String parseByte2HexStr(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & ExifInterface.MARKER);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            sb.append(hexString.toUpperCase());
        }
        return sb.toString();
    }

    public static byte[] parseHexStr2Byte(String str) {
        if (str.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length() / 2; i++) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            bArr[i] = (byte) ((Integer.parseInt(str.substring(i2, i3), 16) * 16) + Integer.parseInt(str.substring(i3, i2 + 2), 16));
        }
        return bArr;
    }

    public static byte[] shortArrayToByteArray(short[] sArr) {
        int length = sArr.length;
        ByteBuffer allocate = ByteBuffer.allocate(sArr.length * 2);
        allocate.clear();
        allocate.order(ByteOrder.nativeOrder());
        for (int i = 0; i < length; i++) {
            allocate.putShort(i * 2, sArr[i]);
        }
        return allocate.array();
    }
}
