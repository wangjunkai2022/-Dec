package com.apk;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Platform.kt */
/* loaded from: classes7.dex */
public class uj0 {

    /* renamed from: do */
    public static volatile uj0 f4906do;

    /* renamed from: for */
    public static final Cdo f4907for;

    /* renamed from: if */
    public static final Logger f4908if;

    /* compiled from: Platform.kt */
    /* renamed from: com.apk.uj0$do */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        @NotNull
        /* renamed from: do */
        public final List<String> m2707do(@NotNull List<? extends yg0> list) {
            nd0.m1875new(list, "protocols");
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((yg0) obj) != yg0.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(sb0.m2420native(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((yg0) it.next()).f5947do);
            }
            return arrayList2;
        }

        /* renamed from: for */
        public final boolean m2708for() {
            return nd0.m1870do("Dalvik", System.getProperty("java.vm.name"));
        }

        @NotNull
        /* renamed from: if */
        public final byte[] m2709if(@NotNull List<? extends yg0> list) {
            nd0.m1875new(list, "protocols");
            rk0 rk0Var = new rk0();
            Iterator it = ((ArrayList) m2707do(list)).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                rk0Var.m2299synchronized(str.length());
                rk0Var.j(str);
            }
            return rk0Var.mo850case();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x00ac, code lost:
        if (r0 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x00d2, code lost:
        if (r0 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x00f8, code lost:
        if (r0 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0120, code lost:
        if (java.lang.Integer.parseInt(r0) >= 9) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0189  */
    static {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.uj0.<clinit>():void");
    }

    /* renamed from: break */
    public static /* synthetic */ void m2705break(uj0 uj0Var, String str, int i, Throwable th, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 4;
        }
        int i3 = i2 & 4;
        uj0Var.m2706this(str, i, null);
    }

    @Nullable
    /* renamed from: case */
    public String mo1882case(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        return null;
    }

    /* renamed from: catch */
    public void mo1963catch(@NotNull String str, @Nullable Object obj) {
        nd0.m1875new(str, "message");
        if (obj == null) {
            str = Cgoto.m989case(str, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        m2706this(str, 5, (Throwable) obj);
    }

    @NotNull
    /* renamed from: class */
    public SSLContext mo2048class() {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        nd0.m1872for(sSLContext, "SSLContext.getInstance(\"TLS\")");
        return sSLContext;
    }

    @NotNull
    /* renamed from: const */
    public SSLSocketFactory mo2142const(@NotNull X509TrustManager x509TrustManager) {
        nd0.m1875new(x509TrustManager, "trustManager");
        try {
            SSLContext mo2048class = mo2048class();
            mo2048class.init(null, new TrustManager[]{x509TrustManager}, null);
            SSLSocketFactory socketFactory = mo2048class.getSocketFactory();
            nd0.m1872for(socketFactory, "newSSLContext().apply {\n…ll)\n      }.socketFactory");
            return socketFactory;
        } catch (GeneralSecurityException e) {
            throw new AssertionError("No System TLS: " + e, e);
        }
    }

    /* renamed from: do */
    public void mo2279do(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
    }

    @Nullable
    /* renamed from: else */
    public Object mo1964else(@NotNull String str) {
        nd0.m1875new(str, "closer");
        if (f4908if.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    @NotNull
    /* renamed from: final */
    public X509TrustManager mo2049final() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        nd0.m1872for(trustManagerFactory, "factory");
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        nd0.m1874if(trustManagers);
        boolean z = true;
        if ((trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) ? false : false) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager != null) {
                return (X509TrustManager) trustManager;
            }
            throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
        }
        StringBuilder m1016super = Cgoto.m1016super("Unexpected default trust managers: ");
        String arrays = Arrays.toString(trustManagers);
        nd0.m1872for(arrays, "java.util.Arrays.toString(this)");
        m1016super.append(arrays);
        throw new IllegalStateException(m1016super.toString().toString());
    }

    @NotNull
    /* renamed from: for */
    public mk0 mo1965for(@NotNull X509TrustManager x509TrustManager) {
        nd0.m1875new(x509TrustManager, "trustManager");
        X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        nd0.m1872for(acceptedIssuers, "trustManager.acceptedIssuers");
        return new jk0((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    /* renamed from: goto */
    public boolean mo1883goto(@NotNull String str) {
        nd0.m1875new(str, "hostname");
        return true;
    }

    @NotNull
    /* renamed from: if */
    public kk0 mo1884if(@NotNull X509TrustManager x509TrustManager) {
        nd0.m1875new(x509TrustManager, "trustManager");
        return new ik0(mo1965for(x509TrustManager));
    }

    /* renamed from: new */
    public void mo1885new(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<yg0> list) {
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
    }

    /* renamed from: this */
    public void m2706this(@NotNull String str, int i, @Nullable Throwable th) {
        nd0.m1875new(str, "message");
        f4908if.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    @NotNull
    public String toString() {
        String simpleName = getClass().getSimpleName();
        nd0.m1872for(simpleName, "javaClass.simpleName");
        return simpleName;
    }

    /* renamed from: try */
    public void mo1966try(@NotNull Socket socket, @NotNull InetSocketAddress inetSocketAddress, int i) throws IOException {
        nd0.m1875new(socket, "socket");
        nd0.m1875new(inetSocketAddress, "address");
        socket.connect(inetSocketAddress, i);
    }
}
