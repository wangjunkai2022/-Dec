package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.material.internal.ManufacturerUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

/* loaded from: classes8.dex */
public class i {
    public static String a() {
        Throwable th;
        String str;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        String str2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.build.version.emui").getInputStream()), 1024);
        } catch (Throwable th2) {
            th = th2;
            str = null;
        }
        try {
            str2 = bufferedReader.readLine();
            bufferedReader.close();
            try {
                bufferedReader.close();
            } catch (IOException unused) {
            }
            return str2;
        } catch (Throwable th3) {
            str = str2;
            bufferedReader2 = bufferedReader;
            th = th3;
            try {
                l0.a(th);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused2) {
                    }
                }
                return str;
            } catch (Throwable th4) {
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th4;
            }
        }
    }

    public static boolean b() {
        return (!TextUtils.isEmpty(Build.BRAND) && Build.BRAND.toLowerCase().startsWith("huawei")) || (!TextUtils.isEmpty(Build.MANUFACTURER) && Build.MANUFACTURER.toLowerCase().startsWith("huawei"));
    }

    public static boolean c() {
        return (!TextUtils.isEmpty(Build.BRAND) && Build.BRAND.toLowerCase().startsWith("honor")) || (!TextUtils.isEmpty(Build.MANUFACTURER) && Build.MANUFACTURER.toLowerCase().startsWith("honor"));
    }

    public static boolean d() {
        try {
            return Class.forName("miui.os.Build").getName().length() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean e() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase().contains("oppo");
    }

    public static boolean f() {
        String str = Build.BRAND;
        if (str == null) {
            return false;
        }
        return str.toLowerCase(Locale.ENGLISH).contains(ManufacturerUtils.MEIZU);
    }

    public static boolean g() {
        return "OnePlus".equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean h() {
        return ManufacturerUtils.SAMSUNG.equalsIgnoreCase(Build.BRAND) || ManufacturerUtils.SAMSUNG.equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean i() {
        String str = Build.FINGERPRINT;
        if (!TextUtils.isEmpty(str)) {
            return str.contains("VIBEUI_V2");
        }
        String b = b("ro.build.version.incremental");
        return !TextUtils.isEmpty(b) && b.contains("VIBEUI_V2");
    }

    public static boolean j() {
        return l().toUpperCase().contains("NUBIA");
    }

    public static boolean k() {
        return l().toUpperCase().contains("ASUS");
    }

    public static String l() {
        String str = Build.MANUFACTURER;
        return str == null ? "" : str.trim();
    }

    public static String b(String str) {
        BufferedReader bufferedReader;
        Process exec;
        String str2 = "";
        try {
            Runtime runtime = Runtime.getRuntime();
            exec = runtime.exec("getprop " + str);
            bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            str2 = bufferedReader.readLine();
            exec.destroy();
            try {
                bufferedReader.close();
            } catch (IOException unused2) {
            }
            return str2;
        } catch (Throwable unused3) {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException unused4) {
                }
            }
            return str2;
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = a();
        }
        return (!TextUtils.isEmpty(str) && (str.toLowerCase().contains("emotionui") || str.toLowerCase().contains("magicui"))) || b() || c();
    }

    public static boolean a(Context context) {
        return l().toUpperCase().contains("HUAWEI");
    }
}
