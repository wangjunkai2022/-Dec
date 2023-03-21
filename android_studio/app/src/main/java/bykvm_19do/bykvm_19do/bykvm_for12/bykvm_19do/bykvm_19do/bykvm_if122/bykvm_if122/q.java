package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* compiled from: Handshake.java */
/* loaded from: classes8.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public final d0 f10785a;
    public final h b;
    public final List<Certificate> c;
    public final List<Certificate> d;

    public q(d0 d0Var, h hVar, List<Certificate> list, List<Certificate> list2) {
        this.f10785a = d0Var;
        this.b = hVar;
        this.c = list;
        this.d = list2;
    }

    public static q a(SSLSession sSLSession) {
        String str;
        List emptyList;
        List emptyList2;
        Certificate[] certificateArr = null;
        try {
            str = sSLSession.getCipherSuite();
        } catch (Exception unused) {
            str = null;
        }
        if (str != null) {
            h a2 = h.a(str);
            String protocol = sSLSession.getProtocol();
            if (protocol != null) {
                d0 a3 = d0.a(protocol);
                try {
                    certificateArr = sSLSession.getPeerCertificates();
                } catch (SSLPeerUnverifiedException unused2) {
                }
                if (certificateArr != null) {
                    emptyList = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(certificateArr);
                } else {
                    emptyList = Collections.emptyList();
                }
                Certificate[] localCertificates = sSLSession.getLocalCertificates();
                if (localCertificates != null) {
                    emptyList2 = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(localCertificates);
                } else {
                    emptyList2 = Collections.emptyList();
                }
                return new q(a3, a2, emptyList, emptyList2);
            }
            throw new IllegalStateException("tlsVersion == null");
        }
        throw new IllegalStateException("cipherSuite == null");
    }

    public List<Certificate> b() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof q) {
            q qVar = (q) obj;
            return this.f10785a.equals(qVar.f10785a) && this.b.equals(qVar.b) && this.c.equals(qVar.c) && this.d.equals(qVar.d);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.b.hashCode();
        int hashCode2 = this.c.hashCode();
        return this.d.hashCode() + ((hashCode2 + ((hashCode + ((this.f10785a.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public h a() {
        return this.b;
    }
}
