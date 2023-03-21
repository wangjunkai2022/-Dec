package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Locale;
/* compiled from: Device.java */
/* loaded from: classes8.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f11059a;

    public static String a() {
        return a("ro.build.version.emui");
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            str = a();
        }
        if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.getDefault()).startsWith("emotionui")) {
            return c();
        }
        return true;
    }

    public static boolean c() {
        try {
            if (TextUtils.isEmpty(Build.BRAND) || !Build.BRAND.toLowerCase(Locale.getDefault()).startsWith("huawei")) {
                if (TextUtils.isEmpty(Build.MANUFACTURER)) {
                    return false;
                }
                if (!Build.MANUFACTURER.toLowerCase(Locale.getDefault()).startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean d() {
        if (!f11059a) {
            try {
                Class.forName("miui.os.Build");
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b.b.f11052a = true;
                f11059a = true;
                return true;
            } catch (Exception unused) {
                f11059a = true;
            }
        }
        return bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b.b.f11052a;
    }

    public static String a(String str) {
        BufferedReader bufferedReader;
        String str2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            try {
                String readLine = bufferedReader.readLine();
                try {
                    bufferedReader.close();
                    f.a(bufferedReader);
                    return readLine;
                } catch (Throwable unused) {
                    str2 = readLine;
                    f.a(bufferedReader);
                    return str2;
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
            bufferedReader = null;
        }
    }

    public static boolean b() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }
}
