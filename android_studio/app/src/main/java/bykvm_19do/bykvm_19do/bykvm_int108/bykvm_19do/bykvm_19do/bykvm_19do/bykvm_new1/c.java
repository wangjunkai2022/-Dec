package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.i;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import com.apk.Cgoto;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.bytedance.pangle.servermanager.AbsServerManager;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.ss.android.download.api.constant.BaseConstants;
import com.umeng.analytics.pro.ak;
import com.umeng.commonsdk.statistics.idtracking.h;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.crud.LitePalSupport;

/* compiled from: EventNetApiImpl.java */
/* loaded from: classes8.dex */
public class c implements b<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> {

    /* renamed from: a  reason: collision with root package name */
    public Context f11037a;
    public final boolean b = f();
    public final String c = c();
    public long d;
    public int e;

    /* compiled from: EventNetApiImpl.java */
    /* loaded from: classes8.dex */
    public class a implements d {
        public a(c cVar) {
        }
    }

    public c(Context context) {
        this.f11037a = context;
    }

    private bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b a(byte[] bArr, Map<String, String> map, String str) {
        int i;
        String d;
        boolean z;
        String str2 = com.umeng.analytics.pro.d.O;
        try {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b = j.l().b();
            i k = b.k();
            f w = k.w();
            w.b(k.o());
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    w.a(entry.getKey(), entry.getValue());
                }
            }
            w.a(str, bArr);
            w.a("User-Agent", b.f());
            e i2 = w.i();
            boolean e = (i2 == null || !i2.b() || TextUtils.isEmpty(i2.c())) ? false : e(new JSONObject(i2.c()));
            if (i2 != null) {
                int a2 = i2.a();
                if (i2.e() != null) {
                    i = a2;
                    str2 = i2.e().get("x-tt-logid");
                } else {
                    i = a2;
                }
            } else {
                i = 0;
            }
            if (e || i != 200) {
                d = (i2 == null || i2.d() == null) ? "error unknown" : i2.d();
                z = false;
            } else {
                d = "server say not success";
                z = true;
            }
            b(bArr, map, str);
            return new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b(e, i, d, z, str2);
        } catch (Throwable th) {
            StringBuilder m1016super = Cgoto.m1016super("uploadEvent error");
            m1016super.append(th.getMessage());
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b("NetApiImpl", m1016super.toString());
            return new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b(false, 509, "service_busy", false, str2);
        }
    }

    public static String a(int i) {
        return i != 120 ? i != 240 ? i != 320 ? i != 480 ? i != 640 ? "mdpi" : "xxxhdpi" : "xxhdpi" : "xhdpi" : "hdpi" : "ldpi";
    }

    private Map<String, String> a() {
        return Cgoto.m1007native(AsyncHttpClient.HEADER_CONTENT_TYPE, "application/octet-stream;tt-data=a");
    }

    private void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar) {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b;
        i k;
        if (aVar == null || (b = j.l().b()) == null || (k = b.k()) == null) {
            return;
        }
        String optString = aVar.d().optString(BaseConstants.EVENT_LABEL_LOG_EXTRA, "");
        long a2 = k.a(optString);
        int b2 = k.b(optString);
        if (a2 == 0) {
            a2 = this.d;
        }
        this.d = a2;
        if (b2 == 0) {
            b2 = this.e;
        }
        this.e = b2;
    }

    public static int b() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / BaseConstants.Time.HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    private Map<String, String> b(JSONObject jSONObject) {
        HashMap m1007native = Cgoto.m1007native(AsyncHttpClient.HEADER_CONTENT_TYPE, "application/json; charset=utf-8");
        if (d(jSONObject)) {
            m1007native.put(AsyncHttpClient.HEADER_CONTENT_ENCODING, "union_sdk_encode");
        }
        return m1007native;
    }

    private JSONObject b(List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list) {
        i k;
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            a(list.get(0));
            jSONObject.put("header", d());
            JSONArray jSONArray = new JSONArray();
            for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar : list) {
                jSONArray.put(aVar.d());
            }
            jSONObject.put("event", jSONArray);
            jSONObject.put("_gen_time", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b = j.l().b();
        if (b == null || (k = b.k()) == null) {
            return jSONObject;
        }
        JSONObject a2 = k.a(jSONObject);
        return !d(a2) ? jSONObject : a2;
    }

    private void b(byte[] bArr, Map<String, String> map, String str) {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b;
        i k;
        if (bArr == null || bArr.length == 0 || (b = j.l().b()) == null || (k = b.k()) == null || !k.p()) {
            return;
        }
        f w = k.w();
        w.b(k.d());
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                w.a(entry.getKey(), entry.getValue());
            }
        }
        w.a(str, bArr);
        w.a("User-Agent", b.f());
        w.a(new a(this));
    }

    private String c() {
        i k;
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b = j.l().b();
        if (b != null && (k = b.k()) != null) {
            if (k.f(this.f11037a)) {
                return "tv";
            }
            if (k.d(this.f11037a)) {
                return "android_pad";
            }
        }
        return "android";
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
        if (r2 == null) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.zip.GZIPOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private byte[] c(java.util.List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 == 0) goto L8e
            boolean r1 = r5.isEmpty()
            if (r1 == 0) goto Lb
            goto L8e
        Lb:
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
            java.lang.String r2 = "header"
            org.json.JSONObject r3 = r4.e()     // Catch: org.json.JSONException -> L4b
            r1.put(r2, r3)     // Catch: org.json.JSONException -> L4b
            org.json.JSONArray r2 = new org.json.JSONArray     // Catch: org.json.JSONException -> L4b
            r2.<init>()     // Catch: org.json.JSONException -> L4b
            java.util.Iterator r5 = r5.iterator()     // Catch: org.json.JSONException -> L4b
        L22:
            boolean r3 = r5.hasNext()     // Catch: org.json.JSONException -> L4b
            if (r3 == 0) goto L36
            java.lang.Object r3 = r5.next()     // Catch: org.json.JSONException -> L4b
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a r3 = (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a) r3     // Catch: org.json.JSONException -> L4b
            org.json.JSONObject r3 = r3.d()     // Catch: org.json.JSONException -> L4b
            r2.put(r3)     // Catch: org.json.JSONException -> L4b
            goto L22
        L36:
            java.lang.String r5 = "event_v3"
            r1.put(r5, r2)     // Catch: org.json.JSONException -> L4b
            java.lang.String r5 = "magic_tag"
            java.lang.String r2 = "ss_app_log"
            r1.put(r5, r2)     // Catch: org.json.JSONException -> L4b
            java.lang.String r5 = "_gen_time"
            long r2 = java.lang.System.currentTimeMillis()     // Catch: org.json.JSONException -> L4b
            r1.put(r5, r2)     // Catch: org.json.JSONException -> L4b
        L4b:
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream
            r2 = 8192(0x2000, float:1.14794E-41)
            r5.<init>(r2)
            java.util.zip.GZIPOutputStream r2 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L67
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L67
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L81
            byte[] r0 = r0.getBytes()     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L81
            r2.write(r0)     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L81
            goto L6f
        L63:
            r0 = move-exception
            goto L6a
        L65:
            r5 = move-exception
            goto L83
        L67:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L6a:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L81
            if (r2 == 0) goto L77
        L6f:
            r2.close()     // Catch: java.io.IOException -> L73
            goto L77
        L73:
            r0 = move-exception
            r0.printStackTrace()
        L77:
            byte[] r5 = r5.toByteArray()
            int r0 = r5.length
            byte[] r5 = bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.a.a(r5, r0)
            return r5
        L81:
            r5 = move-exception
            r0 = r2
        L83:
            if (r0 == 0) goto L8d
            r0.close()     // Catch: java.io.IOException -> L89
            goto L8d
        L89:
            r0 = move-exception
            r0.printStackTrace()
        L8d:
            throw r5
        L8e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.c.c(java.util.List):byte[]");
    }

    public static byte[] c(JSONObject jSONObject) {
        try {
            return jSONObject == null ? new byte[0] : jSONObject.toString().getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            return new byte[0];
        }
    }

    @SuppressLint({"HardwareIds"})
    private JSONObject d() {
        for (char c = 14; c != '\f' && c != '\r'; c = '\r') {
        }
        JSONObject jSONObject = new JSONObject();
        try {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b = j.l().b();
            i k = b.k();
            jSONObject.put(com.umeng.commonsdk.internal.utils.e.b, b.f());
            jSONObject.put("udid", k.e(this.f11037a));
            jSONObject.put(ak.A, k.m());
            jSONObject.put("openudid", k.l(this.f11037a));
            jSONObject.put(h.d, k.u());
            jSONObject.put("ad_sdk_version", k.v());
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, k.r());
            jSONObject.put("is_plugin", k.g());
            jSONObject.put("sim_op", k.i(this.f11037a));
            jSONObject.put("root", this.b ? 1 : 0);
            jSONObject.put(ak.M, b());
            jSONObject.put(ak.Q, k.k(this.f11037a));
            jSONObject.put(ak.x, "Android");
            jSONObject.put(ak.y, Build.VERSION.RELEASE);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put(ak.ai, this.c);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put(ak.F, Build.BRAND);
            jSONObject.put(ak.H, Build.MANUFACTURER);
            jSONObject.put(ak.N, Locale.getDefault().getLanguage());
            jSONObject.put(ak.z, k.b(this.f11037a) + "x" + k.a(this.f11037a));
            jSONObject.put("display_density", a(k.h(this.f11037a)));
            jSONObject.put("density_dpi", k.h(this.f11037a));
            jSONObject.put("device_id", k.j(this.f11037a));
            jSONObject.put("aid", k.a());
            jSONObject.put("rom", k.e());
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("build_serial", k.g(this.f11037a));
            jSONObject.put("ut", this.e);
            jSONObject.put("uid", this.d);
            jSONObject.put("locale_language", k.j());
            jSONObject.put("screen_bright", Math.ceil(k.q() * 10.0f) / 10.0d);
            Context d = j.l().d();
            jSONObject.put("is_screen_off", !k.t());
            if (d != null) {
                jSONObject.put("download_channel", k.c(d));
            }
            if (k.f() > 0) {
                jSONObject.put("screenshot_time", String.valueOf(k.f()));
            }
            jSONObject.put("mnc", k.k());
            jSONObject.put("mcc", k.i());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private boolean d(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.length() > 0;
    }

    @SuppressLint({"HardwareIds"})
    private JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            i k = j.l().b().k();
            jSONObject.put("device_id", k.j(this.f11037a));
            jSONObject.put("sdk_version", k.v());
            jSONObject.put(ak.x, "Android");
            jSONObject.put(ak.y, Build.VERSION.RELEASE);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put(ak.z, k.b(this.f11037a) + "x" + k.a(this.f11037a));
            jSONObject.put(ak.N, Locale.getDefault().getLanguage());
            jSONObject.put(ak.M, b());
            jSONObject.put(ak.Q, k.k(this.f11037a));
            jSONObject.put("openudid", k.l(this.f11037a));
            jSONObject.put("aid", k.a());
            jSONObject.put(ak.s, k.c());
            jSONObject.put("app_version", k.h());
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, k.getPackageName());
            jSONObject.put("region", Locale.getDefault().getCountry());
            jSONObject.put("tz_name", Calendar.getInstance().getTimeZone().getID());
            jSONObject.put("tz_offset", Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000);
            jSONObject.put("rom", k.e());
            jSONObject.put(ak.H, Build.MANUFACTURER);
            ArrayList<String> a2 = k.a(this.f11037a, LitePalSupport.MD5);
            if (a2 != null && !a2.isEmpty()) {
                jSONObject.put("sig_hash", Build.MANUFACTURER);
            }
            jSONObject.put("display_density", a(k.h(this.f11037a)));
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("density_dpi", k.h(this.f11037a));
            jSONObject.put(ak.F, Build.BRAND);
            jSONObject.put("build_serial", k.g(this.f11037a));
            jSONObject.put("version_code", k.b());
            jSONObject.put("udid", k.e(this.f11037a));
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put(h.d, k.u());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private boolean e(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return jSONObject.optString("message").equalsIgnoreCase("success");
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }

    public static boolean f() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.b
    public bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b a(List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list) {
        try {
            if (j.l().b() != null && j.l().b().j() && j.l().b().k() != null && list != null && !list.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar : list) {
                    if (aVar.c() == 3) {
                        arrayList2.add(aVar);
                    } else {
                        arrayList.add(aVar);
                    }
                }
                if (!arrayList.isEmpty()) {
                    JSONObject b = b(arrayList);
                    return a(c(b), b(b), "application/json; charset=utf-8");
                } else if (!arrayList2.isEmpty()) {
                    return a(c(arrayList2), a(), "application/octet-stream;tt-data=a");
                }
            }
            return null;
        } catch (Throwable th) {
            StringBuilder m1016super = Cgoto.m1016super("uploadEvent error");
            m1016super.append(th.getMessage());
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b("NetApiImpl", m1016super.toString());
            return new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b(false, 509, "service_busy", false, com.umeng.analytics.pro.d.O);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x008d, code lost:
        if (r4 == 60005) goto L29;
     */
    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b a(org.json.JSONObject r11) {
        /*
            r10 = this;
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j r0 = bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j.l()
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g r0 = r0.b()
            r1 = 0
            if (r0 == 0) goto Lb9
            boolean r2 = r0.j()
            if (r2 != 0) goto L13
            goto Lb9
        L13:
            if (r11 == 0) goto Lb9
            int r2 = r11.length()
            if (r2 > 0) goto L1d
            goto Lb9
        L1d:
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.i r2 = r0.k()
            if (r2 != 0) goto L24
            return r1
        L24:
            org.json.JSONObject r11 = r2.a(r11)
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.f r1 = r2.w()
            java.lang.String r2 = r2.l()
            r1.b(r2)
            java.lang.String r11 = r11.toString()
            r1.a(r11)
            java.lang.String r11 = r0.f()
            java.lang.String r0 = "User-Agent"
            r1.a(r0, r11)
            java.lang.String r11 = "error unknown"
            r0 = 0
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.e r1 = r1.i()     // Catch: java.lang.Throwable -> Laa
            if (r1 != 0) goto L5a
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b r1 = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b     // Catch: java.lang.Throwable -> Laa
            r3 = 0
            r4 = 0
            java.lang.String r5 = "error unknown"
            r6 = 0
            java.lang.String r7 = "ignore"
            r2 = r1
            r2.<init>(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> Laa
            return r1
        L5a:
            boolean r2 = r1.b()     // Catch: java.lang.Throwable -> Laa
            r3 = 1
            if (r2 == 0) goto L90
            java.lang.String r2 = r1.c()     // Catch: java.lang.Throwable -> Laa
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> Laa
            if (r2 != 0) goto L90
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Laa
            java.lang.String r4 = r1.c()     // Catch: java.lang.Throwable -> Laa
            r2.<init>(r4)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r4 = "code"
            r5 = -1
            int r4 = r2.optInt(r4, r5)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r5 = "data"
            java.lang.String r6 = ""
            java.lang.String r11 = r2.optString(r5, r6)     // Catch: java.lang.Throwable -> Laa
            r2 = 20000(0x4e20, float:2.8026E-41)
            if (r4 != r2) goto L89
            r2 = 1
            goto L8a
        L89:
            r2 = 0
        L8a:
            r5 = 60005(0xea65, float:8.4085E-41)
            if (r4 != r5) goto L91
            goto L92
        L90:
            r2 = 0
        L91:
            r3 = 0
        L92:
            int r0 = r1.a()     // Catch: java.lang.Throwable -> La7
            boolean r4 = r1.b()     // Catch: java.lang.Throwable -> La4
            if (r4 != 0) goto La0
            java.lang.String r11 = r1.d()     // Catch: java.lang.Throwable -> La4
        La0:
            r7 = r11
            r6 = r0
            r5 = r2
            goto Laf
        La4:
            r1 = r0
            r0 = r2
            goto Lac
        La7:
            r0 = r2
            r1 = 0
            goto Lac
        Laa:
            r1 = 0
            r3 = 0
        Lac:
            r7 = r11
            r5 = r0
            r6 = r1
        Laf:
            r8 = r3
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b r11 = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b
            java.lang.String r9 = "ignore"
            r4 = r11
            r4.<init>(r5, r6, r7, r8, r9)
            return r11
        Lb9:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.c.a(org.json.JSONObject):bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b");
    }
}
