package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_19do;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.l;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_19do.c;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.f;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.h;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.w;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import com.baidu.tts.loopj.AsyncHttpClient;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: CacheInterceptor.java */
/* loaded from: classes8.dex */
public final class a implements t {

    /* renamed from: a  reason: collision with root package name */
    public final d f10708a;

    /* compiled from: CacheInterceptor.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_19do.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0025a implements s {

        /* renamed from: a  reason: collision with root package name */
        public boolean f10709a;
        public final /* synthetic */ e b;
        public final /* synthetic */ b c;
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d d;

        public C0025a(a aVar, e eVar, b bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d dVar) {
            this.b = eVar;
            this.c = bVar;
            this.d = dVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public long a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            try {
                long a2 = this.b.a(cVar, j);
                if (a2 == -1) {
                    if (!this.f10709a) {
                        this.f10709a = true;
                        this.d.close();
                    }
                    return -1L;
                }
                cVar.a(this.d.a(), cVar.o() - a2, a2);
                this.d.h();
                return a2;
            } catch (IOException e) {
                if (!this.f10709a) {
                    this.f10709a = true;
                    this.c.a();
                }
                throw e;
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t b() {
            return this.b.b();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f10709a && !bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                this.f10709a = true;
                this.c.a();
            }
            this.b.close();
        }
    }

    public a(d dVar) {
        this.f10708a = dVar;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t
    public a0 a(t.a aVar) throws IOException {
        d dVar = this.f10708a;
        a0 b = dVar != null ? dVar.b(aVar.b()) : null;
        c a2 = new c.a(System.currentTimeMillis(), aVar.b(), b).a();
        y yVar = a2.f10710a;
        a0 a0Var = a2.b;
        d dVar2 = this.f10708a;
        if (dVar2 != null) {
            dVar2.a(a2);
        }
        if (b != null && a0Var == null) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(b.i());
        }
        if (yVar == null && a0Var == null) {
            return new a0.a().a(aVar.b()).a(w.HTTP_1_1).a(504).a("Unsatisfiable Request (only-if-cached)").a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.c).b(-1L).a(System.currentTimeMillis()).a();
        }
        if (yVar == null) {
            return a0Var.p().a(a(a0Var)).a();
        }
        try {
            a0 a3 = aVar.a(yVar);
            if (a3 == null && b != null) {
            }
            if (a0Var != null) {
                if (a3.k() == 304) {
                    a0 a4 = a0Var.p().a(a(a0Var.m(), a3.m())).b(a3.t()).a(a3.r()).a(a(a0Var)).b(a(a3)).a();
                    a3.i().close();
                    this.f10708a.a();
                    this.f10708a.a(a0Var, a4);
                    return a4;
                }
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(a0Var.i());
            }
            a0 a5 = a3.p().a(a(a0Var)).b(a(a3)).a();
            if (this.f10708a != null) {
                if (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.e.b(a5) && c.a(a5, yVar)) {
                    return a(this.f10708a.a(a5), a5);
                }
                if (f.a(yVar.e())) {
                    try {
                        this.f10708a.a(yVar);
                    } catch (IOException unused) {
                    }
                }
            }
            return a5;
        } finally {
            if (b != null) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(b.i());
            }
        }
    }

    public static a0 a(a0 a0Var) {
        return (a0Var == null || a0Var.i() == null) ? a0Var : a0Var.p().a((b0) null).a();
    }

    private a0 a(b bVar, a0 a0Var) throws IOException {
        r b;
        if (bVar == null || (b = bVar.b()) == null) {
            return a0Var;
        }
        return a0Var.p().a(new h(a0Var.b(AsyncHttpClient.HEADER_CONTENT_TYPE), a0Var.i().i(), l.a(new C0025a(this, a0Var.i().k(), bVar, l.a(b))))).a();
    }

    public static bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r rVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r rVar2) {
        r.a aVar = new r.a();
        int b = rVar.b();
        for (int i = 0; i < b; i++) {
            String a2 = rVar.a(i);
            String b2 = rVar.b(i);
            if ((!"Warning".equalsIgnoreCase(a2) || !b2.startsWith("1")) && (!a(a2) || rVar2.a(a2) == null)) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(aVar, a2, b2);
            }
        }
        int b3 = rVar2.b();
        for (int i2 = 0; i2 < b3; i2++) {
            String a3 = rVar2.a(i2);
            if (!"Content-Length".equalsIgnoreCase(a3) && a(a3)) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(aVar, a3, rVar2.b(i2));
            }
        }
        return aVar.a();
    }

    public static boolean a(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }
}
