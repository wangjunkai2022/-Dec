package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.os.Build;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: RomUtils.java */
/* loaded from: classes8.dex */
public class b0 {

    /* renamed from: a  reason: collision with root package name */
    public static final CharSequence f10981a = "amigo";
    public static final CharSequence b = "funtouch";
    public static final ExecutorService c = ThreadHelper.initSingleThreadExecutor("romutils", 2, new a());
    public static boolean d = false;
    public static boolean e = false;

    /* compiled from: RomUtils.java */
    /* loaded from: classes8.dex */
    public static class a implements RejectedExecutionHandler {
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    }

    /* compiled from: RomUtils.java */
    /* loaded from: classes8.dex */
    public static class b implements Callable<String> {

        /* renamed from: a  reason: collision with root package name */
        public final String f10982a;

        public b(String str) {
            this.f10982a = str;
        }

        @Override // java.util.concurrent.Callable
        public String call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            String b = b0.b(this.f10982a);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            Logger.d("RomUtils", "property:" + b + ",getSystemProperty use time :" + currentTimeMillis2);
            if (!TextUtils.isEmpty(b)) {
                try {
                    Logger.w("RomUtils", "SP-getPropertyFromSP:" + b);
                    c0.a("rom_info", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).b("rom_property_info", b);
                } catch (Throwable unused) {
                }
            }
            return b;
        }
    }

    public static String b() {
        return Build.DISPLAY + "_" + c("ro.gn.sv.version");
    }

    public static String c() {
        if (o()) {
            StringBuilder m1016super = Cgoto.m1016super("coloros_");
            m1016super.append(c("ro.build.version.opporom"));
            m1016super.append("_");
            m1016super.append(Build.DISPLAY);
            return m1016super.toString();
        }
        return "";
    }

    public static String d() {
        String f = f();
        if (f == null || !f.toLowerCase().contains("emotionui")) {
            return "";
        }
        StringBuilder m1025while = Cgoto.m1025while(f, "_");
        m1025while.append(Build.DISPLAY);
        return m1025while.toString();
    }

    public static String e() {
        if (p()) {
            StringBuilder m1016super = Cgoto.m1016super("eui_");
            m1016super.append(c("ro.letv.release.version"));
            m1016super.append("_");
            m1016super.append(Build.DISPLAY);
            return m1016super.toString();
        }
        return "";
    }

    public static String f() {
        return c("ro.build.version.emui");
    }

    public static String g() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    public static String h() {
        return c("ro.vivo.os.build.display.id") + "_" + c("ro.vivo.product.version");
    }

    public static String i() {
        if (t()) {
            StringBuilder m1016super = Cgoto.m1016super("miui_");
            m1016super.append(c("ro.miui.ui.version.name"));
            m1016super.append("_");
            m1016super.append(Build.VERSION.INCREMENTAL);
            return m1016super.toString();
        }
        return "";
    }

    public static String j() {
        try {
            String a2 = c0.a("rom_info", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).a("rom_property_info", "");
            Logger.i("RomUtils", "get Property From SP...=" + a2);
            return a2;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String k() {
        if (u()) {
            return l();
        }
        if (t()) {
            return i();
        }
        if (q()) {
            return g();
        }
        if (o()) {
            return c();
        }
        String d2 = d();
        if (TextUtils.isEmpty(d2)) {
            if (r()) {
                return h();
            }
            if (n()) {
                return b();
            }
            if (m()) {
                return a();
            }
            String e2 = e();
            return !TextUtils.isEmpty(e2) ? e2 : Build.DISPLAY;
        }
        return d2;
    }

    public static String l() {
        if (u()) {
            try {
                String c2 = c("ro.smartisan.version");
                return "smartisan_" + c2;
            } catch (Throwable unused) {
            }
        }
        return Build.DISPLAY;
    }

    public static boolean m() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static boolean n() {
        return !TextUtils.isEmpty(Build.DISPLAY) && Build.DISPLAY.toLowerCase().contains(f10981a);
    }

    public static boolean o() {
        String str = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains("oppo");
    }

    public static boolean p() {
        return !TextUtils.isEmpty(c("ro.letv.release.version"));
    }

    public static boolean q() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static boolean r() {
        String c2 = c("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(c2) && c2.toLowerCase().contains(b);
    }

    public static boolean s() {
        try {
            if (TextUtils.isEmpty(Build.BRAND) || !Build.BRAND.toLowerCase().startsWith("huawei")) {
                if (TextUtils.isEmpty(Build.MANUFACTURER)) {
                    return false;
                }
                if (!Build.MANUFACTURER.toLowerCase().startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean t() {
        if (!e) {
            try {
                Class.forName("miui.os.Build");
                d = true;
                e = true;
                return true;
            } catch (Exception unused) {
                e = true;
            }
        }
        return d;
    }

    public static boolean u() {
        return "smartisan".equalsIgnoreCase(Build.MANUFACTURER) || "smartisan".equalsIgnoreCase(Build.BRAND);
    }

    public static String a() {
        return c("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static String b(String str) {
        BufferedReader bufferedReader;
        Process exec;
        String str2 = "";
        try {
            Runtime runtime = Runtime.getRuntime();
            exec = runtime.exec("getprop " + str);
            bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
        } catch (Throwable th) {
            th = th;
            bufferedReader = null;
        }
        try {
            str2 = bufferedReader.readLine();
            exec.destroy();
            try {
                bufferedReader.close();
            } catch (IOException e2) {
                Logger.e("ToolUtils", "Exception while closing InputStream", e2);
            }
            return str2;
        } catch (Throwable th2) {
            th = th2;
            try {
                Logger.e("ToolUtils", "Unable to read sysprop " + str, th);
                return str2;
            } finally {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        Logger.e("ToolUtils", "Exception while closing InputStream", e3);
                    }
                }
            }
        }
    }

    public static String c(String str) {
        String str2;
        try {
            str2 = j();
            try {
                if (TextUtils.isEmpty(str2)) {
                    FutureTask futureTask = new FutureTask(new b(str));
                    c.execute(futureTask);
                    str2 = (String) futureTask.get(1L, TimeUnit.SECONDS);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            str2 = "";
        }
        return str2 == null ? "" : str2;
    }

    public static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            str = f();
        }
        return (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("emotionui")) || s();
    }
}
