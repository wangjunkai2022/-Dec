package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.util.ArrayList;
/* compiled from: RealCall.java */
/* loaded from: classes8.dex */
public final class x implements e {

    /* renamed from: a  reason: collision with root package name */
    public final v f10795a;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.j b;
    public p c;
    public final y d;
    public final boolean e;
    public boolean f;

    /* compiled from: RealCall.java */
    /* loaded from: classes8.dex */
    public final class a extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
        public final f b;

        public a(f fVar) {
            super("OkHttp %s", x.this.c());
            this.b = fVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
        public void b() {
            IOException e;
            a0 a2;
            boolean z = true;
            try {
                try {
                    a2 = x.this.a();
                } catch (IOException e2) {
                    e = e2;
                    z = false;
                }
                try {
                    if (x.this.b.a()) {
                        this.b.a(x.this, new IOException("Canceled"));
                    } else {
                        this.b.a(x.this, a2);
                    }
                } catch (IOException e3) {
                    e = e3;
                    if (!z) {
                        x.this.c.a(x.this, e);
                        this.b.a(x.this, e);
                    } else {
                        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_try19.e b = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_try19.e.b();
                        b.a(4, "Callback failure for " + x.this.d(), e);
                    }
                    return;
                }
                if (a2.c != 0) {
                    return;
                }
                throw new IOException(a2.d);
            } finally {
                x.this.f10795a.g().b(this);
            }
        }

        public String c() {
            return x.this.d.g().g();
        }
    }

    public x(v vVar, y yVar, boolean z) {
        this.f10795a = vVar;
        this.d = yVar;
        this.e = z;
        this.b = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.j(vVar, z);
    }

    private void e() {
        this.b.a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_try19.e.b().a("response.body().close()"));
    }

    public boolean b() {
        return this.b.a();
    }

    public String c() {
        return this.d.g().l();
    }

    public String d() {
        StringBuilder sb = new StringBuilder();
        sb.append(b() ? "canceled " : "");
        sb.append(this.e ? "web socket" : NotificationCompat.CATEGORY_CALL);
        sb.append(" to ");
        sb.append(c());
        return sb.toString();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e
    public a0 i() throws IOException {
        synchronized (this) {
            if (!this.f) {
                this.f = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        e();
        this.c.b(this);
        try {
            try {
                this.f10795a.g().a(this);
                a0 a2 = a();
                if (a2 != null) {
                    if (a2.c != 0) {
                        return a2;
                    }
                    throw new IOException(a2.d);
                }
                throw new IOException("Canceled");
            } catch (IOException e) {
                this.c.a(this, e);
                throw e;
            }
        } finally {
            this.f10795a.g().b(this);
        }
    }

    public static x a(v vVar, y yVar, boolean z) {
        x xVar = new x(vVar, yVar, z);
        xVar.c = vVar.j().a(xVar);
        return xVar;
    }

    /* renamed from: clone */
    public x m8clone() {
        return a(this.f10795a, this.d, this.e);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e
    public void a(f fVar) {
        synchronized (this) {
            if (!this.f) {
                this.f = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        e();
        this.c.b(this);
        this.f10795a.g().a(new a(fVar));
    }

    public a0 a() throws IOException {
        ArrayList arrayList = new ArrayList(this.f10795a.n());
        arrayList.add(this.b);
        arrayList.add(new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.a(this.f10795a.f()));
        arrayList.add(new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_19do.a(this.f10795a.o()));
        arrayList.add(new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.a(this.f10795a));
        if (!this.e) {
            arrayList.addAll(this.f10795a.p());
        }
        arrayList.add(new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.b(this.e));
        return new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.g(arrayList, null, null, null, 0, this.d, this, this.c, this.f10795a.c(), this.f10795a.u(), this.f10795a.y()).a(this.d);
    }
}
