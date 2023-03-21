package com.apk;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: BasicCertificateChainCleaner.kt */
/* loaded from: classes7.dex */
public final class ik0 extends kk0 {

    /* renamed from: do  reason: not valid java name */
    public final mk0 f2139do;

    public ik0(@NotNull mk0 mk0Var) {
        nd0.m1875new(mk0Var, "trustRootIndex");
        this.f2139do = mk0Var;
    }

    @Override // com.apk.kk0
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public List<Certificate> mo1231do(@NotNull List<? extends Certificate> list, @NotNull String str) throws SSLPeerUnverifiedException {
        nd0.m1875new(list, "chain");
        nd0.m1875new(str, "hostname");
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        Object removeFirst = arrayDeque.removeFirst();
        nd0.m1872for(removeFirst, "queue.removeFirst()");
        arrayList.add(removeFirst);
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            Object obj = arrayList.get(arrayList.size() - 1);
            if (obj != null) {
                X509Certificate x509Certificate = (X509Certificate) obj;
                X509Certificate mo1355do = this.f2139do.mo1355do(x509Certificate);
                if (mo1355do != null) {
                    if (arrayList.size() > 1 || (!nd0.m1870do(x509Certificate, mo1355do))) {
                        arrayList.add(mo1355do);
                    }
                    if (m1232if(mo1355do, mo1355do)) {
                        return arrayList;
                    }
                    z = true;
                } else {
                    Iterator it = arrayDeque.iterator();
                    nd0.m1872for(it, "queue.iterator()");
                    while (it.hasNext()) {
                        Object next = it.next();
                        if (next != null) {
                            X509Certificate x509Certificate2 = (X509Certificate) next;
                            if (m1232if(x509Certificate, x509Certificate2)) {
                                it.remove();
                                arrayList.add(x509Certificate2);
                            }
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
                        }
                    }
                    if (z) {
                        return arrayList;
                    }
                    throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
            }
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ik0) && nd0.m1870do(((ik0) obj).f2139do, this.f2139do);
    }

    public int hashCode() {
        return this.f2139do.hashCode();
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m1232if(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!nd0.m1870do(x509Certificate.getIssuerDN(), x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }
}
