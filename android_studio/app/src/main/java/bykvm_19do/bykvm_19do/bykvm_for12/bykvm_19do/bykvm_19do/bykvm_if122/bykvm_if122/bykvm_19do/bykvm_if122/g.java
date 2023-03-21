package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.f;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.o;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.c0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.j;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.p;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.v;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;

/* compiled from: StreamAllocation.java */
/* loaded from: classes8.dex */
public final class g {
    public static final /* synthetic */ boolean o = !g.class.desiredAssertionStatus();

    /* renamed from: a  reason: collision with root package name */
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a f10730a;
    public f.a b;
    public c0 c;
    public final j d;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e e;
    public final p f;
    public final Object g;
    public final f h;
    public int i;
    public c j;
    public boolean k;
    public boolean l;
    public boolean m;
    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c n;

    /* compiled from: StreamAllocation.java */
    /* loaded from: classes8.dex */
    public static final class a extends WeakReference<g> {

        /* renamed from: a  reason: collision with root package name */
        public final Object f10731a;

        public a(g gVar, Object obj) {
            super(gVar);
            this.f10731a = obj;
        }
    }

    public g(j jVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a aVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e eVar, p pVar, Object obj) throws IOException {
        this.d = jVar;
        this.f10730a = aVar;
        this.e = eVar;
        this.f = pVar;
        this.h = new f(aVar, g(), eVar, pVar);
        this.g = obj;
    }

    private Socket f() {
        if (o || Thread.holdsLock(this.d)) {
            c cVar = this.j;
            if (cVar == null || !cVar.k) {
                return null;
            }
            return a(false, false, true);
        }
        throw new AssertionError();
    }

