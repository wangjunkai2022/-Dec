package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l0;
import com.bytedance.msdk.api.UserInfoForSegment;
import com.bytedance.msdk.api.v2.GMConfigUserInfoForSegment;
import com.bytedance.msdk.api.v2.GMPrivacyConfig;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* compiled from: SdkGlobalInfo.java */
/* loaded from: classes8.dex */
public class b {
    public static final b F = new b();
    public boolean A;
    public String B;
    public boolean C;
    public boolean D;
    public int[] E;
    public String[] c;
    public String d;
    public String e;
    public String i;
    public boolean j;
    public String k;
    public Map<String, String> l;
    public String m;
    public String n;
    @Deprecated
    public UserInfoForSegment r;
    public GMConfigUserInfoForSegment s;
    public Map<String, Object> w;
    public boolean x;
    public boolean y;
    public JSONObject z;

    /* renamed from: a  reason: collision with root package name */
    public int f10802a = 0;
    public boolean b = false;
    public boolean f = true;
    public boolean g = false;
    public boolean h = false;
    public Set<String> o = new HashSet();
    public Map<String, Map<String, String>> p = new HashMap();
    public Map<String, Map<String, String>> q = new HashMap();
    public int t = 2;
    public long u = -1;
    public GMPrivacyConfig v = new GMPrivacyConfig();

    public static b G() {
        return F;
    }

    public boolean A() {
        return this.h;
    }

    public boolean B() {
        return this.b;
    }

    public boolean C() {
        return this.C;
    }

    public boolean D() {
        return this.D;
    }

    public boolean E() {
        return ("com.header.app.untext".equals(a.d().getPackageName()) && "5001121".equals(this.d)) || ("com.bytedance.mediation_demo".equals(a.d().getPackageName()) && "5001121".equals(this.d));
    }

    public boolean F() {
        return this.A;
    }

