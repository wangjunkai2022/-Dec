package com.ss.android.socialbase.appdownloader.f;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.ss.android.socialbase.appdownloader.g;
import com.ss.android.socialbase.downloader.i.f;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/* loaded from: classes7.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static String f11780a = null;
    public static String b = "";
    public static String c = null;
    public static String d = "";
    public static String e;
    public static String f;
    public static String g;

    public static boolean a() {
        return a("EMUI");
    }

    public static boolean b() {
        return a("MIUI");
    }

    public static boolean c() {
        return a("VIVO");
    }

    public static boolean d() {
        o();
        return a(f11780a);
    }

    public static boolean e() {
        return a("FLYME");
    }

    public static boolean f() {
        return a("SAMSUNG");
    }

    public static String g() {
        if (e == null) {
            a("");
        }
        return e;
    }

    public static String h() {
        if (f == null) {
            a("");
        }
        return f;
    }

    public static String i() {
        if (c == null) {
            a("");
        }
        return c;
    }

    @NonNull
    public static String j() {
        String str = Build.MANUFACTURER;
        return str == null ? "" : str.trim();
    }

    @NonNull
    public static String k() {
        String str = Build.DISPLAY;
        return str == null ? "" : str.trim();
    }

    public static boolean l() {
        p();
        return "V10".equals(g);
    }

    public static boolean m() {
        p();
        return "V11".equals(g);
    }

    public static boolean n() {
        p();
        return "V12".equals(g);
    }

    public static void o() {
        if (TextUtils.isEmpty(f11780a)) {
            com.ss.android.socialbase.downloader.downloader.c.F();
            f11780a = com.ss.android.socialbase.downloader.constants.e.b;
            d = Cgoto.m991class(Cgoto.m1016super("ro.build.version."), com.ss.android.socialbase.downloader.constants.e.c, "rom");
            b = Cgoto.m991class(Cgoto.m1016super("com."), com.ss.android.socialbase.downloader.constants.e.c, ".market");
        }
    }

    public static void p() {
        if (g == null) {
            try {
                g = d("ro.miui.ui.version.name");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            String str = g;
            if (str == null) {
                str = "";
            }
            g = str;
        }
    }

    public static boolean a(String str) {
        o();
        String str2 = e;
        if (str2 != null) {
            return str2.equals(str);
        }
        String d2 = d("ro.miui.ui.version.name");
        f = d2;
        if (!TextUtils.isEmpty(d2)) {
            e = "MIUI";
            c = "com.xiaomi.market";
            g = f;
        } else {
            String d3 = d("ro.build.version.emui");
            f = d3;
            if (!TextUtils.isEmpty(d3)) {
                e = "EMUI";
                c = "com.huawei.appmarket";
            } else {
                String d4 = d(d);
                f = d4;
                if (!TextUtils.isEmpty(d4)) {
                    e = f11780a;
                    if (g.a(b) > -1) {
                        c = b;
                    } else {
                        c = "com.heytap.market";
                    }
                } else {
                    String d5 = d("ro.vivo.os.version");
                    f = d5;
                    if (!TextUtils.isEmpty(d5)) {
                        e = "VIVO";
                        c = "com.bbk.appstore";
                    } else {
                        String d6 = d("ro.smartisan.version");
                        f = d6;
                        if (!TextUtils.isEmpty(d6)) {
                            e = "SMARTISAN";
                            c = "com.smartisanos.appstore";
                        } else {
                            String d7 = d("ro.gn.sv.version");
                            f = d7;
                            if (!TextUtils.isEmpty(d7)) {
                                e = "QIONEE";
                                c = "com.gionee.aora.market";
                            } else {
                                String d8 = d("ro.lenovo.lvp.version");
                                f = d8;
                                if (!TextUtils.isEmpty(d8)) {
                                    e = "LENOVO";
                                    c = "com.lenovo.leos.appstore";
                                } else if (j().toUpperCase().contains("SAMSUNG")) {
                                    e = "SAMSUNG";
                                    c = "com.sec.android.app.samsungapps";
                                } else if (j().toUpperCase().contains("ZTE")) {
                                    e = "ZTE";
                                    c = "zte.com.market";
                                } else if (j().toUpperCase().contains("NUBIA")) {
                                    e = "NUBIA";
                                    c = "cn.nubia.neostore";
                                } else if (k().toUpperCase().contains("FLYME")) {
                                    e = "FLYME";
                                    c = "com.meizu.mstore";
                                    f = k();
                                } else if (j().toUpperCase().contains("ONEPLUS")) {
                                    e = "ONEPLUS";
                                    f = d("ro.rom.version");
                                    if (g.a(b) > -1) {
                                        c = b;
                                    } else {
                                        c = "com.heytap.market";
                                    }
                                } else {
                                    e = j().toUpperCase();
                                    c = "";
                                    f = "";
                                }
                            }
                        }
                    }
                }
            }
        }
        return e.equals(str);
    }

    public static String b(String str) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            try {
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                f.a(bufferedReader);
                return readLine;
            } catch (Throwable unused) {
                f.a(bufferedReader);
                return null;
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
    }

    public static String c(String str) throws Throwable {
        return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
    }

    public static String d(String str) {
        if (com.ss.android.socialbase.downloader.g.a.b().optBoolean("enable_reflect_system_properties", true)) {
            try {
                return c(str);
            } catch (Throwable th) {
                th.printStackTrace();
                return b(str);
            }
        }
        return b(str);
    }
}
