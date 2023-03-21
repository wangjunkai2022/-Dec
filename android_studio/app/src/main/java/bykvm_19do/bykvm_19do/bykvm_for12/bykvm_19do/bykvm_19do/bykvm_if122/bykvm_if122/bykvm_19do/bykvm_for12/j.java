package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.c0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.p;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.s;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.v;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.z;
import com.apk.Cgoto;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.baidu.tts.loopj.HttpGet;
import com.qq.e.comm.adevent.AdEventType;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: RetryAndFollowUpInterceptor.java */
/* loaded from: classes8.dex */
public final class j implements t {

    /* renamed from: a  reason: collision with root package name */
    public final v f10722a;
    public final boolean b;
    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g c;
    public Object d;
    public volatile boolean e;

    public j(v vVar, boolean z) {
        this.f10722a = vVar;
        this.b = z;
    }

    public boolean a() {
        return this.e;
    }

    public void a(Object obj) {
        this.d = obj;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t
    public a0 a(t.a aVar) throws IOException {
        a0 a2;
        y a3;
        y b = aVar.b();
        g gVar = (g) aVar;
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e e = gVar.e();
        p g = gVar.g();
        this.c = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g(this.f10722a.d(), a(b.g()), e, g, this.d);
        int i = 0;
        a0 a0Var = null;
        while (!this.e) {
            try {
                try {
                    try {
                        a2 = gVar.a(b, this.c, null, null);
                        if (a0Var != null) {
                            a2 = a2.p().c(a0Var.p().a((b0) null).a()).a();
                        }
                        a3 = a(a2);
                    } catch (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.e e2) {
                        if (!a(e2.a(), false, b)) {
                            throw e2.a();
                        }
                    }
                } catch (IOException e3) {
                    if (!a(e3, !(e3 instanceof bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.a), b)) {
                        throw e3;
                    }
                }
                if (a3 == null) {
                    if (!this.b) {
                        this.c.e();
                    }
                    return a2;
                }
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(a2.i());
                int i2 = i + 1;
                if (i2 <= 20) {
                    a3.a();
                    if (!a(a2, a3.g())) {
                        this.c.e();
                        this.c = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g(this.f10722a.d(), a(a3.g()), e, g, this.d);
                    } else if (this.c.a() != null) {
                        throw new IllegalStateException("Closing the body of " + a2 + " didn't close its backing stream. Bad interceptor?");
                    }
                    a0Var = a2;
                    b = a3;
                    i = i2;
                } else {
                    this.c.e();
                    throw new ProtocolException(Cgoto.m1003implements("Too many follow-up requests: ", i2));
                }
            } catch (Throwable th) {
                this.c.a((IOException) null);
                this.c.e();
                throw th;
            }
        }
        this.c.e();
        throw new IOException("Canceled");
    }

    private bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a a(s sVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.g gVar;
        if (sVar.h()) {
            SSLSocketFactory x = this.f10722a.x();
            hostnameVerifier = this.f10722a.m();
            sSLSocketFactory = x;
            gVar = this.f10722a.b();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            gVar = null;
        }
        return new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a(sVar.g(), sVar.j(), this.f10722a.h(), this.f10722a.w(), sSLSocketFactory, hostnameVerifier, gVar, this.f10722a.s(), this.f10722a.r(), this.f10722a.q(), this.f10722a.e(), this.f10722a.t());
    }

    private boolean a(IOException iOException, boolean z, y yVar) {
        this.c.a(iOException);
        if (this.f10722a.v()) {
            if (z) {
                yVar.a();
            }
            return a(iOException, z) && this.c.c();
        }
        return false;
    }

    private boolean a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private y a(a0 a0Var) throws IOException {
        String b;
        s b2;
        Proxy r;
        if (a0Var != null) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.c b3 = this.c.b();
            c0 a2 = b3 != null ? b3.a() : null;
            int k = a0Var.k();
            String e = a0Var.s().e();
            if (k == 307 || k == 308) {
                if (!e.equals(HttpGet.METHOD_NAME) && !e.equals("HEAD")) {
                    return null;
                }
            } else if (k != 401) {
                if (k == 407) {
                    if (a2 != null) {
                        r = a2.b();
                    } else {
                        r = this.f10722a.r();
                    }
                    if (r.type() == Proxy.Type.HTTP) {
                        return this.f10722a.s().a(a2, a0Var);
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                } else if (k == 408) {
                    if (this.f10722a.v()) {
                        a0Var.s().a();
                        if (a0Var.q() == null || a0Var.q().k() != 408) {
                            return a0Var.s();
                        }
                        return null;
                    }
                    return null;
                } else {
                    switch (k) {
                        case 300:
                        case 301:
                        case AdEventType.VIDEO_PAGE_CLOSE /* 302 */:
                        case AdEventType.LEFT_APPLICATION /* 303 */:
                            break;
                        default:
                            return null;
                    }
                }
            } else {
                return this.f10722a.a().a(a2, a0Var);
            }
            if (!this.f10722a.k() || (b = a0Var.b("Location")) == null || (b2 = a0Var.s().g().b(b)) == null) {
                return null;
            }
            if (b2.m().equals(a0Var.s().g().m()) || this.f10722a.l()) {
                y.a f = a0Var.s().f();
                if (f.b(e)) {
                    boolean d = f.d(e);
                    if (f.c(e)) {
                        f.a(HttpGet.METHOD_NAME, (z) null);
                    } else {
                        f.a(e, d ? a0Var.s().a() : null);
                    }
                    if (!d) {
                        f.a("Transfer-Encoding");
                        f.a("Content-Length");
                        f.a(AsyncHttpClient.HEADER_CONTENT_TYPE);
                    }
                }
                if (!a(a0Var, b2)) {
                    f.a("Authorization");
                }
                return f.a(b2).a();
            }
            return null;
        }
        throw new IllegalStateException();
    }

    private boolean a(a0 a0Var, s sVar) {
        s g = a0Var.s().g();
        return g.g().equals(sVar.g()) && g.j() == sVar.j() && g.m().equals(sVar.m());
    }
}
