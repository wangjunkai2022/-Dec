package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.uj0;
import com.apk.xi0;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import org.jetbrains.annotations.NotNull;
/* compiled from: RealConnection.kt */
/* loaded from: classes7.dex */
public final class bi0 extends xi0.Cfor implements fg0 {

    /* renamed from: break  reason: not valid java name */
    public boolean f323break;

    /* renamed from: case  reason: not valid java name */
    public xi0 f324case;

    /* renamed from: catch  reason: not valid java name */
    public int f325catch;

    /* renamed from: class  reason: not valid java name */
    public int f326class;

    /* renamed from: const  reason: not valid java name */
    public int f327const;

    /* renamed from: else  reason: not valid java name */
    public tk0 f328else;

    /* renamed from: final  reason: not valid java name */
    public int f329final;

    /* renamed from: for  reason: not valid java name */
    public Socket f330for;

    /* renamed from: goto  reason: not valid java name */
    public sk0 f331goto;

    /* renamed from: if  reason: not valid java name */
    public Socket f332if;

    /* renamed from: new  reason: not valid java name */
    public rg0 f333new;
    @NotNull

    /* renamed from: super  reason: not valid java name */
    public final List<Reference<xh0>> f334super;

    /* renamed from: this  reason: not valid java name */
    public boolean f335this;

    /* renamed from: throw  reason: not valid java name */
    public long f336throw;

    /* renamed from: try  reason: not valid java name */
    public yg0 f337try;

    /* renamed from: while  reason: not valid java name */
    public final fh0 f338while;

    public bi0(@NotNull ci0 ci0Var, @NotNull fh0 fh0Var) {
        nd0.m1875new(ci0Var, "connectionPool");
        nd0.m1875new(fh0Var, "route");
        this.f338while = fh0Var;
        this.f329final = 1;
        this.f334super = new ArrayList();
        this.f336throw = RecyclerView.FOREVER_NS;
    }

