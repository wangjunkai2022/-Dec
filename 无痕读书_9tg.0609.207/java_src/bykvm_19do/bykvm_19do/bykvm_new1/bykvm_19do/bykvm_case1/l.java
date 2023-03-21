package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import android.os.Build;
import android.text.TextUtils;
import com.apk.Cgoto;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Locale;
/* compiled from: RomUtils.java */
/* loaded from: classes8.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public static final CharSequence f11063a = "amigo";
    public static final CharSequence b = "funtouch";

    public static String a() {
        return a("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static String b() {
        return Build.DISPLAY + "_" + a("ro.gn.sv.version");
    }

    public static String c() {
        if (l()) {
            StringBuilder m1016super = Cgoto.m1016super("coloros_");
            m1016super.append(a("ro.build.version.opporom"));
            m1016super.append("_");
            m1016super.append(Build.DISPLAY);
            return m1016super.toString();
        }
        return "";
    }

    public static String d() {
        String a2 = c.a();
        if (a2 == null || !a2.toLowerCase(Locale.getDefault()).contains("emotionui")) {
            return "";
        }
        StringBuilder m1025while = Cgoto.m1025while(a2, "_");
        m1025while.append(Build.DISPLAY);
        return m1025while.toString();
    }

    public static String e() {
        if (m()) {
            StringBuilder m1016super = Cgoto.m1016super("eui_");
            m1016super.append(a("ro.letv.release.version"));
            m1016super.append("_");
            m1016super.append(Build.DISPLAY);
            return m1016super.toString();
        }
        return "";
    }

    public static String f() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase(Locale.getDefault()).contains("flyme")) ? "" : str;
    }

    public static String g() {
        return a("ro.vivo.os.build.display.id") + "_" + a("ro.vivo.product.version");
    }

    public static String h() {
        if (c.d()) {
            StringBuilder m1016super = Cgoto.m1016super("miui_");
            m1016super.append(a("ro.miui.ui.version.name"));
            m1016super.append("_");
            m1016super.append(Build.VERSION.INCREMENTAL);
            return m1016super.toString();
        }
        return "";
    }

    public static String i() {
        if (c.d()) {
            return h();
        }
        if (c.b()) {
            return f();
        }
        if (l()) {
            return c();
        }
        String d = d();
        if (TextUtils.isEmpty(d)) {
            if (n()) {
                return g();
            }
            if (k()) {
                return b();
            }
            if (j()) {
                return a();
            }
            String e = e();
            return !TextUtils.isEmpty(e) ? e : Build.DISPLAY;
        }
        return d;
    }

    public static boolean j() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.getDefault());
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static boolean k() {
        return !TextUtils.isEmpty(Build.DISPLAY) && Build.DISPLAY.toLowerCase(Locale.getDefault()).contains(f11063a);
    }

    public static boolean l() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase(Locale.getDefault()).contains("oppo");
    }

    public static boolean m() {
        return !TextUtils.isEmpty(a("ro.letv.release.version"));
    }

    public static boolean n() {
        String a2 = a("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(a2) && a2.toLowerCase(Locale.getDefault()).contains(b);
    }

    public static String a(String str) {
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
            f.a(bufferedReader);
            return str2;
        } catch (Throwable unused2) {
            f.a(bufferedReader);
            return str2;
        }
    }
}
