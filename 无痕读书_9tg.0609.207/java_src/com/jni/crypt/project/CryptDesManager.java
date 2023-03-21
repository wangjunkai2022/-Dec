package com.jni.crypt.project;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.baidu.tts.client.SpeechSynthesizer;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.security.Key;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;
/* loaded from: classes8.dex */
public class CryptDesManager {
    public static boolean isEncode;

    static {
        System.loadLibrary("CryptDesManager");
    }

    public static String decode(String str) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (isEncode) {
            if (!TextUtils.isEmpty(str) && !str.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP)) {
                return new String(nativeDecryptUrl(Base64.decode(str, 2)), nativeGetEncoding());
            }
            return str;
        }
        return null;
    }

    public static byte[] decodeBytes(byte[] bArr) {
        if (isEncode) {
            return nativeDecryptContent(bArr);
        }
        return null;
    }

    public static void decodeClass(Object obj) {
        Field[] declaredFields;
        if (isEncode && obj != null) {
            try {
                if (obj instanceof List) {
                    List list = (List) obj;
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        Object obj2 = list.get(i);
                        if (obj2 instanceof String) {
                            list.set(i, decodeContent((String) obj2));
                        } else {
                            decodeClass(obj2);
                        }
                    }
                    return;
                }
                for (Field field : obj.getClass().getDeclaredFields()) {
                    String name = field.getName();
                    String str = name.substring(0, 1).toUpperCase() + name.substring(1);
                    String obj3 = field.getGenericType().toString();
                    if (obj3.equals("class java.lang.String")) {
                        String str2 = (String) obj.getClass().getMethod("get" + str, new Class[0]).invoke(obj, new Object[0]);
                        if (str2 != null) {
                            field.setAccessible(true);
                            field.set(obj, decodeContent(str2));
                        }
                    } else if (obj3.equals("class java.lang.Object")) {
                        Object invoke = obj.getClass().getMethod("get" + str, new Class[0]).invoke(obj, new Object[0]);
                        if (invoke != null) {
                            decodeClass(invoke);
                        }
                    } else if (obj3.contains("java.util.List")) {
                        List<Object> list2 = (List) obj.getClass().getMethod("get" + str, new Class[0]).invoke(obj, new Object[0]);
                        if (list2 != null) {
                            for (Object obj4 : list2) {
                                decodeClass(obj4);
                            }
                        }
                    }
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public static String decodeContent(String str) {
        return decodeContent(str, false);
    }

    public static String decodeName(String str, int i) {
        return nativeDecodeName(decodeContent(str), i);
    }

    public static String decodeValue(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return new String(nativeDecryptContent(Base64.decode(str, 2)), nativeGetEncoding());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String encode(String str) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (isEncode) {
            if (!TextUtils.isEmpty(str)) {
                return Base64.encodeToString(nativeEncryptUrl(str.getBytes(nativeGetEncoding())), 2);
            }
            return str;
        }
        return null;
    }

    public static String encodeContent(String str) {
        return encodeContent(str, false);
    }

    public static String encodeValue(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return Base64.encodeToString(nativeEncryptContent(str.getBytes(nativeGetEncoding())), 2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static boolean init(Context context) {
        if (context != null) {
            try {
                isEncode = cVerify(context);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return isEncode;
    }

    public static int javaIndex(String str, String str2) {
        return str.indexOf(str2);
    }

    public static int javaLastIndexOf(String str, String str2) {
        return str.lastIndexOf(str2);
    }

    public static byte[] jniDecrypt(byte[] bArr, byte[] bArr2, byte[] bArr3, String str, String str2) throws Exception {
        try {
            Key key = toKey(bArr2, str);
            Cipher cipher = Cipher.getInstance(str2);
            cipher.init(2, key, new IvParameterSpec(bArr3));
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return bArr;
        }
    }

    public static byte[] jniEncrypt(byte[] bArr, byte[] bArr2, byte[] bArr3, String str, String str2) throws Exception {
        try {
            Key key = toKey(bArr2, str);
            Cipher cipher = Cipher.getInstance(str2);
            cipher.init(1, key, new IvParameterSpec(bArr3));
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return bArr;
        }
    }

    public static native String nativeDecodeName(String str, int i);

    public static native byte[] nativeDecryptContent(byte[] bArr);

    public static native byte[] nativeDecryptUrl(byte[] bArr);

    public static native byte[] nativeEncryptContent(byte[] bArr);

    public static native byte[] nativeEncryptUrl(byte[] bArr);

    public static native String nativeGetDecrypyKey();

    public static native String nativeGetEncoding();

    public static String showLog(String str) {
        return str;
    }

    public static Key toKey(byte[] bArr, String str) throws Exception {
        return SecretKeyFactory.getInstance(str).generateSecret(new DESedeKeySpec(bArr));
    }

    public static String decodeContent(String str, boolean z) {
        if (z) {
            str = decodeValue(str);
        } else if (!isEncode) {
            return null;
        } else {
            if (!TextUtils.isEmpty(str) && str.contains(nativeGetDecrypyKey())) {
                str = decodeValue(str.substring(str.indexOf(nativeGetDecrypyKey())));
            }
        }
        return str == null ? "" : str;
    }

    public static String encodeContent(String str, boolean z) {
        if (z) {
            return encodeValue(str);
        }
        if (isEncode) {
            return !TextUtils.isEmpty(str) ? encodeValue(str) : str;
        }
        return null;
    }

    public static String encodeContent(String str, String str2, String str3) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return Base64.encodeToString(jniEncrypt(str.getBytes("UTF-8"), str2.getBytes("UTF-8"), str3.getBytes("UTF-8"), "DESede", "desede/CBC/PKCS5Padding"), 2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String decodeContent(String str, String str2, String str3) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return new String(jniDecrypt(Base64.decode(str, 2), str2.getBytes("UTF-8"), str3.getBytes("UTF-8"), "DESede", "desede/CBC/PKCS5Padding"), nativeGetEncoding());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static boolean cVerify(Context context) {
        return true;
    }
}
