package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.bykvm_19do;

import android.content.Context;
import android.os.Process;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.n;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.umeng.analytics.pro.ak;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* compiled from: BaseAssembly.java */
/* loaded from: classes8.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c f11077a;
    public Context b;
    public bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e c = i.e().a();
    public b d;
    public d e;

    public c(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c cVar, Context context, b bVar, d dVar) {
        this.f11077a = cVar;
        this.b = context;
        this.d = bVar;
        this.e = dVar;
    }

    private void e(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a aVar) {
        List<bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.a> a2 = i.d().a(this.f11077a);
        if (a2 != null) {
            JSONObject jSONObject = new JSONObject();
            for (bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.a aVar2 : a2) {
                Map<? extends String, ? extends String> a3 = aVar2.a(this.f11077a);
                if (a3 != null) {
                    try {
                        for (String str : a3.keySet()) {
                            jSONObject.put(str, a3.get(str));
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
            aVar.a("custom", jSONObject);
        }
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a aVar) {
        Map<String, Object> d = i.e().d();
        if (d == null) {
            return;
        }
        if (d.containsKey("app_version")) {
            aVar.a("crash_version", d.get("app_version"));
        }
        if (d.containsKey(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME)) {
            aVar.a("app_version", d.get(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME));
        }
        if (d.containsKey("version_code")) {
            try {
                aVar.a("crash_version_code", Integer.valueOf(Integer.parseInt(d.get("version_code").toString())));
            } catch (Exception unused) {
                aVar.a("crash_version_code", d.get("version_code"));
            }
        }
        if (d.containsKey("update_version_code")) {
            try {
                aVar.a("crash_update_version_code", Integer.valueOf(Integer.parseInt(d.get("update_version_code").toString())));
            } catch (Exception unused2) {
                aVar.a("crash_update_version_code", d.get("update_version_code"));
            }
        }
    }

    public boolean a() {
        return true;
    }

    public bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a b(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a aVar) {
        if (aVar == null) {
            aVar = new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a();
        }
        c(aVar);
        e(aVar);
        return aVar;
    }

    public boolean b() {
        return true;
    }

    public void c(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a aVar) {
        b bVar;
        if (a() && (bVar = this.d) != null) {
            aVar.a(bVar);
        }
        aVar.a(i.a());
        aVar.a("is_background", Boolean.valueOf(!bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.a.e(this.b)));
        aVar.a("pid", Integer.valueOf(Process.myPid()));
        aVar.a(ak.Z, Integer.valueOf(this.e.a()));
        aVar.b(this.c.g());
        aVar.c(i.i());
        aVar.a(i.g(), i.h());
        aVar.b(this.c.b());
        aVar.a(n.c(this.b));
        if (b()) {
            d(aVar);
        }
        aVar.a(this.c.d());
        String c = i.c();
        if (c != null) {
            aVar.a("business", c);
        }
        if (i.k()) {
            aVar.a("is_mp", (Object) 1);
        }
        aVar.a(i.d().d());
        aVar.a("crash_uuid", UUID.randomUUID().toString());
    }

    public void d(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a aVar) {
        aVar.a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.e.a(i.f().b(), i.f().c()));
    }
}
