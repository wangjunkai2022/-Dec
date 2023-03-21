package com.apk;

import java.security.KeyStore;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.conscrypt.Conscrypt;
import org.conscrypt.ConscryptHostnameVerifier;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConscryptPlatform.kt */
/* loaded from: classes7.dex */
public final class qj0 extends uj0 {

    /* renamed from: case  reason: not valid java name */
    public static final Cdo f3880case;

    /* renamed from: try  reason: not valid java name */
    public static final boolean f3881try;

    /* renamed from: new  reason: not valid java name */
    public final Provider f3882new;

    /* compiled from: ConscryptPlatform.kt */
    /* renamed from: com.apk.qj0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        /* renamed from: do  reason: not valid java name */
        public final boolean m2143do(int i, int i2, int i3) {
            Conscrypt.Version version = Conscrypt.version();
            return version.major() != i ? version.major() > i : version.minor() != i2 ? version.minor() > i2 : version.patch() >= i3;
        }
    }

    /* compiled from: ConscryptPlatform.kt */
    /* renamed from: com.apk.qj0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif implements ConscryptHostnameVerifier {

        /* renamed from: do  reason: not valid java name */
        public static final Cif f3883do = new Cif();
    }

    static {
        Cdo cdo = new Cdo(null);
        f3880case = cdo;
        boolean z = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version", false, cdo.getClass().getClassLoader());
            if (Conscrypt.isAvailable()) {
                if (f3880case.m2143do(2, 1, 0)) {
                    z = true;
                }
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        f3881try = z;
    }

    public qj0() {
        Provider newProvider = Conscrypt.newProvider();
        nd0.m1872for(newProvider, "Conscrypt.newProvider()");
        this.f3882new = newProvider;
    }

    @Override // com.apk.uj0
    @Nullable
    /* renamed from: case */
    public String mo1882case(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        super.mo1882case(sSLSocket);
        return null;
    }

    @Override // com.apk.uj0
    @NotNull
    /* renamed from: class */
    public SSLContext mo2048class() {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f3882new);
        nd0.m1872for(sSLContext, "SSLContext.getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // com.apk.uj0
    @NotNull
    /* renamed from: const  reason: not valid java name */
    public SSLSocketFactory mo2142const(@NotNull X509TrustManager x509TrustManager) {
        nd0.m1875new(x509TrustManager, "trustManager");
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f3882new);
        nd0.m1872for(sSLContext, "SSLContext.getInstance(\"TLS\", provider)");
        sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
        SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
        nd0.m1872for(socketFactory, "newSSLContext().apply {\n…null)\n    }.socketFactory");
        return socketFactory;
    }

    @Override // com.apk.uj0
    @NotNull
    /* renamed from: final */
    public X509TrustManager mo2049final() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        nd0.m1872for(trustManagerFactory, "TrustManagerFactory.getI…(null as KeyStore?)\n    }");
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        nd0.m1874if(trustManagers);
        boolean z = true;
        if ((trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) ? false : false) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager != null) {
                X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                Conscrypt.setHostnameVerifier(x509TrustManager, Cif.f3883do);
                return x509TrustManager;
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
        if (Conscrypt.isConscrypt(sSLSocket)) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
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
            Object[] array = arrayList2.toArray(new String[0]);
            if (array != null) {
                Conscrypt.setApplicationProtocols(sSLSocket, (String[]) array);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        super.mo1885new(sSLSocket, str, list);
    }
}
