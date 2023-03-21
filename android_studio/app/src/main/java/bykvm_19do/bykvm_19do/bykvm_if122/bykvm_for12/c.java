package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.content.Context;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AdEventManager.java */
/* loaded from: classes8.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f10953a;
    public static final AtomicLong b = new AtomicLong(0);
    public static volatile int c = 1;
    public static volatile boolean d = false;
    public static volatile boolean e = true;

    public static void a(int i) {
        c = i;
        if (c == 1 || c == 0) {
            return;
        }
        c = 0;
    }

    public static void b() {
        f10953a = true;
    }

    public static boolean a() {
        if (!d) {
            synchronized (c.class) {
                if (!d) {
                    e = c == 1;
                    d = true;
                }
            }
        }
        return e;
    }

    public static void a(Context context, d dVar, Map<String, Object> map) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().t()) {
            if (!a() || f10953a) {
                if (context == null) {
                    context = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d();
                }
                JSONObject jSONObject = new JSONObject();
                if (map != null) {
                    try {
                        for (Map.Entry<String, Object> entry : map.entrySet()) {
                            jSONObject.put(entry.getKey(), entry.getValue());
                        }
                    } catch (JSONException unused) {
                    }
                }
                jSONObject.put("eventIndex", b.getAndIncrement());
                jSONObject.put("if_use_new_loglib", a());
                int l = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().l();
                if (dVar != null) {
                    dVar.a("event_id", UUID.randomUUID().toString());
                }
                if (l == 0 || l == 2) {
                    i a2 = i.a(context, dVar, jSONObject);
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.bykvm_19do.a.a(a2, true);
                    if (a()) {
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.a aVar = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.a(a2.f10946a, a2);
                        aVar.a((byte) 3);
                        aVar.b((byte) 2);
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.b.a(aVar);
                    } else {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.c().a(a2);
                    }
                }
                if (l == 0 || l == 1) {
                    a a3 = a.a(context, dVar, jSONObject);
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.bykvm_19do.a.a(a3, false);
                    if (a()) {
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.a aVar2 = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.a(a3.f10946a, a3);
                        aVar2.a((byte) 0);
                        aVar2.b((byte) 2);
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.b.a(aVar2);
                        return;
                    }
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.a().a(a3);
                }
            }
        }
    }
}
