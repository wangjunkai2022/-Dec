package com.apk;

import android.annotation.SuppressLint;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import com.apk.ak0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import okhttp3.internal.SuppressSignatureCheck;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Android10Platform.kt */
@SuppressSignatureCheck
/* loaded from: classes7.dex */
public final class nj0 extends uj0 {

    /* renamed from: case  reason: not valid java name */
    public static final nj0 f3243case = null;

    /* renamed from: try  reason: not valid java name */
    public static final boolean f3244try;

    /* renamed from: new  reason: not valid java name */
    public final List<fk0> f3245new;

    static {
        f3244try = uj0.f4907for.m2708for() && Build.VERSION.SDK_INT >= 29;
    }

    public nj0() {
        fk0[] fk0VarArr = new fk0[4];
        fk0VarArr[0] = nd0.m1870do("Dalvik", System.getProperty("java.vm.name")) && Build.VERSION.SDK_INT >= 29 ? new vj0() : null;
        ak0.Cdo cdo = ak0.f108else;
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
        this.f3245new = arrayList;
    }

    @Override // com.apk.uj0
    @Nullable
    /* renamed from: case  reason: not valid java name */
    public String mo1882case(@NotNull SSLSocket sSLSocket) {
        Object obj;
        nd0.m1875new(sSLSocket, "sslSocket");
        Iterator<T> it = this.f3245new.iterator();
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
    @SuppressLint({"NewApi"})
    /* renamed from: goto  reason: not valid java name */
    public boolean mo1883goto(@NotNull String str) {
        nd0.m1875new(str, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }

    @Override // com.apk.uj0
    @NotNull
    /* renamed from: if  reason: not valid java name */
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
    /* renamed from: new  reason: not valid java name */
    public void mo1885new(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends yg0> list) {
        Object obj;
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
        Iterator<T> it = this.f3245new.iterator();
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
}
