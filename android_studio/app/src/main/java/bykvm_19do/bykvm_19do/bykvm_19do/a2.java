package bykvm_19do.bykvm_19do.bykvm_19do;

import com.umeng.analytics.pro.ak;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class a2 extends t1 {
    public static final long[] f = {60000};
    public long d;
    public long e;

    public a2(v1 v1Var) {
        super(v1Var);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean a() {
        return true;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long b() {
        long Q = this.f10649a.c().Q();
        if (Q > 60000 || Q <= 0) {
            Q = 60000;
        }
        f[0] = Q;
        return this.d + Q;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long[] c() {
        return f;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean d() {
        z a2;
        if (System.currentTimeMillis() > this.f10649a.c().Q() + this.e) {
            JSONObject b = this.f10649a.d().b();
            b2 e = this.f10649a.e();
            if (e != null && b != null && (a2 = e.a()) != null) {
                this.f10649a.b().a(b, a2, e.b());
                this.e = System.currentTimeMillis();
            }
        }
        ArrayList<a0> a3 = this.f10649a.b().a();
        ArrayList<a0> arrayList = new ArrayList<>(a3.size());
        ArrayList<a0> arrayList2 = new ArrayList<>(a3.size());
        v1 v1Var = this.f10649a;
        String[] a4 = t.a(v1Var, v1Var.a(), this.f10649a.d().a());
        Iterator<a0> it = a3.iterator();
        while (it.hasNext()) {
            a0 next = it.next();
            int a5 = s.a(a4, next.i, this.f10649a.c());
            if (a5 == 200) {
                arrayList.add(next);
            } else {
                next.k = a5;
                arrayList2.add(next);
            }
        }
        if (arrayList.size() > 0 || arrayList2.size() > 0) {
            this.f10649a.b().a(arrayList, arrayList2);
        }
        l0.d(e() + arrayList.size() + " " + a3.size(), null);
        if (arrayList.size() == a3.size()) {
            this.d = System.currentTimeMillis();
            return true;
        }
        return false;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.t1
    public String e() {
        return ak.aB;
    }
}
