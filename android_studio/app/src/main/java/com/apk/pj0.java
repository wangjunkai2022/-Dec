package com.apk;

import java.security.KeyStore;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.bouncycastle.jsse.BCSSLParameters;
import org.bouncycastle.jsse.BCSSLSocket;
import org.bouncycastle.jsse.provider.BouncyCastleJsseProvider;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: BouncyCastlePlatform.kt */
/* loaded from: classes7.dex */
public final class pj0 extends uj0 {

    /* renamed from: case  reason: not valid java name */
    public static final Cdo f3674case;

    /* renamed from: try  reason: not valid java name */
    public static final boolean f3675try;

    /* renamed from: new  reason: not valid java name */
    public final Provider f3676new = new BouncyCastleJsseProvider();

    /* compiled from: BouncyCastlePlatform.kt */
    /* renamed from: com.apk.pj0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }
    }

    static {
        Cdo cdo = new Cdo(null);
        f3674case = cdo;
        boolean z = false;
        try {
            Class.forName("org.bouncycastle.jsse.provider.BouncyCastleJsseProvider", false, cdo.getClass().getClassLoader());
            z = true;
        } catch (ClassNotFoundException unused) {
        }
        f3675try = z;
    }

    @Override // com.apk.uj0
    @Nullable
    /* renamed from: case */
    public String mo1882case(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        if (sSLSocket instanceof BCSSLSocket) {
            String applicationProtocol = ((BCSSLSocket) sSLSocket).getApplicationProtocol();
            if (applicationProtocol != null && (applicationProtocol.hashCode() != 0 || !applicationProtocol.equals(""))) {
                return applicationProtocol;
            }
        } else {
            super.mo1882case(sSLSocket);
        }
        return null;
    }

    @Override // com.apk.uj0
    @NotNull
    /* renamed from: class  reason: not valid java name */
    public SSLContext mo2048class() {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f3676new);
        nd0.m1872for(sSLContext, "SSLContext.getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // com.apk.uj0
    @NotNull
    /* renamed from: final  reason: not valid java name */
    public X509TrustManager mo2049final() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("PKIX", "BCJSSE");
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

    @Override // com.apk.uj0
    /* renamed from: new */
    public void mo1885new(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<yg0> list) {
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
        if (sSLSocket instanceof BCSSLSocket) {
            BCSSLSocket bCSSLSocket = (BCSSLSocket) sSLSocket;
            BCSSLParameters parameters = bCSSLSocket.getParameters();
            nd0.m1875new(list, "protocols");
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((yg0) next) != yg0.HTTP_1_0) {
                    arrayList.add(next);
                }
            }
            ArrayList arrayList2 = new ArrayList(sb0.m2420native(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((yg0) it2.next()).f5947do);
            }
            nd0.m1872for(parameters, "sslParameters");
            Object[] array = arrayList2.toArray(new String[0]);
            if (array != null) {
                parameters.setApplicationProtocols((String[]) array);
                bCSSLSocket.setParameters(parameters);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        super.mo1885new(sSLSocket, str, list);
    }
}
