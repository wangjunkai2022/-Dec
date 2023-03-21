package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.l;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import com.apk.Cgoto;
import java.io.IOException;
import java.net.ProtocolException;

/* compiled from: CallServerInterceptor.java */
/* loaded from: classes8.dex */
public final class b implements t {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f10718a;

    /* compiled from: CallServerInterceptor.java */
    /* loaded from: classes8.dex */
    public static final class a extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.g {
        public long b;

        public a(r rVar) {
            super(rVar);
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.g, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
        public void b(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            super.b(cVar, j);
            this.b += j;
        }
    }

    public b(boolean z) {
        this.f10718a = z;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t
    public a0 a(t.a aVar) throws IOException {
        a0 a2;
        g gVar = (g) aVar;
        c h = gVar.h();
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g i = gVar.i();
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.c cVar = (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.c) gVar.f();
        y b = gVar.b();
        long currentTimeMillis = System.currentTimeMillis();
        gVar.g().d(gVar.e());
        h.a(b);
        gVar.g().a(gVar.e(), b);
        a0.a aVar2 = null;
        if (f.b(b.e()) && b.a() != null) {
            if ("100-continue".equalsIgnoreCase(b.a("Expect"))) {
                h.b();
                gVar.g().f(gVar.e());
                aVar2 = h.a(true);
            }
            if (aVar2 == null) {
                gVar.g().c(gVar.e());
                a aVar3 = new a(h.a(b, b.a().a()));
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d a3 = l.a(aVar3);
                b.a().a(a3);
                a3.close();
                gVar.g().a(gVar.e(), aVar3.b);
            } else if (!cVar.c()) {
                i.d();
            }
        }
        h.a();
        if (aVar2 == null) {
            gVar.g().f(gVar.e());
            aVar2 = h.a(false);
        }
        a0 a4 = aVar2.a(b).a(i.b().b()).b(currentTimeMillis).a(System.currentTimeMillis()).a();
        gVar.g().a(gVar.e(), a4);
        int k = a4.k();
        if (this.f10718a && k == 101) {
            a2 = a4.p().a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.c).a();
        } else {
            a2 = a4.p().a(h.a(a4)).a();
        }
        if ("close".equalsIgnoreCase(a2.s().a("Connection")) || "close".equalsIgnoreCase(a2.b("Connection"))) {
            i.d();
        }
        if ((k == 204 || k == 205) && a2.i().i() > 0) {
            StringBuilder m1020throw = Cgoto.m1020throw("HTTP ", k, " had non-zero Content-Length: ");
            m1020throw.append(a2.i().i());
            throw new ProtocolException(m1020throw.toString());
        }
        return a2;
    }
}
