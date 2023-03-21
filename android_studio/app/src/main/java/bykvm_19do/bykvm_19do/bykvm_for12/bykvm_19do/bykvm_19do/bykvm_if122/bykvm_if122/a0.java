package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r;
import com.apk.Cgoto;
import java.io.Closeable;

/* compiled from: Response.java */
/* loaded from: classes8.dex */
public final class a0 implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final y f10702a;
    public final w b;
    public final int c;
    public final String d;
    public final q e;
    public final r f;
    public final b0 g;
    public final a0 h;
    public final a0 i;
    public final a0 j;
    public final long k;
    public final long l;
    public volatile d m;

    /* compiled from: Response.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public y f10703a;
        public w b;
        public int c;
        public String d;
        public q e;
        public r.a f;
        public b0 g;
        public a0 h;
        public a0 i;
        public a0 j;
        public long k;
        public long l;

        public a() {
            this.c = -1;
            this.f = new r.a();
        }

        private void d(a0 a0Var) {
            if (a0Var.g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public a a(y yVar) {
            this.f10703a = yVar;
            return this;
        }

        public a b(a0 a0Var) {
            if (a0Var != null) {
                a("networkResponse", a0Var);
            }
            this.h = a0Var;
            return this;
        }

        public a c(a0 a0Var) {
            if (a0Var != null) {
                d(a0Var);
            }
            this.j = a0Var;
            return this;
        }

        public a a(w wVar) {
            this.b = wVar;
            return this;
        }

        public a a(int i) {
            this.c = i;
            return this;
        }

        public a b(long j) {
            this.k = j;
            return this;
        }

        public a(a0 a0Var) {
            this.c = -1;
            this.f10703a = a0Var.f10702a;
            this.b = a0Var.b;
            this.c = a0Var.c;
            this.d = a0Var.d;
            this.e = a0Var.e;
            this.f = a0Var.f.a();
            this.g = a0Var.g;
            this.h = a0Var.h;
            this.i = a0Var.i;
            this.j = a0Var.j;
            this.k = a0Var.k;
            this.l = a0Var.l;
        }

        public a a(String str) {
            this.d = str;
            return this;
        }

        public a a(q qVar) {
            this.e = qVar;
            return this;
        }

        public a a(String str, String str2) {
            this.f.a(str, str2);
            return this;
        }

        public a a(r rVar) {
            this.f = rVar.a();
            return this;
        }

        public a a(b0 b0Var) {
            this.g = b0Var;
            return this;
        }

        public a a(a0 a0Var) {
            if (a0Var != null) {
                a("cacheResponse", a0Var);
            }
            this.i = a0Var;
            return this;
        }

        private void a(String str, a0 a0Var) {
            if (a0Var.g == null) {
                if (a0Var.h == null) {
                    if (a0Var.i == null) {
                        if (a0Var.j != null) {
                            throw new IllegalArgumentException(Cgoto.m989case(str, ".priorResponse != null"));
                        }
                        return;
                    }
                    throw new IllegalArgumentException(Cgoto.m989case(str, ".cacheResponse != null"));
                }
                throw new IllegalArgumentException(Cgoto.m989case(str, ".networkResponse != null"));
            }
            throw new IllegalArgumentException(Cgoto.m989case(str, ".body != null"));
        }

        public a a(long j) {
            this.l = j;
            return this;
        }

        public a0 a() {
            if (this.f10703a != null) {
                if (this.b != null) {
                    if (this.c >= 0) {
                        if (this.d != null) {
                            return new a0(this);
                        }
                        throw new IllegalStateException("message == null");
                    }
                    StringBuilder m1016super = Cgoto.m1016super("code < 0: ");
                    m1016super.append(this.c);
                    throw new IllegalStateException(m1016super.toString());
                }
                throw new IllegalStateException("protocol == null");
            }
            throw new IllegalStateException("request == null");
        }
    }

    public a0(a aVar) {
        this.f10702a = aVar.f10703a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f.a();
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.k;
        this.l = aVar.l;
    }

    public String a(String str, String str2) {
        String a2 = this.f.a(str);
        return a2 != null ? a2 : str2;
    }

    public String b(String str) {
        return a(str, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        b0 b0Var = this.g;
        if (b0Var != null) {
            b0Var.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    public b0 i() {
        return this.g;
    }

    public d j() {
        d dVar = this.m;
        if (dVar != null) {
            return dVar;
        }
        d a2 = d.a(this.f);
        this.m = a2;
        return a2;
    }

    public int k() {
        return this.c;
    }

    public q l() {
        return this.e;
    }

    public r m() {
        return this.f;
    }

    public boolean n() {
        int i = this.c;
        return i >= 200 && i < 300;
    }

    public String o() {
        return this.d;
    }

    public a p() {
        return new a(this);
    }

    public a0 q() {
        return this.j;
    }

    public long r() {
        return this.l;
    }

    public y s() {
        return this.f10702a;
    }

    public long t() {
        return this.k;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Response{protocol=");
        m1016super.append(this.b);
        m1016super.append(", code=");
        m1016super.append(this.c);
        m1016super.append(", message=");
        m1016super.append(this.d);
        m1016super.append(", url=");
        m1016super.append(this.f10702a.g());
        m1016super.append('}');
        return m1016super.toString();
    }
}
