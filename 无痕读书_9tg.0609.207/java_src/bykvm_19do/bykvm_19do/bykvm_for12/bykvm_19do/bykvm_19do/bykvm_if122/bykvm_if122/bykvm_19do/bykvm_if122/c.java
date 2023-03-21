package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.l;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.c0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.i;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.j;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.k;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.p;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.q;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.s;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.v;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.w;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import com.apk.Cgoto;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
/* compiled from: RealConnection.java */
/* loaded from: classes8.dex */
public final class c extends g.i implements i {
    public final j b;
    public final c0 c;
    public Socket d;
    public Socket e;
    public q f;
    public w g;
    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g h;
    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e i;
    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d j;
    public boolean k;
    public int l;
    public int m = 1;
    public final List<Reference<g>> n = new ArrayList();
    public long o = RecyclerView.FOREVER_NS;

    public c(j jVar, c0 c0Var) {
        this.b = jVar;
        this.c = c0Var;
    }

    private y f() {
        return new y.a().a(this.c.a().k()).b("Host", bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this.c.a().k(), true)).b("Proxy-Connection", "Keep-Alive").b("User-Agent", bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.d.a()).a();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006f A[Catch: IOException -> 0x00d3, TRY_LEAVE, TryCatch #0 {IOException -> 0x00d3, blocks: (B:16:0x0067, B:18:0x006f), top: B:58:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d0 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r16, int r17, int r18, boolean r19, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e r20, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.p r21) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.c.a(int, int, int, boolean, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.p):void");
    }

    public q b() {
        return this.f;
    }

    public boolean c() {
        return this.h != null;
    }

    public w d() {
        return this.g;
    }

