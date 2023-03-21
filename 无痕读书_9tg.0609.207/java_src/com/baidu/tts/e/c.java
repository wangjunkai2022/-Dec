package com.baidu.tts.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Base64;
import androidx.exifinterface.media.ExifInterface;
import com.baidu.tts.client.SpeechSynthesizer;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.litepal.crud.LitePalSupport;
/* compiled from: Utility.java */
/* loaded from: classes8.dex */
public class c {
    public static String a() {
        return SpeechSynthesizer.VersionName;
    }

    public static void a(Context context, long j) {
        SharedPreferences.Editor edit = context.getSharedPreferences("tts", 0).edit();
        edit.putLong("last_upload_stat_time", j);
        edit.commit();
    }

    public static String b() {
        return "Android";
    }

    public static String b(Context context) {
        return b() + "&" + Build.MODEL + "&" + Build.VERSION.RELEASE + "&" + Build.VERSION.SDK_INT + "&" + c(context);
    }

    @SuppressLint({"DefaultLocale"})
    public static int c(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return (activeNetworkInfo == null || !"wifi".equals(activeNetworkInfo.getTypeName().toLowerCase())) ? 3 : 1;
    }

    public static String c() {
        return "离在线融合TTS SDK";
    }

    public static String d(Context context) {
        return context.getPackageName();
    }

    public static NetworkInfo e(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static boolean f(Context context) {
        NetworkInfo e = e(context);
        return e != null && e.isConnected();
    }

    public static String b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(LitePalSupport.MD5);
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < digest.length; i++) {
                if (Integer.toHexString(digest[i] & ExifInterface.MARKER).length() == 1) {
                    stringBuffer.append(SpeechSynthesizer.REQUEST_DNS_OFF);
                    stringBuffer.append(Integer.toHexString(digest[i] & ExifInterface.MARKER));
                } else {
                    stringBuffer.append(Integer.toHexString(digest[i] & ExifInterface.MARKER));
                }
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return "";
        }
    }

    public static long a(Context context) {
        return context.getSharedPreferences("tts", 0).getLong("last_upload_stat_time", 0L);
    }

    public static String a(String str) {
        if (str != null && str.length() != 0) {
            try {
                byte[] bytes = str.getBytes("utf-8");
                return new String(Base64.decode(bytes, 0, bytes.length, 0), "utf-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
