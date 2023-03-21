package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t;
import com.apk.Cgoto;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Http2Stream.java */
/* loaded from: classes8.dex */
public final class i {
    public static final /* synthetic */ boolean l = !i.class.desiredAssertionStatus();
    public long b;
    public final int c;
    public final g d;
    public List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> e;
    public boolean f;
    public final b g;
    public final a h;

    /* renamed from: a  reason: collision with root package name */
    public long f10748a = 0;
    public final c i = new c();
    public final c j = new c();
    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b k = null;

    /* compiled from: Http2Stream.java */
    /* loaded from: classes8.dex */
    public class c extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a {
        public c() {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a
        public IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a
        public void i() {
            i.this.b(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.CANCEL);
        }

        public void k() throws IOException {
            if (h()) {
                throw b((IOException) null);
            }
        }
    }

    public i(int i, g gVar, boolean z, boolean z2, List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> list) {
        if (gVar == null) {
            throw new NullPointerException("connection == null");
        }
        if (list != null) {
            this.c = i;
            this.d = gVar;
            this.b = gVar.n.c();
            this.g = new b(gVar.m.c());
            a aVar = new a();
            this.h = aVar;
            this.g.e = z2;
            aVar.c = z;
            return;
        }
        throw new NullPointerException("requestHeaders == null");
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) throws IOException {
        if (d(bVar)) {
            this.d.b(this.c, bVar);
        }
    }

    public void b(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) {
        if (d(bVar)) {
            this.d.c(this.c, bVar);
        }
    }

    public int c() {
        return this.c;
    }

