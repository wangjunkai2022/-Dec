package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public final class s0 {

    /* renamed from: a  reason: collision with root package name */
    public static String f10646a = null;
    public static boolean b = true;
    public static final String c = s0.class.getSimpleName() + "#";
    public static o0<z0> d = new a();

    /* loaded from: classes8.dex */
    public static class a extends o0<z0> {
        @Override // bykvm_19do.bykvm_19do.bykvm_19do.o0
        /* renamed from: c */
        public z0 a(Object... objArr) {
            if (objArr.length == 0) {
                return null;
            }
            return new z0((Context) objArr[0]);
        }
    }

    public static void a(Context context) {
        d.b(context).a(false);
    }

    public static boolean b() {
        return b;
    }

    public static String a(SharedPreferences sharedPreferences) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        String a2 = q0.a(sharedPreferences);
        t0.b("TrackerDr", c + "getCdid takes " + (SystemClock.elapsedRealtime() - elapsedRealtime) + " ms");
        return a2;
    }

    public static Map<String, String> a(Context context, SharedPreferences sharedPreferences) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Map<String, String> a2 = d.b(context).a(100L);
        t0.b("TrackerDr", c + "getOaid takes " + (SystemClock.elapsedRealtime() - elapsedRealtime) + " ms");
        return a2;
    }

    public static String a(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optString("id", null);
        }
        return null;
    }

    public static void a(e eVar) {
        z0.a(eVar);
    }

    public static void a(String str) {
        f10646a = str;
    }

    public static String a() {
        return f10646a;
    }

    public static void a(boolean z) {
        b = z;
    }
}
