package bykvm_19do.bykvm_19do.bykvm_19do;

import com.umeng.analytics.pro.ak;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class u1 extends t1 {
    public u1(v1 v1Var) {
        super(v1Var);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean a() {
        return true;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long b() {
        return this.f10649a.c().z() + 21600000;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long[] c() {
        return z1.e;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean d() {
        JSONObject a2 = this.f10649a.d().a();
        if (this.f10649a.d().k() == 0 || a2 == null || this.f10649a.c().z() + 21600000 > System.currentTimeMillis()) {
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("header", a2);
        jSONObject.put("_gen_time", System.currentTimeMillis());
        JSONObject c = s.c(s.a(t.a(this.f10649a.a(), this.f10649a.d().a(), this.f10649a.f().f2893new, true, a.j()), s.e), jSONObject);
        a.f().a(!m0.a(c, this.f10649a.c().y()), c);
        if (c != null) {
            this.f10649a.c().a(c);
            return true;
        }
        return false;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public String e() {
        return ak.aF;
    }
}
