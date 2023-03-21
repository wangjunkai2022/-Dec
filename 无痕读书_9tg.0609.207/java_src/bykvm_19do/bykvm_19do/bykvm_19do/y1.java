package bykvm_19do.bykvm_19do.bykvm_19do;

import android.os.Bundle;
import com.umeng.analytics.pro.ak;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class y1 extends t1 {
    public static final long[] e = {60000};
    public long d;

    public y1(v1 v1Var) {
        super(v1Var);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean a() {
        return false;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long b() {
        return this.d + 60000;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long[] c() {
        return e;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean d() {
        Bundle a2;
        long currentTimeMillis = System.currentTimeMillis();
        b2 e2 = this.f10649a.e();
        if (e2 != null && (a2 = e2.a(currentTimeMillis, 50000L)) != null) {
            a.a("play_session", a2);
            a.a();
        }
        if (this.f10649a.d().k() != 0) {
            JSONObject b = this.f10649a.d().b();
            if (b != null) {
                boolean a3 = this.f10649a.b().a(b);
                this.d = System.currentTimeMillis();
                return a3;
            }
            l0.a(null);
            return false;
        }
        return false;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public String e() {
        return ak.ax;
    }
}