    private d g() {
        return bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(this.d);
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c a(v vVar, t.a aVar, boolean z) {
        try {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c a2 = a(aVar.c(), aVar.d(), aVar.a(), vVar.v(), z).a(vVar, aVar, this);
            synchronized (this.d) {
                this.n = a2;
            }
            return a2;
        } catch (IOException e) {
            throw new e(e);
        }
    }

    public synchronized c b() {
        return this.j;
    }

    public boolean c() {
        f.a aVar;
        return this.c != null || ((aVar = this.b) != null && aVar.b()) || this.h.a();
    }

    public void d() {
        c cVar;
        Socket a2;
        synchronized (this.d) {
            cVar = this.j;
            a2 = a(true, false, false);
            if (this.j != null) {
                cVar = null;
            }
        }
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(a2);
        if (cVar != null) {
            this.f.b(this.e, cVar);
        }
    }

    public void e() {
        c cVar;
        Socket a2;
        synchronized (this.d) {
            cVar = this.j;
            a2 = a(false, true, false);
            if (this.j != null) {
                cVar = null;
            }
        }
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(a2);
        if (cVar != null) {
            this.f.b(this.e, cVar);
        }
    }

    public String toString() {
        c b = b();
        return b != null ? b.toString() : this.f10730a.toString();
    }

    private void b(c cVar) {
        int size = cVar.n.size();
        for (int i = 0; i < size; i++) {
            if (cVar.n.get(i).get() == this) {
                cVar.n.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private c a(int i, int i2, int i3, boolean z, boolean z2) throws IOException {
        while (true) {
            c a2 = a(i, i2, i3, z);
            synchronized (this.d) {
                if (a2.l == 0) {
                    return a2;
                }
                if (a2.a(z2)) {
                    return a2;
                }
                d();
            }
        }
    }

    private c a(int i, int i2, int i3, boolean z) throws IOException {
        Socket f;
        Socket socket;
        c cVar;
        c cVar2;
        c0 c0Var;
        boolean z2;
        boolean z3;
        f.a aVar;
        synchronized (this.d) {
            if (!this.l) {
                if (this.n == null) {
                    if (!this.m) {
                        c cVar3 = this.j;
                        f = f();
                        socket = null;
                        if (this.j != null) {
                            cVar2 = this.j;
                            cVar = null;
                        } else {
                            cVar = cVar3;
                            cVar2 = null;
                        }
                        if (!this.k) {
                            cVar = null;
                        }
                        if (cVar2 == null) {
                            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(this.d, this.f10730a, this, null);
                            if (this.j != null) {
                                cVar2 = this.j;
                                c0Var = null;
                                z2 = true;
                            } else {
                                c0Var = this.c;
                            }
                        } else {
                            c0Var = null;
                        }
                        z2 = false;
                    } else {
                        throw new IOException("Canceled");
                    }
                } else {
                    throw new IllegalStateException("codec != null");
                }
            } else {
                throw new IllegalStateException("released");
            }
        }
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(f);
        if (cVar != null) {
            this.f.b(this.e, cVar);
        }
        if (z2) {
            this.f.a(this.e, cVar2);
        }
        if (cVar2 != null) {
            return cVar2;
        }
        if (c0Var != null || ((aVar = this.b) != null && aVar.b())) {
            z3 = false;
        } else {
            this.b = this.h.b();
            z3 = true;
        }
        synchronized (this.d) {
            if (this.m) {
                throw new IOException("Canceled");
            }
            if (z3) {
                List<c0> a2 = this.b.a();
                int size = a2.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size) {
                        break;
                    }
                    c0 c0Var2 = a2.get(i4);
                    bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(this.d, this.f10730a, this, c0Var2);
                    if (this.j != null) {
                        cVar2 = this.j;
                        this.c = c0Var2;
                        z2 = true;
                        break;
                    }
                    i4++;
                }
            }
            if (!z2) {
                if (c0Var == null) {
                    c0Var = this.b.c();
                }
                this.c = c0Var;
                this.i = 0;
                cVar2 = new c(this.d, c0Var);
                a(cVar2, false);
            }
        }
        if (z2) {
            this.f.a(this.e, cVar2);
            return cVar2;
        }
        cVar2.a(i, i2, i3, z, this.e, this.f);
        g().a(cVar2.a());
        synchronized (this.d) {
            this.k = true;
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.b(this.d, cVar2);
            if (cVar2.c()) {
                socket = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(this.d, this.f10730a, this);
                cVar2 = this.j;
            }
        }
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(socket);
        this.f.a(this.e, cVar2);
        return cVar2;
    }

    public void a(boolean z, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c cVar, long j, IOException iOException) {
        c cVar2;
        Socket a2;
        boolean z2;
        this.f.b(this.e, j);
        synchronized (this.d) {
            if (cVar != null) {
                if (cVar == this.n) {
                    if (!z) {
                        this.j.l++;
                    }
                    cVar2 = this.j;
                    a2 = a(z, false, true);
                    if (this.j != null) {
                        cVar2 = null;
                    }
                    z2 = this.l;
                }
            }
            throw new IllegalStateException("expected " + this.n + " but was " + cVar);
        }
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(a2);
        if (cVar2 != null) {
            this.f.b(this.e, cVar2);
        }
        if (iOException != null) {
            this.f.a(this.e, iOException);
        } else if (z2) {
            this.f.a(this.e);
        }
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c a() {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c cVar;
        synchronized (this.d) {
            cVar = this.n;
        }
        return cVar;
    }

    private Socket a(boolean z, boolean z2, boolean z3) {
        Socket socket;
        if (o || Thread.holdsLock(this.d)) {
            if (z3) {
                this.n = null;
            }
            if (z2) {
                this.l = true;
            }
            c cVar = this.j;
            if (cVar != null) {
                if (z) {
                    cVar.k = true;
                }
                if (this.n == null) {
                    if (this.l || this.j.k) {
                        b(this.j);
                        if (this.j.n.isEmpty()) {
                            this.j.o = System.nanoTime();
                            if (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(this.d, this.j)) {
                                socket = this.j.e();
                                this.j = null;
                                return socket;
                            }
                        }
                        socket = null;
                        this.j = null;
                        return socket;
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        throw new AssertionError();
    }

    public void a(IOException iOException) {
        c cVar;
        boolean z;
        Socket a2;
        synchronized (this.d) {
            cVar = null;
            if (iOException instanceof o) {
                o oVar = (o) iOException;
                if (oVar.f10757a == bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.REFUSED_STREAM) {
                    this.i++;
                }
                if (oVar.f10757a != bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.REFUSED_STREAM || this.i > 1) {
                    this.c = null;
                    z = true;
                }
                z = false;
            } else {
                if (this.j != null && (!this.j.c() || (iOException instanceof bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.a))) {
                    if (this.j.l == 0) {
                        if (this.c != null && iOException != null) {
                            this.h.a(this.c, iOException);
                        }
                        this.c = null;
                    }
                    z = true;
                }
                z = false;
            }
            c cVar2 = this.j;
            a2 = a(z, false, true);
            if (this.j == null && this.k) {
                cVar = cVar2;
            }
        }
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(a2);
        if (cVar != null) {
            this.f.b(this.e, cVar);
        }
    }

    public void a(c cVar, boolean z) {
        if (!o && !Thread.holdsLock(this.d)) {
            throw new AssertionError();
        }
        if (this.j == null) {
            this.j = cVar;
            this.k = z;
            cVar.n.add(new a(this, this.g));
            return;
        }
        throw new IllegalStateException();
    }

    public Socket a(c cVar) {
        if (o || Thread.holdsLock(this.d)) {
            if (this.n == null && this.j.n.size() == 1) {
                Socket a2 = a(true, false, false);
                this.j = cVar;
                cVar.n.add(this.j.n.get(0));
                return a2;
            }
            throw new IllegalStateException();
        }
        throw new AssertionError();
    }
}
