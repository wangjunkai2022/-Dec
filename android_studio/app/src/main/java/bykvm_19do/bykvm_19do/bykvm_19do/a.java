package bykvm_19do.bykvm_19do.bykvm_19do;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.mapplog.collector.Collector;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public final class a {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    public static volatile j2 f10612a = null;
    @SuppressLint({"StaticFieldLeak"})
    public static k2 b = null;
    public static boolean c = true;
    public static volatile d e;
    public static b g;
    public static e0 d = new e0();
    public static ConcurrentHashMap<String, String> f = new ConcurrentHashMap<>(4);

    public static void a(Context context, h hVar) {
        if (f10612a != null) {
            l0.a(new RuntimeException("Init Twice!"));
        } else if (hVar.s() == null) {
            l0.a(new RuntimeException("need to involve setSensitiveInfoProvider!"));
        } else {
            Application application = (Application) context.getApplicationContext();
            v1 i = v1.i();
            j2 j2Var = new j2(application, hVar);
            k2 k2Var = new k2(application, j2Var);
            i.a(application, j2Var, k2Var, new j0(hVar.o()));
            f10612a = j2Var;
            b = k2Var;
            if (f10612a.J()) {
                application.registerReceiver(new Collector(), new IntentFilter());
            }
            l0.d("Inited", null);
        }
    }

    public static JSONObject b() {
        if (f10612a != null) {
            return f10612a.M();
        }
        return null;
    }

    public static String c() {
        if (f10612a != null) {
            return f10612a.L();
        }
        return null;
    }

    public static String d() {
        k2 k2Var = b;
        if (k2Var != null) {
            return k2Var.m();
        }
        return null;
    }

    public static boolean e() {
        return c;
    }

    @NonNull
    public static c f() {
        return d;
    }

    public static String g() {
        k2 k2Var = b;
        return k2Var != null ? k2Var.g() : "";
    }

    public static boolean h() {
        return true;
    }

    public static d i() {
        return e;
    }

    public static b j() {
        return g;
    }

    public static h k() {
        if (f10612a != null) {
            return f10612a.p();
        }
        return null;
    }

    public static int l() {
        if (f10612a != null) {
            return f10612a.A();
        }
        return 0;
    }

    public static String m() {
        k2 k2Var = b;
        return k2Var != null ? k2Var.j() : "";
    }

    public static void a() {
        v1.h();
    }

    public static void a(HashMap<String, Object> hashMap) {
        k2 k2Var = b;
        if (k2Var != null) {
            k2Var.a(hashMap);
        }
    }

    public static <T> T a(String str, T t) {
        k2 k2Var = b;
        if (k2Var != null) {
            return (T) k2Var.a(str, t);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] a(java.lang.String r4) {
        /*
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r1 = 8192(0x2000, float:1.14794E-41)
            r0.<init>(r1)
            r1 = 0
            boolean r2 = h()     // Catch: java.lang.Throwable -> L2e
            java.lang.String r3 = "UTF-8"
            if (r2 == 0) goto L21
            java.util.zip.GZIPOutputStream r2 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L2e
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L2e
            byte[] r4 = r4.getBytes(r3)     // Catch: java.lang.Throwable -> L1e
            r2.write(r4)     // Catch: java.lang.Throwable -> L1e
            r1 = r2
            goto L28
        L1e:
            r4 = move-exception
            r1 = r2
            goto L2f
        L21:
            byte[] r4 = r4.getBytes(r3)     // Catch: java.lang.Throwable -> L2e
            r0.write(r4)     // Catch: java.lang.Throwable -> L2e
        L28:
            if (r1 == 0) goto L3c
            r1.close()     // Catch: java.io.IOException -> L38
            goto L3c
        L2e:
            r4 = move-exception
        L2f:
            bykvm_19do.bykvm_19do.bykvm_19do.l0.a(r4)     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L3c
            r1.close()     // Catch: java.io.IOException -> L38
            goto L3c
        L38:
            r4 = move-exception
            bykvm_19do.bykvm_19do.bykvm_19do.l0.a(r4)
        L3c:
            byte[] r4 = r0.toByteArray()
            boolean r0 = h()
            if (r0 == 0) goto L4b
            int r0 = r4.length
            byte[] r4 = com.bytedance.mapplog.util.TTEncryptUtils.m3552do(r4, r0)
        L4b:
            return r4
        L4c:
            r4 = move-exception
            if (r1 == 0) goto L57
            r1.close()     // Catch: java.io.IOException -> L53
            goto L57
        L53:
            r0 = move-exception
            bykvm_19do.bykvm_19do.bykvm_19do.l0.a(r0)
        L57:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.a.a(java.lang.String):byte[]");
    }

    public static void a(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            l0.a("eventName is empty", null);
            v1.a(new c0("", "2", 1));
        }
        v1.a(new y(str, false, jSONObject != null ? jSONObject.toString() : null));
    }

    public static void a(String str, Bundle bundle) {
        JSONObject jSONObject = null;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        for (String str2 : bundle.keySet()) {
                            jSONObject2.put(str2, bundle.get(str2));
                        }
                        jSONObject = jSONObject2;
                    } catch (Throwable th) {
                        th = th;
                        jSONObject = jSONObject2;
                        l0.a(th);
                        a(str, jSONObject);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        a(str, jSONObject);
    }

    public static void a(c cVar) {
        d.a(cVar);
    }

    public static void a(e eVar) {
        s0.a(eVar);
    }
}
