package bykvm_19do.bykvm_19do.bykvm_19do;

import androidx.viewpager2.adapter.FragmentStateAdapter;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class z1 extends t1 {
    public static final long[] d = {60000, 60000, 60000, 120000, 120000, 120000, 180000, 180000};
    public static final long[] e = {180000, 180000, 360000, 360000, 540000, 540000};
    public static final long[] f = {FragmentStateAdapter.GRACE_WINDOW_TIME_MS, FragmentStateAdapter.GRACE_WINDOW_TIME_MS, 20000, 20000, 60000, 6000, 180000, 180000, 540000, 540000};

    public z1(v1 v1Var) {
        super(v1Var);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean a() {
        return true;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long b() {
        return this.f10649a.d().l() + (this.f10649a.e().c() ? 21600000 : 43200000);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long[] c() {
        int k = this.f10649a.d().k();
        if (k != 0) {
            if (k != 1) {
                if (k != 2) {
                    l0.a(null);
                    return e;
                }
                return d;
            }
            return e;
        }
        return f;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean d() {
        JSONObject jSONObject = new JSONObject();
        JSONObject a2 = this.f10649a.d().a();
        if (a2 != null) {
            jSONObject.put("magic_tag", "ss_app_log");
            jSONObject.put("header", a2);
            jSONObject.put("_gen_time", System.currentTimeMillis());
            JSONObject a3 = s.a(t.a(this.f10649a.a(), this.f10649a.d().a(), this.f10649a.f().f2890do, true, a.j()), jSONObject);
            if (a3 != null) {
                return this.f10649a.d().a(a3, a3.optString("device_id", ""), a3.optString("install_id", ""), a3.optString("ssid", ""));
            }
            return false;
        }
        l0.a(null);
        return false;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public String e() {
        return "r";
    }
}
