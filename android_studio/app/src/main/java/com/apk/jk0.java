package com.apk;

import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: BasicTrustRootIndex.kt */
/* loaded from: classes7.dex */
public final class jk0 implements mk0 {

    /* renamed from: do  reason: not valid java name */
    public final Map<X500Principal, Set<X509Certificate>> f2361do;

    public jk0(@NotNull X509Certificate... x509CertificateArr) {
        nd0.m1875new(x509CertificateArr, "caCerts");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            nd0.m1872for(subjectX500Principal, "caCert.subjectX500Principal");
            Object obj = linkedHashMap.get(subjectX500Principal);
            if (obj == null) {
                obj = new LinkedHashSet();
                linkedHashMap.put(subjectX500Principal, obj);
            }
            ((Set) obj).add(x509Certificate);
        }
        this.f2361do = linkedHashMap;
    }

    @Override // com.apk.mk0
    @Nullable
    /* renamed from: do  reason: not valid java name */
    public X509Certificate mo1355do(@NotNull X509Certificate x509Certificate) {
        boolean z;
        nd0.m1875new(x509Certificate, "cert");
        Set<X509Certificate> set = this.f2361do.get(x509Certificate.getIssuerX500Principal());
        Object obj = null;
        if (set != null) {
            Iterator<T> it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                try {
                    x509Certificate.verify(((X509Certificate) next).getPublicKey());
                    z = true;
                    continue;
                } catch (Exception unused) {
                    z = false;
                    continue;
                }
                if (z) {
                    obj = next;
                    break;
                }
            }
            return (X509Certificate) obj;
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        return obj == this || ((obj instanceof jk0) && nd0.m1870do(((jk0) obj).f2361do, this.f2361do));
    }

    public int hashCode() {
        return this.f2361do.hashCode();
    }
}
