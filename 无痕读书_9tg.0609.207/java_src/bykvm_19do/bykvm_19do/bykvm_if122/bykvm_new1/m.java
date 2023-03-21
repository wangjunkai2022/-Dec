package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.UIUtils;
import com.bytedance.pangle.servermanager.AbsServerManager;
import com.ss.android.download.api.constant.BaseConstants;
import com.umeng.analytics.pro.ak;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import org.json.JSONObject;
import org.litepal.crud.LitePalSupport;
/* compiled from: DeviceUtils.java */
/* loaded from: classes8.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public static String f11000a = null;
    public static long b = -1;
    public static int c = 1;
    public static String d = null;
    public static long e = -1;

    public static String a() {
        int i;
        String m1019this;
        if (b == -1) {
            f11000a = a(true);
            m1019this = "--==-- 获取ip，真实获取";
        } else if (SystemClock.elapsedRealtime() - b > 1800000) {
            f11000a = a(true);
            c = 0;
            m1019this = "--==-- 获取ip，大于30min了，真实获取";
        } else if (!TextUtils.isEmpty(f11000a) || (i = c) >= 9) {
            return f11000a;
        } else {
            c = i + 1;
            f11000a = a(true);
            m1019this = Cgoto.m1019this(Cgoto.m1016super("--==-- 获取ip，30min内，ip是空，重试第"), c, "次，真实获取");
        }
        Logger.d("TTMediationSDK", m1019this);
        return f11000a;
    }

    public static String a(int i) {
        return i != 120 ? i != 240 ? i != 320 ? i != 480 ? i != 640 ? "mdpi" : "xxxhdpi" : "xxhdpi" : "xhdpi" : "hdpi" : "ldpi";
    }

    @SuppressLint({"NewApi"})
    public static String a(String str) {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (str == null || networkInterface.getName().equalsIgnoreCase(str)) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    int length = hardwareAddress.length;
                    for (int i = 0; i < length; i++) {
                        sb.append(String.format("%02X:", Byte.valueOf(hardwareAddress[i])));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
        } catch (Exception unused) {
        }
        return "";
    }

    public static String a(boolean z) {
        b = SystemClock.elapsedRealtime();
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress()) {
                        boolean z2 = inetAddress instanceof Inet4Address;
                        String upperCase = inetAddress.getHostAddress().toUpperCase();
                        if (z) {
                            if (z2) {
                                return upperCase;
                            }
                        } else if (!z2) {
                            int indexOf = upperCase.indexOf(37);
                            return indexOf < 0 ? upperCase : upperCase.substring(0, indexOf);
                        }
                    }
                }
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    public static JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(com.umeng.commonsdk.statistics.idtracking.f.f12309a, v.e(context));
            jSONObject.put(com.umeng.commonsdk.statistics.idtracking.b.f12304a, v.a(context));
            jSONObject.put("uuid", v.h(context));
            jSONObject.put("ssid", v.g(context));
            jSONObject.put("wifi_mac", v.i(context));
            jSONObject.put("imsi", v.f(context));
            jSONObject.put("power_on_time", SystemClock.elapsedRealtime() + "");
            jSONObject.put("rom_version", b0.k());
            jSONObject.put("sys_compiling_time", v.b(context));
            jSONObject.put("type", c(context));
            jSONObject.put(ak.x, 1);
            jSONObject.put(ak.y, Build.VERSION.RELEASE + "");
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put(ak.N, Locale.getDefault().getLanguage());
            jSONObject.put("conn_type", y.c(context));
            jSONObject.put(com.umeng.commonsdk.statistics.idtracking.g.f12310a, c());
            jSONObject.put("screen_width", UIUtils.getScreenWidth(context));
            jSONObject.put("screen_height", UIUtils.getScreenHeight(context));
            jSONObject.put(com.umeng.commonsdk.statistics.idtracking.h.d, z.a());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static String b() {
        String languageTag = Locale.getDefault().toLanguageTag();
        return !TextUtils.isEmpty(languageTag) ? languageTag : "";
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    public static org.json.JSONObject b(android.content.Context r4) {
        /*
            r0 = 55
            r1 = 0
        L3:
            r2 = 72
        L5:
            switch(r2) {
                case 72: goto Lce;
                case 73: goto L18;
                case 74: goto L9;
                default: goto L8;
            }
        L8:
            goto L3
        L9:
            r2 = 53
            if (r1 == r2) goto L12
            r2 = 54
            if (r1 == r2) goto Lce
            goto L3
        L12:
            switch(r0) {
                case 29: goto L1c;
                case 30: goto L3;
                case 31: goto L9;
                default: goto L15;
            }
        L15:
            r0 = 30
            goto L12
        L18:
            r2 = 57
            if (r1 > r2) goto L3
        L1c:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            java.lang.String r1 = "os"
            r2 = 1
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "imei"
            java.lang.String r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.v.e(r4)     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "imei_md5"
            java.lang.String r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.v.e(r4)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.x.a(r2)     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "IdUtils.getImei(context)"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcd
            r2.<init>()     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r3 = "IdUtils.getImei(context)="
            r2.append(r3)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.v.e(r4)     // Catch: java.lang.Throwable -> Lcd
            r2.append(r3)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lcd
            com.bytedance.msdk.adapter.util.Logger.d(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "gaid"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.g r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.g.c()     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = r2.a()     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "oaid"
            java.lang.String r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.z.a()     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "applog_did"
            java.lang.String r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.v.d(r4)     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "device_model"
            java.lang.String r2 = android.os.Build.MODEL     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "vendor"
            java.lang.String r2 = android.os.Build.MANUFACTURER     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "ua"
            java.lang.String r2 = j()     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "ip"
            java.lang.String r2 = a()     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "package_name"
            java.lang.String r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l0.a()     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "publisher_did"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G()     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = r2.r()     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = "android_id"
            java.lang.String r4 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.v.a(r4)     // Catch: java.lang.Throwable -> Lcd
            r0.put(r1, r4)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r4 = "os_version"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcd
            r1.<init>()     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = android.os.Build.VERSION.RELEASE     // Catch: java.lang.Throwable -> Lcd
            r1.append(r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = ""
            r1.append(r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lcd
            r0.put(r4, r1)     // Catch: java.lang.Throwable -> Lcd
        Lcd:
            return r0
        Lce:
            r2 = 73
            r1 = 16
            goto L5
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.m.b(android.content.Context):org.json.JSONObject");
    }

    public static int c(Context context) {
        if (e(context)) {
            return 3;
        }
        return d(context) ? 2 : 1;
    }

    public static String c() {
        if (e != -1 && (SystemClock.elapsedRealtime() - e <= 1800000 || !TextUtils.isEmpty(d))) {
            return d;
        }
        d = d();
        Logger.d("TTMediationSDK", "--==-- 获取mac，真实获取");
        return d;
    }

    public static String d() {
        e = SystemClock.elapsedRealtime();
        String a2 = a("wlan0");
        if (TextUtils.isEmpty(a2)) {
            a2 = a("eth0");
        }
        return TextUtils.isEmpty(a2) ? "DU:MM:YA:DD:RE:SS" : a2;
    }

    public static boolean d(Context context) {
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String e() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (b0.t()) {
            str = "MIUI-";
        } else if (!b0.q()) {
            String f = b0.f();
            if (b0.d(f)) {
                sb.append("EMUI-");
            }
            if (!TextUtils.isEmpty(f)) {
                sb.append(f);
                str = "-";
            }
            sb.append(Build.VERSION.INCREMENTAL);
            return sb.toString();
        } else {
            str = "FLYME-";
        }
        sb.append(str);
        sb.append(Build.VERSION.INCREMENTAL);
        return sb.toString();
    }

    public static boolean e(Context context) {
        try {
            return (context.getResources().getConfiguration().uiMode & 15) == 4;
        } catch (Exception unused) {
            return false;
        }
    }

    public static int f() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / BaseConstants.Time.HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    public static long g() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
            long parseLong = Long.parseLong(bufferedReader.readLine().split("\\s+")[1]);
            bufferedReader.close();
            return parseLong * 1024;
        } catch (IOException e2) {
            e2.printStackTrace();
            return -1L;
        }
    }

    public static long h() {
        if (k()) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockSize() * statFs.getBlockCount();
        }
        return -1L;
    }

    public static JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        Context d2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d();
        try {
            jSONObject.put("device_id", v.d(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()));
            jSONObject.put("user_unique_id", v.d(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()) != null ? v.d(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()) : UUID.randomUUID().toString());
            jSONObject.put("sdk_version", "3.6.0.1");
            jSONObject.put(ak.x, "Android");
            jSONObject.put(ak.y, Build.VERSION.RELEASE);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put(ak.z, UIUtils.getScreenHeight(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()) + "x" + UIUtils.getScreenWidth(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()));
            jSONObject.put(ak.N, Locale.getDefault().getLanguage());
            jSONObject.put(ak.M, f());
            jSONObject.put(ak.Q, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.e.c(d2));
            jSONObject.put("openudid", v.a(d2));
            jSONObject.put("aid", "5685");
            jSONObject.put(ak.s, h.b());
            jSONObject.put("app_version", h.a());
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, l0.a());
            jSONObject.put("region", Locale.getDefault().getCountry());
            jSONObject.put("tz_name", Calendar.getInstance().getTimeZone().getID());
            jSONObject.put("tz_offset", Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000);
            jSONObject.put("rom", e());
            jSONObject.put(ak.H, Build.MANUFACTURER);
            ArrayList<String> a2 = i.a(d2, LitePalSupport.MD5);
            if (a2 != null && !a2.isEmpty()) {
                jSONObject.put("sig_hash", Build.MANUFACTURER);
            }
            jSONObject.put("display_density", a(UIUtils.getDensityDpi(d2)));
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("density_dpi", UIUtils.getDensityDpi(d2));
            jSONObject.put(ak.F, Build.BRAND);
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("build_serial", v.j(d2));
            jSONObject.put("version_code", l0.d());
            jSONObject.put("udid", v.e(d2));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("imei_md5", x.a(v.e(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d())));
            jSONObject2.put("gaid", g.c().a());
            jSONObject2.put("applog_did", v.d(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()));
            jSONObject2.put("publisher_did", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().r());
            jSONObject2.put(com.umeng.commonsdk.statistics.idtracking.b.f12304a, v.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()));
            jSONObject2.put(com.umeng.commonsdk.statistics.idtracking.h.d, z.a());
            jSONObject.put("custom", jSONObject2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static String j() {
        String str;
        try {
            str = System.getProperty("http.agent");
        } catch (Exception unused) {
            str = "unKnow";
        }
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(";");
        if (lastIndexOf != -1 && str.length() > lastIndexOf) {
            int i = lastIndexOf + 1;
            String substring = str.substring(0, i);
            String substring2 = str.substring(i);
            StringBuilder m1016super = Cgoto.m1016super(" ");
            m1016super.append(Locale.getDefault().getLanguage());
            m1016super.append("-");
            m1016super.append(Locale.getDefault().getCountry());
            m1016super.append(";");
            str = substring.concat(m1016super.toString()).concat(substring2);
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127) {
                sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static boolean k() {
        return "mounted".equals(Environment.getExternalStorageState());
    }
}
