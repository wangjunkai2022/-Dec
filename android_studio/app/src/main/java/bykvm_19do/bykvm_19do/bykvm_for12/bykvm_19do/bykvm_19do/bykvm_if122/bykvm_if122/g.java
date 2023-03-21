package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import com.apk.Cgoto;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;

/* compiled from: CertificatePinner.java */
/* loaded from: classes8.dex */
public final class g {
    public static final g c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    public final Set<b> f10771a;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_case1.c b;

    /* compiled from: CertificatePinner.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<b> f10772a = new ArrayList();

        public g a() {
            return new g(new LinkedHashSet(this.f10772a), null);
        }
    }

    /* compiled from: CertificatePinner.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f10773a;
        public final String b;
        public final String c;
        public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f d;

        public boolean a(String str) {
            if (this.f10773a.startsWith("*.")) {
                int indexOf = str.indexOf(46);
                if ((str.length() - indexOf) - 1 == this.b.length()) {
                    String str2 = this.b;
                    if (str.regionMatches(false, indexOf + 1, str2, 0, str2.length())) {
                        return true;
                    }
                }
                return false;
            }
            return str.equals(this.b);
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f10773a.equals(bVar.f10773a) && this.c.equals(bVar.c) && this.d.equals(bVar.d)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.c.hashCode();
            return this.d.hashCode() + ((hashCode + ((this.f10773a.hashCode() + 527) * 31)) * 31);
        }

        public String toString() {
            return this.c + this.d.a();
        }
    }

    public g(Set<b> set, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_case1.c cVar) {
        this.f10771a = set;
        this.b = cVar;
    }

    public static bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f b(X509Certificate x509Certificate) {
        return bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f.a(x509Certificate.getPublicKey().getEncoded()).d();
    }

    public void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<b> a2 = a(str);
        if (a2.isEmpty()) {
            return;
        }
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.b;
        if (cVar != null) {
            list = cVar.a(list, str);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i);
            int size2 = a2.size();
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f fVar = null;
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f fVar2 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                b bVar = a2.get(i2);
                if (bVar.c.equals("sha256/")) {
                    if (fVar == null) {
                        fVar = b(x509Certificate);
                    }
                    if (bVar.d.equals(fVar)) {
                        return;
                    }
                } else if (bVar.c.equals("sha1/")) {
                    if (fVar2 == null) {
                        fVar2 = a(x509Certificate);
                    }
                    if (bVar.d.equals(fVar2)) {
                        return;
                    }
                } else {
                    StringBuilder m1016super = Cgoto.m1016super("unsupported hashAlgorithm: ");
                    m1016super.append(bVar.c);
                    throw new AssertionError(m1016super.toString());
                }
            }
        }
        StringBuilder m1025while = Cgoto.m1025while("Certificate pinning failure!", "\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
            m1025while.append("\n    ");
            m1025while.append(a((Certificate) x509Certificate2));
            m1025while.append(": ");
            m1025while.append(x509Certificate2.getSubjectDN().getName());
        }
        m1025while.append("\n  Pinned certificates for ");
        m1025while.append(str);
        m1025while.append(":");
        int size4 = a2.size();
        for (int i4 = 0; i4 < size4; i4++) {
            m1025while.append("\n    ");
            m1025while.append(a2.get(i4));
        }
        throw new SSLPeerUnverifiedException(m1025while.toString());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this.b, gVar.b) && this.f10771a.equals(gVar.f10771a)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.b;
        return this.f10771a.hashCode() + ((cVar != null ? cVar.hashCode() : 0) * 31);
    }

    public List<b> a(String str) {
        List<b> emptyList = Collections.emptyList();
        for (b bVar : this.f10771a) {
            if (bVar.a(str)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                emptyList.add(bVar);
            }
        }
        return emptyList;
    }

    public g a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_case1.c cVar) {
        return bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this.b, cVar) ? this : new g(this.f10771a, cVar);
    }

    public static String a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            StringBuilder m1016super = Cgoto.m1016super("sha256/");
            m1016super.append(b((X509Certificate) certificate).a());
            return m1016super.toString();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    public static bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f a(X509Certificate x509Certificate) {
        return bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f.a(x509Certificate.getPublicKey().getEncoded()).c();
    }
}
