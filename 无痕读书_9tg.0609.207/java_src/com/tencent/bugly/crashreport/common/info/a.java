package com.tencent.bugly.crashreport.common.info;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.text.TextUtils;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.y;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class a {
    public static final Map<String, String> F = new HashMap();
    public static a aa = null;
    public final SharedPreferences E;
    public final Context G;
    public String H;
    public String I;
    public String J;
    public String R;
    public String V;
    public SharedPreferences ag;
    public String c;
    public final String d;
    public final String g;
    public long h;
    public String i;
    public String j;
    public String k;
    public List<String> n;
    public boolean t;
    public String u;
    public String v;
    public String w;
    public String x;
    public boolean z;
    public boolean e = true;
    public String f = "4.0.4";
    public String K = "unknown";
    public String L = "";
    public String M = null;
    public long N = -1;
    public long O = -1;
    public long P = -1;
    public String Q = null;
    public Map<String, PlugInBean> S = null;
    public boolean T = false;
    public String U = null;
    public Boolean W = null;
    public String X = null;
    public String l = null;
    public String m = null;
    public Map<String, PlugInBean> Y = null;
    public Map<String, PlugInBean> Z = null;
    public int ab = -1;
    public int ac = -1;
    public final Map<String, String> ad = new HashMap();
    public final Map<String, String> ae = new HashMap();
    public final Map<String, String> af = new HashMap();
    public String o = "unknown";
    public long p = 0;
    public long q = 0;
    public long r = 0;
    public long s = 0;
    public boolean y = false;
    public HashMap<String, String> A = new HashMap<>();
    public List<String> B = new ArrayList();
    public boolean C = false;
    public com.tencent.bugly.crashreport.a D = null;
    public boolean ah = true;
    public boolean ai = true;
    public boolean aj = false;
    public final Object ak = new Object();
    public final Object al = new Object();
    public final Object am = new Object();
    public final Object an = new Object();
    public final Object ao = new Object();
    public final Object ap = new Object();
    public final Object aq = new Object();
    public final List<Integer> ar = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    public final long f12031a = System.currentTimeMillis();
    public final byte b = 1;

    public a(Context context) {
        this.R = null;
        this.i = null;
        this.j = null;
        this.V = null;
        this.k = null;
        this.n = null;
        this.t = false;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = "";
        this.z = false;
        this.G = ab.a(context);
        PackageInfo b = AppInfo.b(context);
        if (b != null) {
            try {
                String str = b.versionName;
                this.i = str;
                this.u = str;
                this.v = Integer.toString(b.versionCode);
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        this.c = AppInfo.a(context);
        this.d = AppInfo.a(Process.myPid());
        this.j = AppInfo.c(context);
        this.g = "Android " + b.b() + ",level " + b.c();
        Map<String, String> d = AppInfo.d(context);
        if (d != null) {
            try {
                this.n = AppInfo.a(d);
                String str2 = d.get("BUGLY_APPID");
                if (str2 != null) {
                    this.V = str2;
                    c("APP_ID", str2);
                }
                String str3 = d.get("BUGLY_APP_VERSION");
                if (str3 != null) {
                    this.i = str3;
                }
                String str4 = d.get("BUGLY_APP_CHANNEL");
                if (str4 != null) {
                    this.k = str4;
                }
                String str5 = d.get("BUGLY_ENABLE_DEBUG");
                if (str5 != null) {
                    this.t = str5.equalsIgnoreCase("true");
                }
                String str6 = d.get("com.tencent.rdm.uuid");
                if (str6 != null) {
                    this.w = str6;
                }
                String str7 = d.get("BUGLY_APP_BUILD_NO");
                if (!TextUtils.isEmpty(str7)) {
                    Integer.parseInt(str7);
                }
                String str8 = d.get("BUGLY_AREA");
                if (str8 != null) {
                    this.x = str8;
                }
            } catch (Throwable th2) {
                if (!y.a(th2)) {
                    th2.printStackTrace();
                }
            }
        }
        try {
            if (!context.getDatabasePath("bugly_db_").exists()) {
                this.z = true;
                y.c("App is first time to be installed on the device.", new Object[0]);
            }
        } catch (Throwable th3) {
            if (com.tencent.bugly.b.c) {
                th3.printStackTrace();
            }
        }
        this.E = ab.a("BUGLY_COMMON_VALUES", context);
        this.ag = ab.a("BUGLY_RESERVED_VALUES", context);
        this.R = b.a(context);
        J();
        y.c("com info create end", new Object[0]);
    }

    public static int G() {
        return b.c();
    }

    @Deprecated
    public static boolean H() {
        y.a("Detect if the emulator is unavailable", new Object[0]);
        return false;
    }

    @Deprecated
    public static boolean I() {
        y.a("Detect if the device hook is unavailable", new Object[0]);
        return false;
    }

    private void J() {
        try {
            for (Map.Entry<String, ?> entry : this.ag.getAll().entrySet()) {
                y.c("put reserved request data from sp, key:%s value:%s", entry.getKey(), entry.getValue());
                a(entry.getKey(), entry.getValue().toString(), false);
            }
            for (Map.Entry<String, String> entry2 : F.entrySet()) {
                y.c("put reserved request data from cache, key:%s value:%s", entry2.getKey(), entry2.getValue());
                a(entry2.getKey(), entry2.getValue(), true);
            }
            F.clear();
        } catch (Throwable th) {
            y.b(th);
        }
    }

    public static synchronized a b() {
        a aVar;
        synchronized (a.class) {
            aVar = aa;
        }
        return aVar;
    }

    @Deprecated
    public static String r() {
        return "";
    }

    public final Set<String> A() {
        Set<String> keySet;
        synchronized (this.am) {
            keySet = this.ad.keySet();
        }
        return keySet;
    }

    public final Map<String, String> B() {
        synchronized (this.aq) {
            if (this.ae.size() <= 0) {
                return null;
            }
            return new HashMap(this.ae);
        }
    }

    public final Map<String, String> C() {
        synchronized (this.an) {
            if (this.af.size() <= 0) {
                return null;
            }
            return new HashMap(this.af);
        }
    }

    public final int D() {
        int i;
        synchronized (this.ao) {
            i = this.ab;
        }
        return i;
    }

    public final int E() {
        return this.ac;
    }

    public final synchronized Map<String, PlugInBean> F() {
        return null;
    }

    public final boolean a() {
        boolean z = this.ar.size() > 0;
        y.c("isAppForeground:%s", Boolean.valueOf(z));
        return z;
    }

    public final String c() {
        return this.f;
    }

    public final void d() {
        synchronized (this.ak) {
            this.H = UUID.randomUUID().toString();
        }
    }

    public final String e() {
        String str;
        synchronized (this.ak) {
            if (this.H == null) {
                synchronized (this.ak) {
                    this.H = UUID.randomUUID().toString();
                }
            }
            str = this.H;
        }
        return str;
    }

    public final String f() {
        if (ab.a((String) null)) {
            return this.V;
        }
        return null;
    }

    public final String g() {
        String str;
        synchronized (this.ap) {
            str = this.K;
        }
        return str;
    }

    public final boolean h() {
        return this.ah;
    }

    public final boolean i() {
        return this.ai;
    }

    public final boolean j() {
        return this.aj;
    }

    public final String k() {
        String str = this.J;
        if (str != null) {
            return str;
        }
        String c = ab.c("deviceId", null);
        this.J = c;
        if (c != null) {
            return c;
        }
        if (TextUtils.isEmpty(this.M)) {
            this.M = ab.c("androidid", null);
        }
        String str2 = this.M;
        this.J = str2;
        if (TextUtils.isEmpty(str2)) {
            String uuid = UUID.randomUUID().toString();
            if (!ab.a(uuid)) {
                uuid = uuid.replaceAll("-", "");
            }
            this.J = uuid;
        }
        String str3 = this.J;
        if (str3 != null) {
            ab.b("deviceId", str3);
            return this.J;
        }
        return "";
    }

    public final String l() {
        String str = this.I;
        if (str != null) {
            return str;
        }
        String c = ab.c("deviceModel", null);
        this.I = c;
        if (c != null) {
            y.c("collect device model from sp:%s", c);
            return this.I;
        } else if (!this.T) {
            y.c("not allow collect device model", new Object[0]);
            return "fail";
        } else {
            String a2 = b.a();
            this.I = a2;
            y.c("collect device model:%s", a2);
            ab.b("deviceModel", this.I);
            return this.I;
        }
    }

    public final synchronized String m() {
        return this.L;
    }

    public final long n() {
        if (this.N <= 0) {
            this.N = b.d();
        }
        return this.N;
    }

    public final long o() {
        if (this.O <= 0) {
            this.O = b.i();
        }
        return this.O;
    }

    public final long p() {
        if (this.P <= 0) {
            this.P = b.k();
        }
        return this.P;
    }

    public final String q() {
        if (!TextUtils.isEmpty(this.Q)) {
            y.c("get cpu type from so:%s", this.Q);
            return this.Q;
        } else if (TextUtils.isEmpty(this.R)) {
            return "unknown";
        } else {
            y.c("get cpu type from lib dir:%s", this.R);
            return this.R;
        }
    }

    public final String s() {
        try {
            Map<String, ?> all = this.G.getSharedPreferences("BuglySdkInfos", 0).getAll();
            if (!all.isEmpty()) {
                synchronized (this.al) {
                    for (Map.Entry<String, ?> entry : all.entrySet()) {
                        this.A.put(entry.getKey(), entry.getValue().toString());
                    }
                }
            }
        } catch (Throwable th) {
            y.a(th);
        }
        if (!this.A.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry2 : this.A.entrySet()) {
                sb.append("[");
                sb.append(entry2.getKey());
                sb.append(",");
                sb.append(entry2.getValue());
                sb.append("] ");
            }
            y.c("SDK_INFO = %s", sb.toString());
            c("SDK_INFO", sb.toString());
            return sb.toString();
        }
        y.c("SDK_INFO is empty", new Object[0]);
        return null;
    }

    public final synchronized Map<String, PlugInBean> t() {
        return null;
    }

    public final String u() {
        if (this.U == null) {
            this.U = b.m();
        }
        return this.U;
    }

    public final Boolean v() {
        if (this.W == null) {
            this.W = Boolean.valueOf(b.n());
        }
        return this.W;
    }

    public final String w() {
        if (this.X == null) {
            String str = b.c(this.G);
            this.X = str;
            y.a("ROM ID: %s", str);
        }
        return this.X;
    }

    public final Map<String, String> x() {
        synchronized (this.am) {
            if (this.ad.size() <= 0) {
                return null;
            }
            return new HashMap(this.ad);
        }
    }

    public final void y() {
        synchronized (this.am) {
            this.ad.clear();
        }
    }

    public final int z() {
        int size;
        synchronized (this.am) {
            size = this.ad.size();
        }
        return size;
    }

    public final void b(String str) {
        synchronized (this.ap) {
            if (str == null) {
                str = "10000";
            }
            this.K = str;
        }
    }

    public final void c(String str) {
        this.J = str;
        if (!TextUtils.isEmpty(str)) {
            ab.b("deviceId", str);
        }
        synchronized (this.aq) {
            this.ae.put("E8", str);
        }
    }

    public final String h(String str) {
        String remove;
        if (ab.a(str)) {
            y.d("key should not be empty %s", str);
            return null;
        }
        synchronized (this.am) {
            remove = this.ad.remove(str);
        }
        return remove;
    }

    public final String i(String str) {
        String str2;
        if (ab.a(str)) {
            y.d("key should not be empty %s", str);
            return null;
        }
        synchronized (this.am) {
            str2 = this.ad.get(str);
        }
        return str2;
    }

    public final void a(int i, boolean z) {
        y.c("setActivityForeState, hash:%s isFore:%s", Integer.valueOf(i), Boolean.valueOf(z));
        if (z) {
            this.ar.add(Integer.valueOf(i));
        } else {
            this.ar.remove(Integer.valueOf(i));
            this.ar.remove((Object) 0);
        }
        com.tencent.bugly.crashreport.a aVar = this.D;
        if (aVar != null) {
            aVar.setNativeIsAppForeground(this.ar.size() > 0);
        }
    }

    public final synchronized void f(String str) {
        this.L = str;
    }

    public final void d(String str) {
        y.a("change deviceModel，old:%s new:%s", this.I, str);
        this.I = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ab.b("deviceModel", str);
    }

    public final void g(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.Q = str.trim();
    }

    public final void b(boolean z) {
        this.aj = z;
    }

    public final void b(String str, String str2) {
        if (!ab.a(str) && !ab.a(str2)) {
            synchronized (this.am) {
                this.ad.put(str, str2);
            }
            return;
        }
        y.d("key&value should not be empty %s %s", str, str2);
    }

    public final synchronized void e(String str) {
    }

    public final void c(String str, String str2) {
        if (!ab.a(str) && !ab.a(str2)) {
            synchronized (this.an) {
                this.af.put(str, str2);
            }
            return;
        }
        y.d("server key&value should not be empty %s %s", str, str2);
    }

    public static synchronized a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (aa == null) {
                aa = new a(context);
            }
            aVar = aa;
        }
        return aVar;
    }

    public final void b(int i) {
        int i2 = this.ac;
        if (i2 != 24096) {
            this.ac = 24096;
            y.a("server scene tag %d changed to tag %d", Integer.valueOf(i2), Integer.valueOf(this.ac));
        }
    }

    public final void a(String str) {
        this.V = str;
        c("APP_ID", str);
    }

    public final void a(boolean z) {
        this.T = z;
    }

    public final void a(boolean z, boolean z2) {
        this.ah = z;
        this.ai = z2;
    }

    public final void a(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        synchronized (this.al) {
            this.A.put(str, str2);
        }
    }

    private void a(String str, String str2, boolean z) {
        if (ab.a(str)) {
            y.d("key should not be empty %s", str);
            return;
        }
        y.c("putExtraRequestData key:%s value:%s save:%s", str, str2, Boolean.valueOf(z));
        synchronized (this.aq) {
            if (TextUtils.isEmpty(str2)) {
                this.ae.remove(str);
                this.ag.edit().remove(str).apply();
            } else {
                this.ae.put(str, str2);
                if (z) {
                    this.ag.edit().putString(str, str2).apply();
                }
            }
        }
    }

    public final void a(int i) {
        synchronized (this.ao) {
            int i2 = this.ab;
            if (i2 != i) {
                this.ab = i;
                y.a("user scene tag %d changed to tag %d", Integer.valueOf(i2), Integer.valueOf(this.ab));
            }
        }
    }
}
