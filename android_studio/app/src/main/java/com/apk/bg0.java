package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import com.apk.uk0;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.util.cipher.AESCrypt;

/* compiled from: CertificatePinner.kt */
/* loaded from: classes7.dex */
public final class bg0 {
    @JvmField
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public static final bg0 f309for;

    /* renamed from: new  reason: not valid java name */
    public static final Cdo f310new = new Cdo(null);
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final Set<Cif> f311do;
    @Nullable

    /* renamed from: if  reason: not valid java name */
    public final kk0 f312if;

    /* compiled from: CertificatePinner.kt */
    /* renamed from: com.apk.bg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        @JvmStatic
        @NotNull
        /* renamed from: do  reason: not valid java name */
        public final String m174do(@NotNull Certificate certificate) {
            nd0.m1875new(certificate, "certificate");
            if (certificate instanceof X509Certificate) {
                StringBuilder m1016super = Cgoto.m1016super("sha256/");
                m1016super.append(m175if((X509Certificate) certificate).mo1237do());
                return m1016super.toString();
            }
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates".toString());
        }

        @JvmStatic
        @NotNull
        /* renamed from: if  reason: not valid java name */
        public final uk0 m175if(@NotNull X509Certificate x509Certificate) {
            nd0.m1875new(x509Certificate, "$this$sha256Hash");
            uk0.Cdo cdo = uk0.f4913try;
            PublicKey publicKey = x509Certificate.getPublicKey();
            nd0.m1872for(publicKey, "publicKey");
            byte[] encoded = publicKey.getEncoded();
            nd0.m1872for(encoded, "publicKey.encoded");
            return uk0.Cdo.m2715for(cdo, encoded, 0, 0, 3).mo1241if(AESCrypt.HASH_ALGORITHM);
        }
    }

    /* compiled from: CertificatePinner.kt */
    /* renamed from: com.apk.bg0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {
        @NotNull

        /* renamed from: do  reason: not valid java name */
        public final String f313do;
        @NotNull

        /* renamed from: for  reason: not valid java name */
        public final uk0 f314for;
        @NotNull

        /* renamed from: if  reason: not valid java name */
        public final String f315if;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Cif) {
                Cif cif = (Cif) obj;
                return ((nd0.m1870do(null, cif.f313do) ^ true) || (nd0.m1870do(null, cif.f315if) ^ true) || (nd0.m1870do(null, cif.f314for) ^ true)) ? false : true;
            }
            return false;
        }

        public int hashCode() {
            throw null;
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append((String) null);
            sb.append('/');
            throw null;
        }
    }

    static {
        Set set;
        ArrayList arrayList = new ArrayList();
        nd0.m1875new(arrayList, "$this$toSet");
        int size = arrayList.size();
        if (size == 0) {
            set = zc0.f6173do;
        } else if (size != 1) {
            int size2 = arrayList.size();
            if (size2 >= 0) {
                size2 = size2 < 3 ? size2 + 1 : size2 < 1073741824 ? (int) ((size2 / 0.75f) + 1.0f) : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
            set = new LinkedHashSet(size2);
            uc0.m2697goto(arrayList, set);
        } else {
            set = Collections.singleton(arrayList.get(0));
            nd0.m1872for(set, "java.util.Collections.singleton(element)");
        }
        f309for = new bg0(set, null, 2);
    }

    public bg0(Set set, kk0 kk0Var, int i) {
        int i2 = i & 2;
        nd0.m1875new(set, "pins");
        this.f311do = set;
        this.f312if = null;
    }

    /* renamed from: do  reason: not valid java name */
    public final void m172do(@NotNull String str, @NotNull hd0<? extends List<? extends X509Certificate>> hd0Var) {
        nd0.m1875new(str, "hostname");
        nd0.m1875new(hd0Var, "cleanedPeerCertificatesFn");
        nd0.m1875new(str, "hostname");
        Set<Cif> set = this.f311do;
        List<Cif> list = xc0.f5512do;
        for (Object obj : set) {
            if (((Cif) obj) != null) {
                nd0.m1875new(str, "hostname");
                if (!ie0.m1206static(null, "**.", false, 2)) {
                    if (!ie0.m1206static(null, "*.", false, 2)) {
                        if (nd0.m1870do(str, null)) {
                            if (list.isEmpty()) {
                                list = new ArrayList();
                            }
                            if (!(list instanceof ud0)) {
                                list.add(obj);
                            } else {
                                ClassCastException classCastException = new ClassCastException(Cgoto.m996else(list.getClass().getName(), " cannot be cast to ", "kotlin.collections.MutableList"));
                                nd0.m1873goto(classCastException, td0.class.getName());
                                throw classCastException;
                            }
                        }
                    } else {
                        throw null;
                    }
                } else {
                    throw null;
                }
            } else {
                throw null;
            }
        }
        if (list.isEmpty()) {
            return;
        }
        List<? extends X509Certificate> mo51do = hd0Var.mo51do();
        for (X509Certificate x509Certificate : mo51do) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                if (((Cif) it.next()) != null) {
                    throw null;
                }
                throw null;
            }
        }
        StringBuilder m1025while = Cgoto.m1025while("Certificate pinning failure!", "\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : mo51do) {
            m1025while.append("\n    ");
            m1025while.append(f310new.m174do(x509Certificate2));
            m1025while.append(": ");
            Principal subjectDN = x509Certificate2.getSubjectDN();
            nd0.m1872for(subjectDN, "element.subjectDN");
            m1025while.append(subjectDN.getName());
        }
        m1025while.append("\n  Pinned certificates for ");
        m1025while.append(str);
        m1025while.append(":");
        for (Cif cif : list) {
            m1025while.append("\n    ");
            m1025while.append(cif);
        }
        String sb = m1025while.toString();
        nd0.m1872for(sb, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(sb);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof bg0) {
            bg0 bg0Var = (bg0) obj;
            if (nd0.m1870do(bg0Var.f311do, this.f311do) && nd0.m1870do(bg0Var.f312if, this.f312if)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (this.f311do.hashCode() + 1517) * 41;
        kk0 kk0Var = this.f312if;
        return hashCode + (kk0Var != null ? kk0Var.hashCode() : 0);
    }

    @NotNull
    /* renamed from: if  reason: not valid java name */
    public final bg0 m173if(@NotNull kk0 kk0Var) {
        nd0.m1875new(kk0Var, "certificateChainCleaner");
        return nd0.m1870do(this.f312if, kk0Var) ? this : new bg0(this.f311do, kk0Var);
    }

    public bg0(@NotNull Set<Cif> set, @Nullable kk0 kk0Var) {
        nd0.m1875new(set, "pins");
        this.f311do = set;
        this.f312if = kk0Var;
    }
}