    /* renamed from: break  reason: not valid java name */
    public final boolean m179break(boolean z) {
        long j;
        if (jh0.f2333goto && Thread.holdsLock(this)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST NOT hold lock on ");
            m1016super.append(this);
            throw new AssertionError(m1016super.toString());
        }
        long nanoTime = System.nanoTime();
        Socket socket = this.f332if;
        nd0.m1874if(socket);
        Socket socket2 = this.f330for;
        nd0.m1874if(socket2);
        tk0 tk0Var = this.f328else;
        nd0.m1874if(tk0Var);
        boolean z2 = false;
        if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
            return false;
        }
        xi0 xi0Var = this.f324case;
        if (xi0Var != null) {
            synchronized (xi0Var) {
                if (xi0Var.f5638else) {
                    return false;
                }
                if (xi0Var.f5655throw < xi0Var.f5652super) {
                    if (nanoTime >= xi0Var.f5645import) {
                        return false;
                    }
                }
                return true;
            }
        }
        synchronized (this) {
            j = nanoTime - this.f336throw;
        }
        if (j < 10000000000L || !z) {
            return true;
        }
        nd0.m1875new(socket2, "$this$isHealthy");
        nd0.m1875new(tk0Var, "source");
        try {
            int soTimeout = socket2.getSoTimeout();
            socket2.setSoTimeout(1);
            boolean z3 = !tk0Var.mo853else();
            socket2.setSoTimeout(soTimeout);
            z2 = z3;
            return z2;
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return z2;
        }
    }

    /* renamed from: case  reason: not valid java name */
    public final void m180case(int i, int i2, zf0 zf0Var, og0 og0Var) throws IOException {
        Socket socket;
        int i3;
        fh0 fh0Var = this.f338while;
        Proxy proxy = fh0Var.f1294if;
        uf0 uf0Var = fh0Var.f1292do;
        Proxy.Type type = proxy.type();
        if (type == null || ((i3 = yh0.f5949do[type.ordinal()]) != 1 && i3 != 2)) {
            socket = new Socket(proxy);
        } else {
            socket = uf0Var.f4887try.createSocket();
            nd0.m1874if(socket);
        }
        this.f332if = socket;
        InetSocketAddress inetSocketAddress = this.f338while.f1293for;
        if (og0Var != null) {
            nd0.m1875new(zf0Var, NotificationCompat.CATEGORY_CALL);
            nd0.m1875new(inetSocketAddress, "inetSocketAddress");
            nd0.m1875new(proxy, "proxy");
            socket.setSoTimeout(i2);
            try {
                uj0.Cdo cdo = uj0.f4907for;
                uj0.f4906do.mo1966try(socket, this.f338while.f1293for, i);
                try {
                    this.f328else = sb0.m2404class(bl0.m209try(socket));
                    this.f331goto = sb0.m2403catch(bl0.m207if(socket));
                    return;
                } catch (NullPointerException e) {
                    if (nd0.m1870do(e.getMessage(), "throw with null exception")) {
                        throw new IOException(e);
                    }
                    return;
                }
            } catch (ConnectException e2) {
                StringBuilder m1016super = Cgoto.m1016super("Failed to connect to ");
                m1016super.append(this.f338while.f1293for);
                ConnectException connectException = new ConnectException(m1016super.toString());
                connectException.initCause(e2);
                throw connectException;
            }
        }
        throw null;
    }

    /* renamed from: catch  reason: not valid java name */
    public final boolean m181catch() {
        return this.f324case != null;
    }

    @NotNull
    /* renamed from: class  reason: not valid java name */
    public final ji0 m182class(@NotNull xg0 xg0Var, @NotNull mi0 mi0Var) throws SocketException {
        nd0.m1875new(xg0Var, "client");
        nd0.m1875new(mi0Var, "chain");
        Socket socket = this.f330for;
        nd0.m1874if(socket);
        tk0 tk0Var = this.f328else;
        nd0.m1874if(tk0Var);
        sk0 sk0Var = this.f331goto;
        nd0.m1874if(sk0Var);
        xi0 xi0Var = this.f324case;
        if (xi0Var != null) {
            return new ej0(xg0Var, this, mi0Var, xi0Var);
        }
        socket.setSoTimeout(mi0Var.f3057goto);
        tk0Var.mo71if().mo1730else(mi0Var.f3057goto, TimeUnit.MILLISECONDS);
        sk0Var.mo478if().mo1730else(mi0Var.f3060this, TimeUnit.MILLISECONDS);
        return new ri0(xg0Var, this, tk0Var, sk0Var);
    }

    /* renamed from: const  reason: not valid java name */
    public final synchronized void m183const() {
        this.f335this = true;
    }

    @Override // com.apk.fg0
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public yg0 mo184do() {
        yg0 yg0Var = this.f337try;
        nd0.m1874if(yg0Var);
        return yg0Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0167, code lost:
        if (r3 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0169, code lost:
        r1 = r18.f332if;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x016b, code lost:
        if (r1 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x016d, code lost:
        com.apk.jh0.m1323else(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0170, code lost:
        r5 = null;
        r18.f332if = null;
        r18.f331goto = null;
        r18.f328else = null;
        r1 = r18.f338while;
        r6 = r1.f1293for;
        r1 = r1.f1294if;
        com.apk.nd0.m1875new(r22, androidx.core.app.NotificationCompat.CATEGORY_CALL);
        com.apk.nd0.m1875new(r6, "inetSocketAddress");
        com.apk.nd0.m1875new(r1, "proxy");
        r7 = r7 + 1;
        r6 = true;
        r1 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:?, code lost:
        return;
     */
    /* renamed from: else  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m185else(int r19, int r20, int r21, com.apk.zf0 r22, com.apk.og0 r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.bi0.m185else(int, int, int, com.apk.zf0, com.apk.og0):void");
    }

    /* renamed from: final  reason: not valid java name */
    public final void m186final(int i) throws IOException {
        String m989case;
        int m1636do;
        Socket socket = this.f330for;
        nd0.m1874if(socket);
        tk0 tk0Var = this.f328else;
        nd0.m1874if(tk0Var);
        sk0 sk0Var = this.f331goto;
        nd0.m1874if(sk0Var);
        socket.setSoTimeout(0);
        xi0.Cif cif = new xi0.Cif(true, sh0.f4355goto);
        String str = this.f338while.f1292do.f4880do.f4689try;
        nd0.m1875new(socket, "socket");
        nd0.m1875new(str, "peerName");
        nd0.m1875new(tk0Var, "source");
        nd0.m1875new(sk0Var, "sink");
        cif.f5666do = socket;
        if (cif.f5669goto) {
            m989case = jh0.f2336this + ' ' + str;
        } else {
            m989case = Cgoto.m989case("MockWebServer ", str);
        }
        cif.f5670if = m989case;
        cif.f5668for = tk0Var;
        cif.f5671new = sk0Var;
        nd0.m1875new(this, "listener");
        cif.f5673try = this;
        cif.f5667else = i;
        xi0 xi0Var = new xi0(cif);
        this.f324case = xi0Var;
        xi0 xi0Var2 = xi0.f5629abstract;
        lj0 lj0Var = xi0.f5630private;
        this.f329final = (lj0Var.f2823do & 16) != 0 ? lj0Var.f2824if[4] : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        sh0 sh0Var = sh0.f4355goto;
        nd0.m1875new(sh0Var, "taskRunner");
        hj0 hj0Var = xi0Var.f5639extends;
        synchronized (hj0Var) {
            if (!hj0Var.f1870for) {
                if (hj0Var.f1868case) {
                    if (hj0.f1867else.isLoggable(Level.FINE)) {
                        hj0.f1867else.fine(jh0.m1318class(">> CONNECTION " + wi0.f5308do.mo1242new(), new Object[0]));
                    }
                    hj0Var.f1873try.mo644while(wi0.f5308do);
                    hj0Var.f1873try.flush();
                }
            } else {
                throw new IOException("closed");
            }
        }
        hj0 hj0Var2 = xi0Var.f5639extends;
        lj0 lj0Var2 = xi0Var.f5646native;
        synchronized (hj0Var2) {
            nd0.m1875new(lj0Var2, "settings");
            if (!hj0Var2.f1870for) {
                hj0Var2.m1127break(0, Integer.bitCount(lj0Var2.f2823do) * 6, 4, 0);
                int i2 = 0;
                while (i2 < 10) {
                    if (((1 << i2) & lj0Var2.f2823do) != 0) {
                        hj0Var2.f1873try.writeShort(i2 != 4 ? i2 != 7 ? i2 : 4 : 3);
                        hj0Var2.f1873try.writeInt(lj0Var2.f2824if[i2]);
                    }
                    i2++;
                }
                hj0Var2.f1873try.flush();
            } else {
                throw new IOException("closed");
            }
        }
        if (xi0Var.f5646native.m1636do() != 65535) {
            xi0Var.f5639extends.m1130finally(0, m1636do - 65535);
        }
        rh0 m2468case = sh0Var.m2468case();
        String str2 = xi0Var.f5647new;
        m2468case.m2271for(new qh0(xi0Var.f5641finally, str2, true, str2, true), 0L);
    }

    @Override // com.apk.xi0.Cfor
    /* renamed from: for  reason: not valid java name */
    public void mo187for(@NotNull gj0 gj0Var) throws IOException {
        nd0.m1875new(gj0Var, "stream");
        gj0Var.m966for(ti0.REFUSED_STREAM, null);
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m188goto(uh0 uh0Var, int i, zf0 zf0Var, og0 og0Var) throws IOException {
        yg0 yg0Var = yg0.H2_PRIOR_KNOWLEDGE;
        yg0 yg0Var2 = yg0.HTTP_1_1;
        uf0 uf0Var = this.f338while.f1292do;
        if (uf0Var.f4878case == null) {
            if (uf0Var.f4884if.contains(yg0Var)) {
                this.f330for = this.f332if;
                this.f337try = yg0Var;
                m186final(i);
                return;
            }
            this.f330for = this.f332if;
            this.f337try = yg0Var2;
            return;
        }
        SSLSocket sSLSocket = null;
        String str = null;
        nd0.m1875new(zf0Var, NotificationCompat.CATEGORY_CALL);
        uf0 uf0Var2 = this.f338while.f1292do;
        SSLSocketFactory sSLSocketFactory = uf0Var2.f4878case;
        try {
            nd0.m1874if(sSLSocketFactory);
            Socket createSocket = sSLSocketFactory.createSocket(this.f332if, uf0Var2.f4880do.f4689try, uf0Var2.f4880do.f4681case, true);
            if (createSocket != null) {
                SSLSocket sSLSocket2 = (SSLSocket) createSocket;
                try {
                    hg0 m2703do = uh0Var.m2703do(sSLSocket2);
                    if (m2703do.f1859if) {
                        uj0.Cdo cdo = uj0.f4907for;
                        uj0.f4906do.mo1885new(sSLSocket2, uf0Var2.f4880do.f4689try, uf0Var2.f4884if);
                    }
                    sSLSocket2.startHandshake();
                    SSLSession session = sSLSocket2.getSession();
                    nd0.m1872for(session, "sslSocketSession");
                    rg0 m2263do = rg0.m2263do(session);
                    HostnameVerifier hostnameVerifier = uf0Var2.f4881else;
                    nd0.m1874if(hostnameVerifier);
                    if (!hostnameVerifier.verify(uf0Var2.f4880do.f4689try, session)) {
                        List<Certificate> m2264for = m2263do.m2264for();
                        if (!m2264for.isEmpty()) {
                            Certificate certificate = m2264for.get(0);
                            if (certificate == null) {
                                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
                            }
                            X509Certificate x509Certificate = (X509Certificate) certificate;
                            StringBuilder sb = new StringBuilder();
                            sb.append("\n              |Hostname ");
                            sb.append(uf0Var2.f4880do.f4689try);
                            sb.append(" not verified:\n              |    certificate: ");
                            sb.append(bg0.f310new.m174do(x509Certificate));
                            sb.append("\n              |    DN: ");
                            Principal subjectDN = x509Certificate.getSubjectDN();
                            nd0.m1872for(subjectDN, "cert.subjectDN");
                            sb.append(subjectDN.getName());
                            sb.append("\n              |    subjectAltNames: ");
                            lk0 lk0Var = lk0.f2826do;
                            nd0.m1875new(x509Certificate, "certificate");
                            sb.append(uc0.m2695else(lk0Var.m1641if(x509Certificate, 7), lk0Var.m1641if(x509Certificate, 2)));
                            sb.append("\n              ");
                            throw new SSLPeerUnverifiedException(ie0.m1194default(sb.toString(), null, 1));
                        }
                        throw new SSLPeerUnverifiedException("Hostname " + uf0Var2.f4880do.f4689try + " not verified (no certificates)");
                    }
                    bg0 bg0Var = uf0Var2.f4883goto;
                    nd0.m1874if(bg0Var);
                    this.f333new = new rg0(m2263do.f4048if, m2263do.f4047for, m2263do.f4049new, new zh0(bg0Var, m2263do, uf0Var2));
                    bg0Var.m172do(uf0Var2.f4880do.f4689try, new ai0(this));
                    if (m2703do.f1859if) {
                        uj0.Cdo cdo2 = uj0.f4907for;
                        str = uj0.f4906do.mo1882case(sSLSocket2);
                    }
                    this.f330for = sSLSocket2;
                    this.f328else = sb0.m2404class(bl0.m209try(sSLSocket2));
                    this.f331goto = sb0.m2403catch(bl0.m207if(sSLSocket2));
                    if (str != null) {
                        yg0Var2 = yg0.f5945this.m3067do(str);
                    }
                    this.f337try = yg0Var2;
                    uj0.Cdo cdo3 = uj0.f4907for;
                    uj0.f4906do.mo2279do(sSLSocket2);
                    nd0.m1875new(zf0Var, NotificationCompat.CATEGORY_CALL);
                    if (this.f337try == yg0.HTTP_2) {
                        m186final(i);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    th = th;
                    sSLSocket = sSLSocket2;
                    if (sSLSocket != null) {
                        uj0.Cdo cdo4 = uj0.f4907for;
                        uj0.f4906do.mo2279do(sSLSocket);
                    }
                    if (sSLSocket != null) {
                        jh0.m1323else(sSLSocket);
                    }
                    throw th;
                }
            }
            throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.SSLSocket");
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.apk.xi0.Cfor
    /* renamed from: if  reason: not valid java name */
    public synchronized void mo189if(@NotNull xi0 xi0Var, @NotNull lj0 lj0Var) {
        nd0.m1875new(xi0Var, "connection");
        nd0.m1875new(lj0Var, "settings");
        this.f329final = (lj0Var.f2823do & 16) != 0 ? lj0Var.f2824if[4] : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x015e A[EDGE_INSN: B:95:0x015e->B:81:0x015e ?: BREAK  , SYNTHETIC] */
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m190new(int r17, int r18, int r19, int r20, boolean r21, @org.jetbrains.annotations.NotNull com.apk.zf0 r22, @org.jetbrains.annotations.NotNull com.apk.og0 r23) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.bi0.m190new(int, int, int, int, boolean, com.apk.zf0, com.apk.og0):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0135, code lost:
        if (r10 == false) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x013c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: this  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m191this(@org.jetbrains.annotations.NotNull com.apk.uf0 r9, @org.jetbrains.annotations.Nullable java.util.List<com.apk.fh0> r10) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.bi0.m191this(com.apk.uf0, java.util.List):boolean");
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Connection{");
        m1016super.append(this.f338while.f1292do.f4880do.f4689try);
        m1016super.append(':');
        m1016super.append(this.f338while.f1292do.f4880do.f4681case);
        m1016super.append(',');
        m1016super.append(" proxy=");
        m1016super.append(this.f338while.f1294if);
        m1016super.append(" hostAddress=");
        m1016super.append(this.f338while.f1293for);
        m1016super.append(" cipherSuite=");
        rg0 rg0Var = this.f333new;
        m1016super.append((rg0Var == null || (r1 = rg0Var.f4047for) == null) ? "none" : "none");
        m1016super.append(" protocol=");
        m1016super.append(this.f337try);
        m1016super.append('}');
        return m1016super.toString();
    }

    /* renamed from: try  reason: not valid java name */
    public final void m192try(@NotNull xg0 xg0Var, @NotNull fh0 fh0Var, @NotNull IOException iOException) {
        nd0.m1875new(xg0Var, "client");
        nd0.m1875new(fh0Var, "failedRoute");
        nd0.m1875new(iOException, "failure");
        if (fh0Var.f1294if.type() != Proxy.Type.DIRECT) {
            uf0 uf0Var = fh0Var.f1292do;
            uf0Var.f4879catch.connectFailed(uf0Var.f4880do.m2591else(), fh0Var.f1294if.address(), iOException);
        }
        di0 di0Var = xg0Var.f5562private;
        synchronized (di0Var) {
            nd0.m1875new(fh0Var, "failedRoute");
            di0Var.f908do.add(fh0Var);
        }
    }
}
