package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.p;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.w;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import com.apk.Cgoto;
import java.io.IOException;
import java.util.List;
/* compiled from: RealInterceptorChain.java */
/* loaded from: classes8.dex */
public final class g implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final List<t> f10720a;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g b;
    public final c c;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.c d;
    public final int e;
    public final y f;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e g;
    public final p h;
    public final int i;
    public final int j;
    public final int k;
    public int l;

    public g(List<t> list, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g gVar, c cVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.c cVar2, int i, y yVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e eVar, p pVar, int i2, int i3, int i4) {
        this.f10720a = list;
        this.d = cVar2;
        this.b = gVar;
        this.c = cVar;
        this.e = i;
        this.f = yVar;
        this.g = eVar;
        this.h = pVar;
        this.i = i2;
        this.j = i3;
        this.k = i4;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t.a
    public int a() {
        return this.k;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t.a
    public y b() {
        return this.f;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t.a
    public int c() {
        return this.i;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t.a
    public int d() {
        return this.j;
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e e() {
        return this.g;
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.i f() {
        return this.d;
    }

    public p g() {
        return this.h;
    }

    public c h() {
        return this.c;
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g i() {
        return this.b;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t.a
    public a0 a(y yVar) throws IOException {
        return a(yVar, this.b, this.c, this.d);
    }

    public a0 a(y yVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g gVar, c cVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.c cVar2) throws IOException {
        w a2;
        if (this.e < this.f10720a.size()) {
            this.l++;
            if (this.c != null && !this.d.a(yVar.g())) {
                StringBuilder m1016super = Cgoto.m1016super("network interceptor ");
                m1016super.append(this.f10720a.get(this.e - 1));
                m1016super.append(" must retain the same host and port");
                throw new IllegalStateException(m1016super.toString());
            } else if (this.c != null && this.l > 1) {
                StringBuilder m1016super2 = Cgoto.m1016super("network interceptor ");
                m1016super2.append(this.f10720a.get(this.e - 1));
                m1016super2.append(" must call proceed() exactly once");
                throw new IllegalStateException(m1016super2.toString());
            } else {
                g gVar2 = new g(this.f10720a, gVar, cVar, cVar2, this.e + 1, yVar, this.g, this.h, this.i, this.j, this.k);
                t tVar = this.f10720a.get(this.e);
                try {
                    a0 a3 = tVar.a(gVar2);
                    if (cVar != null && this.e + 1 < this.f10720a.size() && gVar2.l != 1) {
                        throw new IllegalStateException("network interceptor " + tVar + " must call proceed() exactly once");
                    } else if (a3 == null) {
                        if (cVar2 != null && cVar2.d() != null) {
                            a2 = cVar2.d();
                        } else {
                            a2 = w.a("Unknown");
                        }
                        return new a0.a().a(yVar).a(a2).a(0).a("internal error").a();
                    } else if (a3.i() != null) {
                        return a3;
                    } else {
                        throw new IllegalStateException("interceptor " + tVar + " returned a response with no body");
                    }
                } catch (Exception e) {
                    throw e;
                }
            }
        }
        throw new AssertionError();
    }
}
