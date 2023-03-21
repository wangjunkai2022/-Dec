package com.apk;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Handshake.kt */
/* loaded from: classes7.dex */
public final class rg0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final ic0 f4046do;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final eg0 f4047for;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final gh0 f4048if;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final List<Certificate> f4049new;

    /* compiled from: Handshake.kt */
    /* renamed from: com.apk.rg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends od0 implements hd0<List<? extends Certificate>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ hd0 f4050do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(hd0 hd0Var) {
            super(0);
            this.f4050do = hd0Var;
        }

        @Override // com.apk.hd0
        /* renamed from: do */
        public List<? extends Certificate> mo51do() {
            try {
                return (List) this.f4050do.mo51do();
            } catch (SSLPeerUnverifiedException unused) {
                return xc0.f5512do;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public rg0(@NotNull gh0 gh0Var, @NotNull eg0 eg0Var, @NotNull List<? extends Certificate> list, @NotNull hd0<? extends List<? extends Certificate>> hd0Var) {
        nd0.m1875new(gh0Var, "tlsVersion");
        nd0.m1875new(eg0Var, "cipherSuite");
        nd0.m1875new(list, "localCertificates");
        nd0.m1875new(hd0Var, "peerCertificatesFn");
        this.f4048if = gh0Var;
        this.f4047for = eg0Var;
        this.f4049new = list;
        Cdo cdo = new Cdo(hd0Var);
        nd0.m1875new(cdo, "initializer");
        this.f4046do = new kc0(cdo, null, 2);
    }

    @JvmStatic
    @JvmName(name = "get")
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public static final rg0 m2263do(@NotNull SSLSession sSLSession) throws IOException {
        List list;
        List list2;
        nd0.m1875new(sSLSession, "$this$handshake");
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite != null) {
            int hashCode = cipherSuite.hashCode();
            if (hashCode == 1019404634 ? !cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") : !(hashCode == 1208658923 && cipherSuite.equals("SSL_NULL_WITH_NULL_NULL"))) {
                eg0 m625if = eg0.f1057public.m625if(cipherSuite);
                String protocol = sSLSession.getProtocol();
                if (protocol != null) {
                    if (!nd0.m1870do("NONE", protocol)) {
                        gh0 m958do = gh0.f1570goto.m958do(protocol);
                        try {
                            Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                            if (peerCertificates != null) {
                                list = jh0.m1342super((Certificate[]) Arrays.copyOf(peerCertificates, peerCertificates.length));
                            } else {
                                list = xc0.f5512do;
                            }
                        } catch (SSLPeerUnverifiedException unused) {
                            list = xc0.f5512do;
                        }
                        Certificate[] localCertificates = sSLSession.getLocalCertificates();
                        if (localCertificates != null) {
                            list2 = jh0.m1342super((Certificate[]) Arrays.copyOf(localCertificates, localCertificates.length));
                        } else {
                            list2 = xc0.f5512do;
                        }
                        return new rg0(m958do, m625if, list2, new qg0(list));
                    }
                    throw new IOException("tlsVersion == NONE");
                }
                throw new IllegalStateException("tlsVersion == null".toString());
            }
            throw new IOException(Cgoto.m989case("cipherSuite == ", cipherSuite));
        }
        throw new IllegalStateException("cipherSuite == null".toString());
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof rg0) {
            rg0 rg0Var = (rg0) obj;
            if (rg0Var.f4048if == this.f4048if && nd0.m1870do(rg0Var.f4047for, this.f4047for) && nd0.m1870do(rg0Var.m2264for(), m2264for()) && nd0.m1870do(rg0Var.f4049new, this.f4049new)) {
                return true;
            }
        }
        return false;
    }

    @JvmName(name = "peerCertificates")
    @NotNull
    /* renamed from: for  reason: not valid java name */
    public final List<Certificate> m2264for() {
        return (List) this.f4046do.getValue();
    }

    public int hashCode() {
        int hashCode = this.f4047for.hashCode();
        int hashCode2 = m2264for().hashCode();
        return this.f4049new.hashCode() + ((hashCode2 + ((hashCode + ((this.f4048if.hashCode() + 527) * 31)) * 31)) * 31);
    }

    /* renamed from: if  reason: not valid java name */
    public final String m2265if(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        nd0.m1872for(type, "type");
        return type;
    }

    @NotNull
    public String toString() {
        List<Certificate> m2264for = m2264for();
        ArrayList arrayList = new ArrayList(sb0.m2420native(m2264for, 10));
        for (Certificate certificate : m2264for) {
            arrayList.add(m2265if(certificate));
        }
        String obj = arrayList.toString();
        StringBuilder m1025while = Cgoto.m1025while("Handshake{", "tlsVersion=");
        m1025while.append(this.f4048if);
        m1025while.append(' ');
        m1025while.append("cipherSuite=");
        m1025while.append(this.f4047for);
        m1025while.append(' ');
        m1025while.append("peerCertificates=");
        m1025while.append(obj);
        m1025while.append(' ');
        m1025while.append("localCertificates=");
        List<Certificate> list = this.f4049new;
        ArrayList arrayList2 = new ArrayList(sb0.m2420native(list, 10));
        for (Certificate certificate2 : list) {
            arrayList2.add(m2265if(certificate2));
        }
        m1025while.append(arrayList2);
        m1025while.append('}');
        return m1025while.toString();
    }
}