    public void a(long j) {
        try {
            c0 J = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c.J();
            if (J.a("first_install_time", -1L) == -1) {
                this.u = j;
                J.b("first_install_time", j);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String b() {
        return this.d;
    }

    public void c(boolean z) {
        this.j = z;
    }

    public void d(String str) {
        this.k = str;
    }

    public long e() {
        long j = this.u;
        if (j != -1) {
            return j;
        }
        try {
            c0 J = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c.J();
            long a2 = J.a("first_install_time", -1L);
            if (a2 == -1) {
                long currentTimeMillis = System.currentTimeMillis();
                J.b("first_install_time", currentTimeMillis);
                this.u = currentTimeMillis;
                return currentTimeMillis;
            }
            this.u = a2;
            return a2;
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public void f(boolean z) {
        this.h = z;
    }

    public void g(boolean z) {
        this.b = z;
    }

    public String h() {
        return this.e;
    }

    public String i() {
        return this.B;
    }

    public String j() {
        return this.k;
    }

    public String k() {
        return this.m;
    }

    public String[] l() {
        return this.c;
    }

    public int m() {
        return this.t;
    }

    public int n() {
        return this.f10802a;
    }

    public int[] o() {
        return this.E;
    }

    public String p() {
        if (("com.header.app.untext".equals(a.d().getPackageName()) && "5001121".equals(this.d)) || ("com.bytedance.mediation_demo".equals(a.d().getPackageName()) && "5001121".equals(this.d))) {
            try {
                return c0.a("tt_mediation_ppe_info", a.d()).d("tt_ppe_content");
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public GMPrivacyConfig q() {
        return this.v;
    }

    public String r() {
        return this.i;
    }

    @Deprecated
    public UserInfoForSegment s() {
        return this.r;
    }

    public boolean t() {
        if ("com.header.app.untext".equals(a.d().getPackageName()) && "5001121".equals(this.d)) {
            return true;
        }
        if ("com.bytedance.mediation_demo".equals(a.d().getPackageName()) && "5001121".equals(this.d)) {
            return true;
        }
        return "com.msdk.qa.monkey".equals(a.d().getPackageName()) && "5001121".equals(this.d);
    }

    public boolean u() {
        String a2 = l0.a();
        return "com.header.app.untext".equals(a2) || "com.bytedance.mediation_demo".equals(a2) || "com.msdk.qa.monkey".equals(a2);
    }

    public boolean v() {
        return this.x;
    }

    public boolean w() {
        return this.j;
    }

    public boolean x() {
        return this.y;
    }

    public boolean y() {
        return this.f;
    }

    public boolean z() {
        return this.g;
    }

    public static void g(String str) {
        a0.a(str, "appid不能为空");
    }

    public static void h(String str) {
        a0.a(str, "name不能为空");
    }

    public void b(String str) {
        h(str);
        this.e = str;
    }

    public void c(Map<String, Map<String, String>> map) {
        if (map != null) {
            this.p.putAll(map);
        }
    }

    public Map<String, String> d() {
        return this.l;
    }

    public void f(String str) {
        this.i = str;
    }

    public void i(boolean z) {
        this.D = z;
    }

    public void j(boolean z) {
        this.A = z;
    }

    public JSONObject c() {
        return this.z;
    }

    public void d(boolean z) {
        this.f = z;
    }

    public GMConfigUserInfoForSegment f() {
        return this.s;
    }

    public Map<String, Object> g() {
        return this.w;
    }

    public void h(boolean z) {
        this.C = z;
    }

    public void b(int i) {
        this.f10802a = i;
    }

    public void c(String str) {
        this.B = str;
    }

    public void d(Map<String, Map<String, String>> map) {
        if (map != null) {
            this.q.putAll(map);
        }
    }

    public void b(Map<String, Object> map) {
        this.w = map;
    }

    public void a(String str) {
        g(str);
        this.d = str;
    }

    public void b(boolean z) {
        this.y = z;
        if (z) {
            try {
                Class.forName("com.bykv.vk.openvk.TTVfSdk");
            } catch (ClassNotFoundException e) {
                this.y = false;
                e.printStackTrace();
            }
        }
    }

    public void a(Map<String, String> map) {
        this.l = map;
    }

    public void a(int... iArr) {
        this.E = iArr;
    }

    public void e(Map<String, String> map) {
        if (this.l == null) {
            this.l = new HashMap();
        }
        if (map == null || map.size() <= 0) {
            return;
        }
        this.l.putAll(map);
    }

    public void a(String[] strArr) {
        this.c = strArr;
    }

    public String a() {
        if (!TextUtils.isEmpty(this.n)) {
            return this.n;
        }
        String b = c0.a((String) null, a.d()).b();
        this.n = b;
        if (!TextUtils.isEmpty(b)) {
            return this.n;
        }
        String valueOf = String.valueOf(System.currentTimeMillis());
        c0.a((String) null, a.d()).e(valueOf);
        this.n = valueOf;
        return valueOf;
    }

    public void e(boolean z) {
        this.g = z;
    }

    public void e(String str) {
        this.m = str;
    }

    public void a(Set<String> set) {
        if (set != null) {
            this.o.addAll(set);
        }
    }

    @Deprecated
    public void a(UserInfoForSegment userInfoForSegment, boolean z) {
        boolean equals;
        if (!z) {
            if (this.r == null && userInfoForSegment == null) {
                equals = true;
            } else {
                UserInfoForSegment userInfoForSegment2 = this.r;
                equals = (userInfoForSegment2 == null || userInfoForSegment == null) ? false : userInfoForSegment2.equals(userInfoForSegment);
            }
            this.r = userInfoForSegment;
            if (equals) {
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b.a(a.f()).c().a();
            return;
        }
        this.r = userInfoForSegment;
    }

    public void a(GMConfigUserInfoForSegment gMConfigUserInfoForSegment, boolean z) {
        boolean equals;
        if (!z) {
            if (this.s == null && gMConfigUserInfoForSegment == null) {
                equals = true;
            } else {
                GMConfigUserInfoForSegment gMConfigUserInfoForSegment2 = this.s;
                equals = (gMConfigUserInfoForSegment2 == null || gMConfigUserInfoForSegment == null) ? false : gMConfigUserInfoForSegment2.equals(gMConfigUserInfoForSegment);
            }
            this.s = gMConfigUserInfoForSegment;
            if (equals) {
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b.a(a.f()).c().a();
            return;
        }
        this.s = gMConfigUserInfoForSegment;
    }

    public void a(int i) {
        this.t = i;
    }

    public void a(GMPrivacyConfig gMPrivacyConfig) {
        if (gMPrivacyConfig != null) {
            this.v = gMPrivacyConfig;
        }
    }

    public void a(boolean z) {
        this.x = z;
    }

    public void a(JSONObject jSONObject) {
        this.z = jSONObject;
    }
}
