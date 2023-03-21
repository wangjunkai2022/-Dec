package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: SPUtils.java */
/* loaded from: classes8.dex */
public class c0 {
    public static Map<String, c0> b = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    public SharedPreferences f10983a;

    public c0(String str, Context context) {
        if (context != null) {
            this.f10983a = context.getApplicationContext().getSharedPreferences(str, 0);
        }
    }

    public static void a(JSONObject jSONObject) {
        JSONArray jSONArray;
        try {
            String d = a("gm_v3_temp", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).d("gm_key_v3_bug");
            if (!TextUtils.isEmpty(d)) {
                jSONArray = new JSONArray(d);
            } else {
                jSONArray = new JSONArray();
            }
            if (jSONArray.length() >= 100) {
                jSONArray.put(99, jSONObject);
            } else {
                jSONArray.put(jSONObject);
            }
            a("gm_v3_temp", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).b("gm_key_v3_bug", jSONArray.toString());
        } catch (Throwable unused) {
        }
    }

    public static JSONArray c() {
        try {
            String d = a("gm_v3_temp", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).d("gm_key_v3_bug");
            if (TextUtils.isEmpty(d)) {
                return null;
            }
            JSONArray jSONArray = new JSONArray(d);
            a("gm_v3_temp", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).f("gm_key_v3_bug");
            return jSONArray;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String b() {
        return a("any_door_id", (String) null);
    }

    public String d(@NonNull String str) {
        try {
            return a(str, "");
        } catch (Throwable unused) {
            return null;
        }
    }

    public void e(String str) {
        b("any_door_id", str);
    }

    public void f(@NonNull String str) {
        try {
            this.f10983a.edit().remove(str).apply();
        } catch (Throwable unused) {
        }
    }

    public void b(@NonNull String str, @NonNull String str2) {
        try {
            this.f10983a.edit().putString(str, str2).apply();
        } catch (Throwable unused) {
        }
    }

    public void b(@NonNull String str, int i) {
        try {
            this.f10983a.edit().putInt(str, i).apply();
        } catch (Throwable unused) {
        }
    }

    public int b(@NonNull String str) {
        return a(str, -1);
    }

    public void b(@NonNull String str, long j) {
        try {
            this.f10983a.edit().putLong(str, j).apply();
        } catch (Throwable unused) {
        }
    }

    public long c(@NonNull String str) {
        return a(str, -1L);
    }

    public void b(@NonNull String str, float f) {
        try {
            this.f10983a.edit().putFloat(str, f).apply();
        } catch (Throwable unused) {
        }
    }

    public void b(@NonNull String str, boolean z) {
        try {
            this.f10983a.edit().putBoolean(str, z).apply();
        } catch (Throwable unused) {
        }
    }

    public static c0 a(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_ad_mediation_sdk_sp";
        }
        c0 c0Var = b.get(str);
        if (c0Var == null) {
            c0 c0Var2 = new c0(str, context);
            b.put(str, c0Var2);
            return c0Var2;
        }
        return c0Var;
    }

    public String a(@NonNull String str, @NonNull String str2) {
        try {
            return this.f10983a.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public int a(@NonNull String str, int i) {
        try {
            return this.f10983a.getInt(str, i);
        } catch (Throwable unused) {
            return i;
        }
    }

    public long a(@NonNull String str, long j) {
        try {
            return this.f10983a.getLong(str, j);
        } catch (Throwable unused) {
            return j;
        }
    }

    public float a(@NonNull String str, float f) {
        try {
            return this.f10983a.getFloat(str, f);
        } catch (Throwable unused) {
            return f;
        }
    }

    public boolean a(@NonNull String str) {
        return a(str, false);
    }

    public boolean a(@NonNull String str, boolean z) {
        try {
            return this.f10983a.getBoolean(str, z);
        } catch (Throwable unused) {
            return z;
        }
    }

    public void a() {
        try {
            this.f10983a.edit().clear().commit();
        } catch (Throwable unused) {
        }
    }
}
