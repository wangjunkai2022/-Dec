package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_for12;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import java.io.IOException;

/* compiled from: TncHostInterceptor.java */
/* loaded from: classes8.dex */
public class g implements t {

    /* renamed from: a  reason: collision with root package name */
    public int f10672a;

    public void a(int i) {
        this.f10672a = i;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t
    public a0 a(t.a aVar) throws IOException {
        a0 a0Var;
        y b = aVar.b();
        if (h.a().a(this.f10672a).a() != null) {
            h.a().a(this.f10672a).a().e();
        }
        String sVar = b.g().toString();
        String a2 = h.a().a(this.f10672a).a(sVar);
        if (!sVar.equals(a2)) {
            b = b.f().b(a2).a();
        }
        try {
            a0Var = aVar.a(b);
        } catch (Exception e) {
            h.a().a(this.f10672a).a(b, e);
            a0Var = null;
        }
        h.a().a(this.f10672a).a(b, a0Var);
        return a0Var == null ? aVar.a(b) : a0Var;
    }
}
