package bykvm_19do.bykvm_19do.bykvm_19do;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class k1 extends t1 {
    public long d;

    public k1(v1 v1Var) {
        super(v1Var);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean a() {
        return true;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long b() {
        long K = this.f10649a.c().K();
        if (K < TTAdConstant.AD_MAX_EVENT_TIME) {
            K = 600000;
        }
        return this.d + K;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long[] c() {
        return z1.e;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean d() {
        JSONObject a2 = this.f10649a.d().a();
        if (this.f10649a.d().k() == 0 || a2 == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("header", this.f10649a.d().a());
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("_gen_time", currentTimeMillis);
        JSONObject d = s.d(s.a(t.a(this.f10649a.a(), this.f10649a.d().a(), this.f10649a.f().f2894try, true, a.j()), s.e), jSONObject);
        if (d != null) {
            a.f().b(!m0.a(a.b(), d), d);
            if (l0.f10634a) {
                l0.a("getAbConfig " + d, null);
            }
            this.f10649a.d().a(d);
            this.d = currentTimeMillis;
            return true;
        }
        return false;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public String e() {
        return "ab";
    }
}
