package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.umeng.analytics.pro.ak;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* compiled from: GMNpthUtil.java */
/* loaded from: classes8.dex */
public class r {

    /* compiled from: GMNpthUtil.java */
    /* loaded from: classes8.dex */
    public static class a implements bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f11006a;

        public a(Context context) {
            this.f11006a = context;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e
        public String a() {
            return bykvm_19do.bykvm_19do.bykvm_19do.a.m();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e
        public List<String> b() {
            return null;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e
        public String c() {
            return v.d(this.f11006a);
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e
        public String d() {
            return null;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e
        public Map<String, Object> e() {
            HashMap hashMap = new HashMap();
            hashMap.put("host_appid", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b());
            hashMap.put("sdk_version", "3.6.0.1");
            hashMap.put(PluginConstants.KEY_PLUGIN_VERSION, "3.6.0.1");
            hashMap.put("channel", "gromore");
            return hashMap;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e
        public Map<String, Object> f() {
            HashMap hashMap = new HashMap();
            String c = p.c();
            if (TextUtils.isEmpty(c)) {
                c = v.d(this.f11006a);
            }
            if (!TextUtils.isEmpty(c)) {
                hashMap.put("device_id", c);
            }
            hashMap.put("ac", y.d(this.f11006a));
            hashMap.put("aid", "299838");
            hashMap.put("app_name", "gromore");
            String e = l0.e();
            if (!TextUtils.isEmpty(e)) {
                hashMap.put("app_version", e);
            }
            String d = l0.d();
            if (!TextUtils.isEmpty(d)) {
                hashMap.put("version_code", d);
                hashMap.put("update_version_code", d);
            }
            hashMap.put(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, "3.6.0.1");
            hashMap.put("device_platform", "android");
            hashMap.put(ak.x, "Android");
            hashMap.put(ak.ai, Build.MODEL);
            hashMap.put("device_mode", Build.MODEL);
            hashMap.put("rom", b0.k());
            hashMap.put("cpu_abi", Build.CPU_ABI);
            hashMap.put(ak.F, Build.BRAND);
            hashMap.put("channel", "gromore");
            hashMap.put(ak.N, Locale.getDefault().getLanguage());
            hashMap.put("os_api", String.valueOf(Build.VERSION.SDK_INT));
            try {
                String str = Build.VERSION.RELEASE;
                if (str != null && str.length() > 10) {
                    str = str.substring(0, 10);
                }
                hashMap.put(ak.y, str);
            } catch (Exception unused) {
            }
            hashMap.put("openudid", v.a(this.f11006a));
            hashMap.put("dpi", String.valueOf(this.f11006a.getResources().getDisplayMetrics().density));
            hashMap.put(ak.z, this.f11006a.getResources().getDisplayMetrics().widthPixels + "*" + this.f11006a.getResources().getDisplayMetrics().heightPixels);
            return hashMap;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e
        public Map<String, Integer> g() {
            return null;
        }
    }

    /* compiled from: GMNpthUtil.java */
    /* loaded from: classes8.dex */
    public static class b implements bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.g {
        /* JADX WARN: Removed duplicated region for block: B:13:0x002b A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:3:0x0001, B:5:0x0014, B:7:0x001d, B:13:0x002b, B:15:0x0035), top: B:19:0x0001 }] */
        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(java.lang.Throwable r3, java.lang.Thread r4) {
            /*
                r2 = this;
                r4 = 0
                java.io.StringWriter r0 = new java.io.StringWriter     // Catch: java.lang.Throwable -> L41
                r0.<init>()     // Catch: java.lang.Throwable -> L41
                java.io.PrintWriter r1 = new java.io.PrintWriter     // Catch: java.lang.Throwable -> L41
                r1.<init>(r0)     // Catch: java.lang.Throwable -> L41
                r3.printStackTrace(r1)     // Catch: java.lang.Throwable -> L41
                java.lang.String r3 = r0.toString()     // Catch: java.lang.Throwable -> L41
                if (r3 == 0) goto L41
                java.lang.String r0 = "com.bytedance.msdk"
                boolean r0 = r3.contains(r0)     // Catch: java.lang.Throwable -> L41
                r1 = 1
                if (r0 != 0) goto L28
                java.lang.String r0 = "bykvm"
                boolean r3 = r3.contains(r0)     // Catch: java.lang.Throwable -> L41
                if (r3 == 0) goto L26
                goto L28
            L26:
                r3 = 0
                goto L29
            L28:
                r3 = 1
            L29:
                if (r3 == 0) goto L41
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.r$c r3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.r.c.b()     // Catch: java.lang.Throwable -> L41
                java.util.Map r3 = r3.a()     // Catch: java.lang.Throwable -> L41
                if (r3 == 0) goto L40
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.r$c r3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.r.c.b()     // Catch: java.lang.Throwable -> L41
                java.util.Map r3 = r3.a()     // Catch: java.lang.Throwable -> L41
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.h.a(r3)     // Catch: java.lang.Throwable -> L41
            L40:
                return r1
            L41:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.r.b.a(java.lang.Throwable, java.lang.Thread):boolean");
        }
    }

    /* compiled from: GMNpthUtil.java */
    /* loaded from: classes8.dex */
    public static class c {
        public static String b = "ad_style";
        public static String c = "ad_id";
        public static String d = "rit";
        public static String e = "request_id";
        public static String f = "ad_slot_type";
        public static String g = "net_type";
        public static String h = "low_memory";
        public static String i = "total_max_memory_rate";
        public static String j = "category";
        public static String k = "commit_hash";
        public static String l = "branch";
        public static String m = "plugin_version";
        public static volatile c n;

        /* renamed from: a  reason: collision with root package name */
        public Map<String, String> f11007a;

        public c() {
            HashMap hashMap = new HashMap();
            this.f11007a = hashMap;
            hashMap.put(b, "default");
            this.f11007a.put(c, "default");
            this.f11007a.put(d, "default");
            this.f11007a.put(e, "default");
            this.f11007a.put(f, "default");
            this.f11007a.put(g, "default");
            this.f11007a.put(h, "default");
            this.f11007a.put(i, "default");
            this.f11007a.put(j, "main");
            this.f11007a.put(k, "6771fc288");
            this.f11007a.put(l, "v3601");
            this.f11007a.put(m, "3.6.0.1");
        }

        public static c b() {
            if (n == null) {
                synchronized (c.class) {
                    if (n == null) {
                        n = new c();
                    }
                }
            }
            return n;
        }

        public Map<String, String> a() {
            return this.f11007a;
        }
    }

    public static void a(Context context) {
        b(context);
    }

    public static void b(Context context) {
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.h.a(context, new a(context), true, false);
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.h.a(new b());
    }
}