    public r d() {
        synchronized (this) {
            if (!this.f && !f()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.h;
    }

    public s e() {
        return this.g;
    }

    public boolean f() {
        return this.d.f10743a == ((this.c & 1) == 1);
    }

    public synchronized boolean g() {
        if (this.k != null) {
            return false;
        }
        b bVar = this.g;
        if (bVar.e || bVar.d) {
            a aVar = this.h;
            if (aVar.c || aVar.b) {
                if (this.f) {
                    return false;
                }
            }
        }
        return true;
    }

    public t h() {
        return this.i;
    }

    public void i() {
        boolean g;
        if (!l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.g.e = true;
            g = g();
            notifyAll();
        }
        if (g) {
            return;
        }
        this.d.d(this.c);
    }

    public synchronized List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> j() throws IOException {
        List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> list;
        if (f()) {
            this.i.g();
            while (this.e == null && this.k == null) {
                k();
            }
            this.i.k();
            list = this.e;
            if (list != null) {
                this.e = null;
            } else {
                throw new o(this.k);
            }
        } else {
            throw new IllegalStateException("servers cannot read response headers");
        }
        return list;
    }

    public void k() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    public t l() {
        return this.j;
    }

    public synchronized void c(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) {
        if (this.k == null) {
            this.k = bVar;
            notifyAll();
        }
    }

    public void a(List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> list) {
        boolean z;
        if (!l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = true;
            this.f = true;
            if (this.e == null) {
                this.e = list;
                z = g();
                notifyAll();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.e);
                arrayList.add(null);
                arrayList.addAll(list);
                this.e = arrayList;
            }
        }
        if (z) {
            return;
        }
        this.d.d(this.c);
    }

    public void b() throws IOException {
        a aVar = this.h;
        if (!aVar.b) {
            if (!aVar.c) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar = this.k;
                if (bVar != null) {
                    throw new o(bVar);
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    /* compiled from: Http2Stream.java */
    /* loaded from: classes8.dex */
    public final class a implements r {
        public static final /* synthetic */ boolean e = !i.class.desiredAssertionStatus();

        /* renamed from: a  reason: collision with root package name */
        public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c f10749a = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c();
        public boolean b;
        public boolean c;

        public a() {
        }

        private void a(boolean z) throws IOException {
            long min;
            synchronized (i.this) {
                i.this.j.g();
                while (i.this.b <= 0 && !this.c && !this.b && i.this.k == null) {
                    i.this.k();
                }
                i.this.j.k();
                i.this.b();
                min = Math.min(i.this.b, this.f10749a.o());
                i.this.b -= min;
            }
            i.this.j.g();
            try {
                i.this.d.a(i.this.c, z && min == this.f10749a.o(), this.f10749a, min);
            } finally {
                i.this.j.k();
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
        public void b(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            if (!e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            this.f10749a.b(cVar, j);
            while (this.f10749a.o() >= 16384) {
                a(false);
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                if (this.b) {
                    return;
                }
                if (!i.this.h.c) {
                    if (this.f10749a.o() > 0) {
                        while (this.f10749a.o() > 0) {
                            a(true);
                        }
                    } else {
                        i iVar = i.this;
                        iVar.d.a(iVar.c, true, (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c) null, 0L);
                    }
                }
                synchronized (i.this) {
                    this.b = true;
                }
                i.this.d.flush();
                i.this.a();
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Flushable
        public void flush() throws IOException {
            if (!e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                i.this.b();
            }
            while (this.f10749a.o() > 0) {
                a(false);
                i.this.d.flush();
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
        public t b() {
            return i.this.j;
        }
    }

    private boolean d(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) {
        if (l || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (this.k != null) {
                    return false;
                }
                if (this.g.e && this.h.c) {
                    return false;
                }
                this.k = bVar;
                notifyAll();
                this.d.d(this.c);
                return true;
            }
        }
        throw new AssertionError();
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e eVar, int i) throws IOException {
        if (!l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.g.a(eVar, i);
    }

    /* compiled from: Http2Stream.java */
    /* loaded from: classes8.dex */
    public final class b implements s {
        public static final /* synthetic */ boolean g = !i.class.desiredAssertionStatus();

        /* renamed from: a  reason: collision with root package name */
        public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c f10750a = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c();
        public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c b = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c();
        public final long c;
        public boolean d;
        public boolean e;

        public b(long j) {
            this.c = j;
        }

        private void h() throws IOException {
            if (!this.d) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar = i.this.k;
                if (bVar != null) {
                    throw new o(bVar);
                }
                return;
            }
            throw new IOException("stream closed");
        }

        private void i() throws IOException {
            i.this.i.g();
            while (this.b.o() == 0 && !this.e && !this.d && i.this.k == null) {
                try {
                    i.this.k();
                } finally {
                    i.this.i.k();
                }
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public long a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            if (j >= 0) {
                synchronized (i.this) {
                    i();
                    h();
                    if (this.b.o() == 0) {
                        return -1L;
                    }
                    long a2 = this.b.a(cVar, Math.min(j, this.b.o()));
                    i.this.f10748a += a2;
                    if (i.this.f10748a >= i.this.d.m.c() / 2) {
                        i.this.d.a(i.this.c, i.this.f10748a);
                        i.this.f10748a = 0L;
                    }
                    synchronized (i.this.d) {
                        i.this.d.k += a2;
                        if (i.this.d.k >= i.this.d.m.c() / 2) {
                            i.this.d.a(0, i.this.d.k);
                            i.this.d.k = 0L;
                        }
                    }
                    return a2;
                }
            }
            throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j));
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public t b() {
            return i.this.i;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (i.this) {
                this.d = true;
                this.b.j();
                i.this.notifyAll();
            }
            i.this.a();
        }

        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e eVar, long j) throws IOException {
            boolean z;
            boolean z2;
            boolean z3;
            if (!g && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            while (j > 0) {
                synchronized (i.this) {
                    z = this.e;
                    z2 = true;
                    z3 = this.b.o() + j > this.c;
                }
                if (z3) {
                    eVar.skip(j);
                    i.this.b(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    eVar.skip(j);
                    return;
                } else {
                    long a2 = eVar.a(this.f10750a, j);
                    if (a2 != -1) {
                        j -= a2;
                        synchronized (i.this) {
                            if (this.b.o() != 0) {
                                z2 = false;
                            }
                            this.b.a(this.f10750a);
                            if (z2) {
                                i.this.notifyAll();
                            }
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }
    }

    public void a() throws IOException {
        boolean z;
        boolean g;
        if (!l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = !this.g.e && this.g.d && (this.h.c || this.h.b);
            g = g();
        }
        if (z) {
            a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.CANCEL);
        } else if (g) {
        } else {
            this.d.d(this.c);
        }
    }

    public void a(long j) {
        this.b += j;
        if (j > 0) {
            notifyAll();
        }
    }
}
