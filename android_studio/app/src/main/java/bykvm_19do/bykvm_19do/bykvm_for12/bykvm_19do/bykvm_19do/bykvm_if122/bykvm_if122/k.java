package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import com.apk.Cgoto;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* compiled from: ConnectionSpec.java */
/* loaded from: classes8.dex */
public final class k {
    public static final h[] e = {h.m, h.o, h.n, h.p, h.r, h.q, h.i, h.k, h.j, h.l, h.g, h.h, h.e, h.f, h.d};
    public static final k f;
    public static final k g;

    /* renamed from: a  reason: collision with root package name */
    public final boolean f10777a;
    public final boolean b;
    public final String[] c;
    public final String[] d;

    static {
        k a2 = new a(true).a(e).a(d0.TLS_1_3, d0.TLS_1_2, d0.TLS_1_1, d0.TLS_1_0).a(true).a();
        f = a2;
        new a(a2).a(d0.TLS_1_0).a(true).a();
        g = new a(false).a();
    }

    public k(a aVar) {
        this.f10777a = aVar.f10778a;
        this.c = aVar.b;
        this.d = aVar.c;
        this.b = aVar.d;
    }

    public List<h> a() {
        String[] strArr = this.c;
        if (strArr != null) {
            return h.a(strArr);
        }
        return null;
    }

    public boolean b() {
        return this.f10777a;
    }

    public boolean c() {
        return this.b;
    }

    public List<d0> d() {
        String[] strArr = this.d;
        if (strArr != null) {
            return d0.a(strArr);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof k) {
            if (obj == this) {
                return true;
            }
            k kVar = (k) obj;
            boolean z = this.f10777a;
            if (z != kVar.f10777a) {
                return false;
            }
            return !z || (Arrays.equals(this.c, kVar.c) && Arrays.equals(this.d, kVar.d) && this.b == kVar.b);
        }
        return false;
    }

    public int hashCode() {
        if (this.f10777a) {
            return ((((Arrays.hashCode(this.c) + 527) * 31) + Arrays.hashCode(this.d)) * 31) + (!this.b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (this.f10777a) {
            StringBuilder m1004import = Cgoto.m1004import("ConnectionSpec(cipherSuites=", this.c != null ? a().toString() : "[all enabled]", ", tlsVersions=", this.d != null ? d().toString() : "[all enabled]", ", supportsTlsExtensions=");
            m1004import.append(this.b);
            m1004import.append(")");
            return m1004import.toString();
        }
        return "ConnectionSpec()";
    }

    /* compiled from: ConnectionSpec.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f10778a;
        public String[] b;
        public String[] c;
        public boolean d;

        public a(boolean z) {
            this.f10778a = z;
        }

        public a a(h... hVarArr) {
            if (this.f10778a) {
                String[] strArr = new String[hVarArr.length];
                for (int i = 0; i < hVarArr.length; i++) {
                    strArr[i] = hVarArr[i].f10774a;
                }
                return a(strArr);
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a b(String... strArr) {
            if (this.f10778a) {
                if (strArr.length != 0) {
                    this.c = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public a(k kVar) {
            this.f10778a = kVar.f10777a;
            this.b = kVar.c;
            this.c = kVar.d;
            this.d = kVar.b;
        }

        public a a(String... strArr) {
            if (this.f10778a) {
                if (strArr.length != 0) {
                    this.b = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a a(d0... d0VarArr) {
            if (this.f10778a) {
                String[] strArr = new String[d0VarArr.length];
                for (int i = 0; i < d0VarArr.length; i++) {
                    strArr[i] = d0VarArr[i].f10770a;
                }
                return b(strArr);
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public a a(boolean z) {
            if (this.f10778a) {
                this.d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public k a() {
            return new k(this);
        }
    }

    private k b(SSLSocket sSLSocket, boolean z) {
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        if (this.c != null) {
            enabledCipherSuites = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(h.b, sSLSocket.getEnabledCipherSuites(), this.c);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (this.d != null) {
            enabledProtocols = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.o, sSLSocket.getEnabledProtocols(), this.d);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int a2 = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(h.b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z && a2 != -1) {
            enabledCipherSuites = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(enabledCipherSuites, supportedCipherSuites[a2]);
        }
        return new a(this).a(enabledCipherSuites).b(enabledProtocols).a();
    }

    public void a(SSLSocket sSLSocket, boolean z) {
        k b = b(sSLSocket, z);
        String[] strArr = b.d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = b.c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean a(SSLSocket sSLSocket) {
        if (this.f10777a) {
            String[] strArr = this.d;
            if (strArr == null || bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.b(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.o, strArr, sSLSocket.getEnabledProtocols())) {
                String[] strArr2 = this.c;
                return strArr2 == null || bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.b(h.b, strArr2, sSLSocket.getEnabledCipherSuites());
            }
            return false;
        }
        return false;
    }
}
