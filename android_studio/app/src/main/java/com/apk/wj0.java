package com.apk;

import android.net.http.X509TrustManagerExtensions;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;
import okhttp3.internal.SuppressSignatureCheck;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: AndroidCertificateChainCleaner.kt */
/* loaded from: classes7.dex */
public final class wj0 extends kk0 {

    /* renamed from: do  reason: not valid java name */
    public final X509TrustManager f5316do;

    /* renamed from: if  reason: not valid java name */
    public final X509TrustManagerExtensions f5317if;

    public wj0(@NotNull X509TrustManager x509TrustManager, @NotNull X509TrustManagerExtensions x509TrustManagerExtensions) {
        nd0.m1875new(x509TrustManager, "trustManager");
        nd0.m1875new(x509TrustManagerExtensions, "x509TrustManagerExtensions");
        this.f5316do = x509TrustManager;
        this.f5317if = x509TrustManagerExtensions;
    }

    @Override // com.apk.kk0
    @SuppressSignatureCheck
    @NotNull
    /* renamed from: do */
    public List<Certificate> mo1231do(@NotNull List<? extends Certificate> list, @NotNull String str) throws SSLPeerUnverifiedException {
        nd0.m1875new(list, "chain");
        nd0.m1875new(str, "hostname");
        Object[] array = list.toArray(new X509Certificate[0]);
        if (array != null) {
            try {
                List<X509Certificate> checkServerTrusted = this.f5317if.checkServerTrusted((X509Certificate[]) array, "RSA", str);
                nd0.m1872for(checkServerTrusted, "x509TrustManagerExtensio…ficates, \"RSA\", hostname)");
                return checkServerTrusted;
            } catch (CertificateException e) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e.getMessage());
                sSLPeerUnverifiedException.initCause(e);
                throw sSLPeerUnverifiedException;
            }
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof wj0) && ((wj0) obj).f5316do == this.f5316do;
    }

    public int hashCode() {
        return System.identityHashCode(this.f5316do);
    }
}