    public Socket e() {
        return this.e;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Connection{");
        m1016super.append(this.c.a().k().g());
        m1016super.append(":");
        m1016super.append(this.c.a().k().j());
        m1016super.append(", proxy=");
        m1016super.append(this.c.b());
        m1016super.append(" hostAddress=");
        m1016super.append(this.c.d());
        m1016super.append(" cipherSuite=");
        q qVar = this.f;
        m1016super.append(qVar != null ? qVar.a() : "none");
        m1016super.append(" protocol=");
        m1016super.append(this.g);
        m1016super.append('}');
        return m1016super.toString();
    }

    private void a(int i, int i2, int i3, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e eVar, p pVar) throws IOException {
        y f = f();
        s g = f.g();
        for (int i4 = 0; i4 < 21; i4++) {
            a(i, i2, eVar, pVar);
            f = a(i2, i3, f, g);
            if (f == null) {
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this.d);
            this.d = null;
            this.j = null;
            this.i = null;
            pVar.a(eVar, this.c.d(), this.c.b(), null);
        }
    }

    private void a(int i, int i2, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e eVar, p pVar) throws IOException {
        Proxy b = this.c.b();
        this.d = (b.type() == Proxy.Type.DIRECT || b.type() == Proxy.Type.HTTP) ? this.c.a().i().createSocket() : new Socket(b);
        pVar.a(eVar, this.c.d(), b);
        this.d.setSoTimeout(i2);
        try {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_try19.e.b().a(this.d, this.c.d(), i);
            try {
                this.i = l.a(l.b(this.d));
                this.j = l.a(l.a(this.d));
            } catch (NullPointerException e) {
                if ("throw with null exception".equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            StringBuilder m1016super = Cgoto.m1016super("Failed to connect to ");
            m1016super.append(this.c.d());
            ConnectException connectException = new ConnectException(m1016super.toString());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    private void a(b bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e eVar, p pVar) throws IOException {
        if (this.c.a().j() == null) {
            this.g = w.HTTP_1_1;
            this.e = this.d;
            return;
        }
        pVar.g(eVar);
        a(bVar);
        pVar.a(eVar, this.f);
        if (this.g == w.HTTP_2) {
            this.e.setSoTimeout(0);
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g a2 = new g.h(true).a(this.e, this.c.a().k().g(), this.i, this.j).a(this).a();
            this.h = a2;
            a2.k();
        }
    }

    private void a(b bVar) throws IOException {
        SSLSocket sSLSocket;
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a a2 = this.c.a();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) a2.j().createSocket(this.d, a2.k().g(), a2.k().j(), true);
            } catch (AssertionError e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            k a3 = bVar.a(sSLSocket);
            if (a3.c()) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_try19.e.b().a(sSLSocket, a2.k().g(), a2.e());
            }
            sSLSocket.startHandshake();
            q a4 = q.a(sSLSocket.getSession());
            if (a2.d().verify(a2.k().g(), sSLSocket.getSession())) {
                a2.a().a(a2.k().g(), a4.b());
                String b = a3.c() ? bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_try19.e.b().b(sSLSocket) : null;
                this.e = sSLSocket;
                this.i = l.a(l.b(sSLSocket));
                this.j = l.a(l.a(this.e));
                this.f = a4;
                this.g = b != null ? w.a(b) : w.HTTP_1_1;
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_try19.e.b().a(sSLSocket);
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) a4.b().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + a2.k().g() + " not verified:\n    certificate: " + bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.g.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_case1.e.a(x509Certificate));
        } catch (AssertionError e2) {
            e = e2;
            if (!bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_try19.e.b().a(sSLSocket2);
            }
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a((Socket) sSLSocket2);
            throw th;
        }
    }

    private y a(int i, int i2, y yVar, s sVar) throws IOException {
        StringBuilder m1016super = Cgoto.m1016super("CONNECT ");
        m1016super.append(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(sVar, true));
        m1016super.append(" HTTP/1.1");
        String sb = m1016super.toString();
        while (true) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_int108.a aVar = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_int108.a(null, null, this.i, this.j);
            this.i.b().a(i, TimeUnit.MILLISECONDS);
            this.j.b().a(i2, TimeUnit.MILLISECONDS);
            aVar.a(yVar.c(), sb);
            aVar.a();
            a0 a2 = aVar.a(false).a(yVar).a();
            long a3 = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.e.a(a2);
            if (a3 == -1) {
                a3 = 0;
            }
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s b = aVar.b(a3);
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.b(b, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, TimeUnit.MILLISECONDS);
            b.close();
            int k = a2.k();
            if (k == 200) {
                if (this.i.a().f() && this.j.a().f()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            } else if (k == 407) {
                y a4 = this.c.a().g().a(this.c, a2);
                if (a4 != null) {
                    if ("close".equalsIgnoreCase(a2.b("Connection"))) {
                        return a4;
                    }
                    yVar = a4;
                } else {
                    throw new IOException("Failed to authenticate with proxy");
                }
            } else {
                StringBuilder m1016super2 = Cgoto.m1016super("Unexpected response code for CONNECT: ");
                m1016super2.append(a2.k());
                throw new IOException(m1016super2.toString());
            }
        }
    }

    public boolean a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a aVar, c0 c0Var) {
        if (this.n.size() >= this.m || this.k || !bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(this.c.a(), aVar)) {
            return false;
        }
        if (aVar.k().g().equals(a().a().k().g())) {
            return true;
        }
        if (this.h != null && c0Var != null && c0Var.b().type() == Proxy.Type.DIRECT && this.c.b().type() == Proxy.Type.DIRECT && this.c.d().equals(c0Var.d()) && c0Var.a().d() == bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_case1.e.f10716a && a(aVar.k())) {
            try {
                aVar.a().a(aVar.k().g(), b().b());
                return true;
            } catch (SSLPeerUnverifiedException unused) {
                return false;
            }
        }
        return false;
    }

    public boolean a(s sVar) {
        if (sVar.j() != this.c.a().k().j()) {
            return false;
        }
        if (sVar.g().equals(this.c.a().k().g())) {
            return true;
        }
        return this.f != null && bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_case1.e.f10716a.a(sVar.g(), (X509Certificate) this.f.b().get(0));
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c a(v vVar, t.a aVar, g gVar) throws SocketException {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g gVar2 = this.h;
        if (gVar2 != null) {
            return new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.f(vVar, aVar, gVar, gVar2);
        }
        this.e.setSoTimeout(aVar.d());
        this.i.b().a(aVar.d(), TimeUnit.MILLISECONDS);
        this.j.b().a(aVar.a(), TimeUnit.MILLISECONDS);
        return new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_int108.a(vVar, gVar, this.i, this.j);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.i
    public c0 a() {
        return this.c;
    }

    public boolean a(boolean z) {
        if (this.e.isClosed() || this.e.isInputShutdown() || this.e.isOutputShutdown()) {
            return false;
        }
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g gVar = this.h;
        if (gVar != null) {
            return !gVar.i();
        }
        if (z) {
            try {
                int soTimeout = this.e.getSoTimeout();
                try {
                    this.e.setSoTimeout(1);
                    return !this.i.f();
                } finally {
                    this.e.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g.i
    public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i iVar) throws IOException {
        iVar.a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.REFUSED_STREAM);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g.i
    public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g gVar) {
        synchronized (this.b) {
            this.m = gVar.j();
        }
    }
}
