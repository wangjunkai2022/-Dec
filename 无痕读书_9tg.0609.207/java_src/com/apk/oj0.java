package com.apk;

import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import com.apk.ak0;
import com.apk.gk0;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import okhttp3.internal.SuppressSignatureCheck;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidPlatform.kt */
@SuppressSignatureCheck
/* loaded from: classes7.dex */
public final class oj0 extends uj0 {

    /* renamed from: case  reason: not valid java name */
    public static final boolean f3441case;

    /* renamed from: else  reason: not valid java name */
    public static final Cdo f3442else = new Cdo(null);

    /* renamed from: new  reason: not valid java name */
    public final List<fk0> f3443new;

    /* renamed from: try  reason: not valid java name */
    public final ck0 f3444try;

    /* compiled from: AndroidPlatform.kt */
    /* renamed from: com.apk.oj0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }
    }

    /* compiled from: AndroidPlatform.kt */
    /* renamed from: com.apk.oj0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif implements mk0 {

        /* renamed from: do  reason: not valid java name */
        public final X509TrustManager f3445do;

        /* renamed from: if  reason: not valid java name */
        public final Method f3446if;

        public Cif(@NotNull X509TrustManager x509TrustManager, @NotNull Method method) {
            nd0.m1875new(x509TrustManager, "trustManager");
            nd0.m1875new(method, "findByIssuerAndSignatureMethod");
            this.f3445do = x509TrustManager;
            this.f3446if = method;
        }

