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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.openjsse.javax.net.ssl.SSLParameters;
import org.openjsse.net.ssl.OpenJSSE;

/* compiled from: OpenJSSEPlatform.kt */
/* loaded from: classes7.dex */
public final class tj0 extends uj0 {

    /* renamed from: case  reason: not valid java name */
    public static final Cdo f4726case;

    /* renamed from: try  reason: not valid java name */
    public static final boolean f4727try;

    /* renamed from: new  reason: not valid java name */
    public final Provider f4728new = new OpenJSSE();

    /* compiled from: OpenJSSEPlatform.kt */
    /* renamed from: com.apk.tj0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }
    }

    static {
        Cdo cdo = new Cdo(null);
        f4726case = cdo;
        boolean z = false;
        try {
            Class.forName("org.openjsse.net.ssl.OpenJSSE", false, cdo.getClass().getClassLoader());
            z = true;
        } catch (ClassNotFoundException unused) {
        }
        f4727try = z;
    }

    @Override // com.apk.uj0
    @Nullable
    /* renamed from: case */
    public String mo1882case(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        if (sSLSocket instanceof org.openjsse.javax.net.ssl.SSLSocket) {
            String applicationProtocol = ((org.openjsse.javax.net.ssl.SSLSocket) sSLSocket).getApplicationProtocol();
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
    /* renamed from: class */
    public SSLContext mo2048class() {
        SSLContext sSLContext = SSLContext.getInstance("TLSv1.3", this.f4728new);
        nd0.m1872for(sSLContext, "SSLContext.getInstance(\"TLSv1.3\", provider)");
        return sSLContext;
    }

    @Override // com.apk.uj0
    @NotNull
    /* renamed from: final */
    public X509TrustManager mo2049final() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm(), this.f4728new);
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
        if (sSLSocket instanceof org.openjsse.javax.net.ssl.SSLSocket) {
            org.openjsse.javax.net.ssl.SSLSocket sSLSocket2 = (org.openjsse.javax.net.ssl.SSLSocket) sSLSocket;
            SSLParameters sSLParameters = sSLSocket2.getSSLParameters();
            if (sSLParameters instanceof SSLParameters) {
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
                SSLParameters sSLParameters2 = sSLParameters;
                Object[] array = arrayList2.toArray(new String[0]);
                if (array != null) {
                    sSLParameters2.setApplicationProtocols((String[]) array);
                    sSLSocket2.setSSLParameters(sSLParameters);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            return;
        }
        super.mo1885new(sSLSocket, str, list);
    }
}
