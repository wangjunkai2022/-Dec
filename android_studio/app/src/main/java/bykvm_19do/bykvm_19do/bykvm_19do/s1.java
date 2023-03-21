package bykvm_19do.bykvm_19do.bykvm_19do;

import androidx.recyclerview.widget.RecyclerView;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class s1 extends t1 {
    public boolean d;

    public s1(v1 v1Var) {
        super(v1Var);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean a() {
        return true;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long b() {
        if (this.d) {
            return RecyclerView.FOREVER_NS;
        }
        return 0L;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long[] c() {
        return z1.d;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean d() {
        if (this.f10649a.d().k() != 0) {
            JSONObject a2 = this.f10649a.d().a();
            if (a2 != null) {
                this.d = s.b(t.a(this.f10649a.a(), this.f10649a.d().a(), this.f10649a.f().f2892if, true, a.j()), a2);
            } else {
                l0.a(null);
            }
        }
        return this.d;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public String e() {
        return "ac";
    }
}