        @Override // com.apk.mk0
        @Nullable
        /* renamed from: do */
        public X509Certificate mo1355do(@NotNull X509Certificate x509Certificate) {
            nd0.m1875new(x509Certificate, "cert");
            try {
                Object invoke = this.f3446if.invoke(this.f3445do, x509Certificate);
                if (invoke != null) {
                    return ((TrustAnchor) invoke).getTrustedCert();
                }
                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.TrustAnchor");
            } catch (IllegalAccessException e) {
                throw new AssertionError("unable to get issues and signature", e);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this != obj) {
                if (obj instanceof Cif) {
                    Cif cif = (Cif) obj;
                    return nd0.m1870do(this.f3445do, cif.f3445do) && nd0.m1870do(this.f3446if, cif.f3446if);
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            X509TrustManager x509TrustManager = this.f3445do;
            int hashCode = (x509TrustManager != null ? x509TrustManager.hashCode() : 0) * 31;
            Method method = this.f3446if;
            return hashCode + (method != null ? method.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            StringBuilder m1016super = Cgoto.m1016super("CustomTrustRootIndex(trustManager=");
            m1016super.append(this.f3445do);
            m1016super.append(", findByIssuerAndSignatureMethod=");
            m1016super.append(this.f3446if);
            m1016super.append(")");
            return m1016super.toString();
        }
    }

    static {
        boolean z = true;
        if (!uj0.f4907for.m2708for() || Build.VERSION.SDK_INT >= 30) {
            z = false;
        } else if (1 == 0) {
            StringBuilder m1016super = Cgoto.m1016super("Expected Android API level 21+ but was ");
            m1016super.append(Build.VERSION.SDK_INT);
            throw new IllegalStateException(m1016super.toString().toString());
        }
        f3441case = z;
    }

    public oj0() {
        gk0 gk0Var;
        Method method;
        Method method2;
        fk0[] fk0VarArr = new fk0[4];
        gk0.Cdo cdo = gk0.f1601goto;
        nd0.m1875new("com.android.org.conscrypt", "packageName");
        Method method3 = null;
        try {
            Class<?> cls = Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
            Class<?> cls2 = Class.forName("com.android.org.conscrypt.OpenSSLSocketFactoryImpl");
            Class<?> cls3 = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            nd0.m1872for(cls3, "paramsClass");
            gk0Var = new gk0(cls, cls2, cls3);
        } catch (Exception e) {
            uj0.f4906do.m2706this("unable to load android socket classes", 5, e);
            gk0Var = null;
        }
        fk0VarArr[0] = gk0Var;
        ak0.Cdo cdo2 = ak0.f108else;
        fk0VarArr[1] = new ek0(ak0.f107case);
        fk0VarArr[2] = new ek0(dk0.f918do);
        fk0VarArr[3] = new ek0(bk0.f348do);
        List m2428strictfp = sb0.m2428strictfp(fk0VarArr);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) m2428strictfp).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((fk0) next).isSupported()) {
                arrayList.add(next);
            }
        }
        this.f3443new = arrayList;
        try {
            Class<?> cls4 = Class.forName("dalvik.system.CloseGuard");
            Method method4 = cls4.getMethod("get", new Class[0]);
            method2 = cls4.getMethod("open", String.class);
            method = cls4.getMethod("warnIfOpen", new Class[0]);
            method3 = method4;
        } catch (Exception unused) {
            method = null;
            method2 = null;
        }
        this.f3444try = new ck0(method3, method2, method);
    }

    @Override // com.apk.uj0
    @Nullable
    /* renamed from: case */
    public String mo1882case(@NotNull SSLSocket sSLSocket) {
        Object obj;
        nd0.m1875new(sSLSocket, "sslSocket");
        Iterator<T> it = this.f3443new.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((fk0) obj).mo62do(sSLSocket)) {
                break;
            }
        }
        fk0 fk0Var = (fk0) obj;
        if (fk0Var != null) {
            return fk0Var.mo64if(sSLSocket);
        }
        return null;
    }

    @Override // com.apk.uj0
    /* renamed from: catch  reason: not valid java name */
    public void mo1963catch(@NotNull String str, @Nullable Object obj) {
        nd0.m1875new(str, "message");
        ck0 ck0Var = this.f3444try;
        if (ck0Var == null) {
            throw null;
        }
        boolean z = false;
        if (obj != null) {
            try {
                Method method = ck0Var.f647for;
                nd0.m1874if(method);
                method.invoke(obj, new Object[0]);
                z = true;
            } catch (Exception unused) {
            }
        }
        if (z) {
            return;
        }
        uj0.m2705break(this, str, 5, null, 4, null);
    }

    @Override // com.apk.uj0
    @Nullable
    /* renamed from: else  reason: not valid java name */
    public Object mo1964else(@NotNull String str) {
        nd0.m1875new(str, "closer");
        ck0 ck0Var = this.f3444try;
        if (ck0Var != null) {
            nd0.m1875new(str, "closer");
            Method method = ck0Var.f646do;
            if (method != null) {
                try {
                    Object invoke = method.invoke(null, new Object[0]);
                    Method method2 = ck0Var.f648if;
                    nd0.m1874if(method2);
                    method2.invoke(invoke, str);
                    return invoke;
                } catch (Exception unused) {
                    return null;
                }
            }
            return null;
        }
        throw null;
    }

    @Override // com.apk.uj0
    @NotNull
    /* renamed from: for  reason: not valid java name */
    public mk0 mo1965for(@NotNull X509TrustManager x509TrustManager) {
        nd0.m1875new(x509TrustManager, "trustManager");
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            nd0.m1872for(declaredMethod, "method");
            declaredMethod.setAccessible(true);
            return new Cif(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.mo1965for(x509TrustManager);
        }
    }

    @Override // com.apk.uj0
    /* renamed from: goto */
    public boolean mo1883goto(@NotNull String str) {
        nd0.m1875new(str, "hostname");
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
        }
        if (i >= 23) {
            NetworkSecurityPolicy networkSecurityPolicy = NetworkSecurityPolicy.getInstance();
            nd0.m1872for(networkSecurityPolicy, "NetworkSecurityPolicy.getInstance()");
            return networkSecurityPolicy.isCleartextTrafficPermitted();
        }
        return true;
    }

    @Override // com.apk.uj0
    @NotNull
    /* renamed from: if */
    public kk0 mo1884if(@NotNull X509TrustManager x509TrustManager) {
        X509TrustManagerExtensions x509TrustManagerExtensions;
        nd0.m1875new(x509TrustManager, "trustManager");
        nd0.m1875new(x509TrustManager, "trustManager");
        try {
            x509TrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
        } catch (IllegalArgumentException unused) {
            x509TrustManagerExtensions = null;
        }
        wj0 wj0Var = x509TrustManagerExtensions != null ? new wj0(x509TrustManager, x509TrustManagerExtensions) : null;
        return wj0Var != null ? wj0Var : super.mo1884if(x509TrustManager);
    }

    @Override // com.apk.uj0
    /* renamed from: new */
    public void mo1885new(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<yg0> list) {
        Object obj;
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
        Iterator<T> it = this.f3443new.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((fk0) obj).mo62do(sSLSocket)) {
                break;
            }
        }
        fk0 fk0Var = (fk0) obj;
        if (fk0Var != null) {
            fk0Var.mo63for(sSLSocket, str, list);
        }
    }

    @Override // com.apk.uj0
    /* renamed from: try  reason: not valid java name */
    public void mo1966try(@NotNull Socket socket, @NotNull InetSocketAddress inetSocketAddress, int i) throws IOException {
        nd0.m1875new(socket, "socket");
        nd0.m1875new(inetSocketAddress, "address");
        try {
            socket.connect(inetSocketAddress, i);
        } catch (ClassCastException e) {
            if (Build.VERSION.SDK_INT == 26) {
                throw new IOException("Exception in connect", e);
            }
            throw e;
        }
    }
}
