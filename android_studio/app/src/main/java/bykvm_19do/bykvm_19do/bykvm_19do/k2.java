package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.pangle.servermanager.AbsServerManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class k2 {
    public static final String[] h = {"channel", AbsServerManager.PACKAGE_QUERY_BINDER, "app_version"};

    /* renamed from: a  reason: collision with root package name */
    public boolean f10633a;
    public final Context b;
    public final j2 c;
    public final SharedPreferences f;
    public final ArrayList<e2> e = new ArrayList<>(32);
    public int g = 0;
    public JSONObject d = new JSONObject();

    public k2(Context context, j2 j2Var) {
        this.b = context;
        this.c = j2Var;
        this.f = j2Var.w();
        s0.a(j2Var.r());
        s0.a(j2Var.s());
        s0.a(this.b);
    }

    private JSONObject n() {
        return this.d;
    }

    public JSONObject a() {
        if (this.f10633a) {
            return n();
        }
        return null;
    }

    public JSONObject b() {
        JSONObject a2 = a();
        if (a2 != null) {
            try {
                String a3 = s0.a(a2.optJSONObject(com.umeng.commonsdk.statistics.idtracking.h.d));
                if (!TextUtils.isEmpty(a3)) {
                    JSONObject jSONObject = new JSONObject();
                    m0.b(jSONObject, a2);
                    jSONObject.put(com.umeng.commonsdk.statistics.idtracking.h.d, a3);
                    return jSONObject;
                }
            } catch (Exception e) {
                l0.a(e);
            }
        }
        return a2;
    }

    public int c() {
        int optInt = this.f10633a ? n().optInt("version_code", -1) : -1;
        for (int i = 0; i < 3 && optInt == -1; i++) {
            e();
            optInt = this.f10633a ? n().optInt("version_code", -1) : -1;
        }
        return optInt;
    }

    public String d() {
        String optString = this.f10633a ? n().optString("app_version", null) : null;
        for (int i = 0; i < 3 && optString == null; i++) {
            e();
            optString = this.f10633a ? n().optString("app_version", null) : null;
        }
        return optString;
    }

    public boolean e() {
        String[] strArr;
        synchronized (this.e) {
            if (this.e.size() == 0) {
                this.e.add(new f2(this.b, this.c));
                this.e.add(new h2(this.b));
                this.e.add(new i2(this.b, this.c));
                this.e.add(new l2(this.b));
                this.e.add(new m2(this.b));
                this.e.add(new n2(this.b, this.c));
                this.e.add(new j(this.b));
                this.e.add(new l(this.b));
                this.e.add(new m(this.b, this.c));
                this.e.add(new n());
                this.e.add(new o(this.c));
                this.e.add(new p(this.b));
                this.e.add(new q(this.b));
                this.e.add(new r(this.b, this.c));
                this.e.add(new c2(this.b, this.c));
                this.e.add(new k(this.b, this.c));
                this.e.add(new g2(this.b, this.c));
            }
        }
        JSONObject n = n();
        JSONObject jSONObject = new JSONObject();
        m0.b(jSONObject, n);
        Iterator<e2> it = this.e.iterator();
        boolean z = true;
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            e2 next = it.next();
            if (!next.f10621a || next.c || a(next)) {
                try {
                    next.f10621a = next.a(jSONObject);
                } catch (SecurityException e) {
                    if (!next.b) {
                        i++;
                        StringBuilder m1016super = Cgoto.m1016super("loadHeader, ");
                        m1016super.append(this.g);
                        l0.b(m1016super.toString(), e);
                        if (!next.f10621a && this.g > 10) {
                            next.f10621a = true;
                        }
                    }
                } catch (JSONException e2) {
                    l0.a(e2);
                }
                if (!next.f10621a && !next.b) {
                    i2++;
                }
            }
            z &= next.f10621a || next.b;
        }
        if (z) {
            int length = h.length;
            for (int i3 = 0; i3 < length; i3++) {
                z &= !TextUtils.isEmpty(jSONObject.optString(strArr[i3]));
            }
            String optString = jSONObject.optString("user_unique_id", null);
            if (!TextUtils.isEmpty(optString)) {
                try {
                    jSONObject.put("user_unique_id", optString);
                } catch (JSONException unused) {
                }
            }
        }
        this.d = jSONObject;
        this.f10633a = z;
        if (l0.f10634a) {
            StringBuilder m1016super2 = Cgoto.m1016super("loadHeader, ");
            m1016super2.append(this.f10633a);
            m1016super2.append(", ");
            m1016super2.append(this.g);
            m1016super2.append(", ");
            m1016super2.append(this.d.toString());
            l0.a(m1016super2.toString(), null);
        } else {
            StringBuilder m1016super3 = Cgoto.m1016super("loadHeader, ");
            m1016super3.append(this.f10633a);
            m1016super3.append(", ");
            m1016super3.append(this.g);
            l0.d(m1016super3.toString(), null);
        }
        if (i > 0 && i == i2) {
            this.g++;
            if (k() != 0) {
                this.g += 10;
            }
        }
        if (this.f10633a) {
            a.f().a(g(), h(), i());
        }
        return this.f10633a;
    }

    public String f() {
        return n().optString("user_unique_id", "");
    }

    public String g() {
        return n().optString("device_id", "");
    }

    public String h() {
        return n().optString("install_id", "");
    }

    public String i() {
        return n().optString("ssid", "");
    }

    public String j() {
        return n().optString("user_unique_id", "");
    }

    public int k() {
        String optString = n().optString("device_id", "");
        n().optString("install_id", "");
        if (b(optString)) {
            return this.f.getInt("version_code", 0) == n().optInt("version_code", -1) ? 1 : 2;
        }
        return 0;
    }

    public long l() {
        return n().optLong("register_time", 0L);
    }

    public String m() {
        return n().optString("ab_sdk_version", "");
    }

    public <T> T a(String str, T t) {
        JSONObject n = n();
        Object obj = (n == null || (obj = n.opt(str)) == null) ? null : null;
        return obj == null ? t : (T) obj;
    }

    private boolean a(e2 e2Var) {
        boolean z = !this.c.J() && e2Var.d;
        if (l0.f10634a) {
            l0.a("needSyncFromSub " + e2Var + " " + z, null);
        }
        return z;
    }

    public void a(JSONObject jSONObject) {
        this.c.c(jSONObject);
        b(jSONObject);
    }

    private String a(Set<String> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    private synchronized void b(JSONObject jSONObject) {
        if (jSONObject == null) {
            l0.b("null abconfig", null);
            return;
        }
        String optString = n().optString("ab_version");
        if (!TextUtils.isEmpty(optString)) {
            String[] split = optString.split(",");
            HashSet hashSet = new HashSet();
            for (String str : split) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            Iterator<String> keys = jSONObject.keys();
            HashSet hashSet2 = new HashSet();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next instanceof String) {
                    String str2 = next;
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            hashSet2.add(jSONObject.getJSONObject(str2).optString("vid"));
                        } catch (JSONException e) {
                            l0.a(e);
                        }
                    }
                }
            }
            hashSet.retainAll(hashSet2);
            b("ab_version", a(hashSet));
        }
    }

    public void a(HashMap<String, Object> hashMap) {
        JSONObject jSONObject = null;
        if (hashMap != null && !hashMap.isEmpty()) {
            try {
                jSONObject = n().optJSONObject("custom");
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
                    if (!TextUtils.isEmpty(entry.getKey())) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                }
            } catch (JSONException e) {
                l0.a(e);
            }
        }
        if (b("custom", jSONObject)) {
            this.c.b(jSONObject);
        }
    }

    public static void a(JSONObject jSONObject, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    public static boolean a(String str) {
        int length = str != null ? str.length() : 0;
        if (length < 13 || length > 128) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'f') && ((charAt < 'A' || charAt > 'F') && charAt != '-'))) {
                return false;
            }
        }
        return true;
    }

    public boolean a(JSONObject jSONObject, String str, String str2, String str3) {
        boolean b;
        SharedPreferences.Editor edit;
        String optString;
        boolean z;
        String optString2;
        String optString3;
        boolean z2;
        if (l0.f10634a) {
            StringBuilder m1004import = Cgoto.m1004import("saveRegisterInfo, ", str, ", ", str2, ", ");
            m1004import.append(str3);
            m1004import.append(", ");
            m1004import.append(jSONObject);
            l0.a(m1004import.toString(), null);
        }
        boolean b2 = b(str);
        boolean b3 = b(str2);
        try {
            b = b(str3);
            int i = this.f.getInt("version_code", 0);
            int optInt = n().optInt("version_code", 0);
            edit = this.f.edit();
            if (i != optInt) {
                edit.putInt("version_code", optInt);
            }
            if (b2) {
                long currentTimeMillis = System.currentTimeMillis();
                edit.putLong("register_time", currentTimeMillis);
                b("register_time", Long.valueOf(currentTimeMillis));
            } else if (!b2) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("response", jSONObject);
                a.a("tt_fetch_did_error", jSONObject2);
            }
            optString = n().optString("device_id", "");
            if (b2 && b("device_id", str)) {
                edit.putString("device_id", str);
                z = true;
            } else {
                z = false;
            }
            optString2 = n().optString("install_id", "");
            if (b3 && b("install_id", str2)) {
                edit.putString("install_id", str2);
                z = true;
            }
            optString3 = n().optString("ssid", "");
        } catch (JSONException e) {
            l0.a(e);
        }
        if (b && b("ssid", str3)) {
            edit.putString("ssid", str3);
            z2 = true;
            a.f().a(z2, optString, str, optString2, str2, optString3, str3);
            edit.apply();
            return !b2 && b3;
        }
        z2 = z;
        a.f().a(z2, optString, str, optString2, str2, optString3, str3);
        edit.apply();
        if (b2) {
        }
    }

    private boolean b(String str, Object obj) {
        boolean z;
        Object opt = n().opt(str);
        if ((obj == null || obj.equals(opt)) && (obj != null || opt == null)) {
            z = false;
        } else {
            synchronized (this) {
                try {
                    JSONObject jSONObject = this.d;
                    JSONObject jSONObject2 = new JSONObject();
                    m0.b(jSONObject2, jSONObject);
                    jSONObject2.put(str, obj);
                    this.d = jSONObject2;
                } catch (JSONException e) {
                    l0.a(e);
                }
            }
            z = true;
        }
        l0.a("updateHeader, " + str + ", " + opt + ", " + obj, null);
        return z;
    }

    public static boolean b(String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str) || "unknown".equalsIgnoreCase(str) || "Null".equalsIgnoreCase(str)) {
            return false;
        }
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                z = true;
                break;
            } else if (str.charAt(i) != '0') {
                break;
            } else {
                i++;
            }
        }
        return !z;
    }
}
