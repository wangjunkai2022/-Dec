package com.apk;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;

/* compiled from: CipherSuite.kt */
/* loaded from: classes7.dex */
public final class eg0 {
    @JvmField
    @NotNull

    /* renamed from: break  reason: not valid java name */
    public static final eg0 f1044break;
    @JvmField
    @NotNull

    /* renamed from: case  reason: not valid java name */
    public static final eg0 f1045case;
    @JvmField
    @NotNull

    /* renamed from: catch  reason: not valid java name */
    public static final eg0 f1046catch;
    @JvmField
    @NotNull

    /* renamed from: class  reason: not valid java name */
    public static final eg0 f1047class;
    @JvmField
    @NotNull

    /* renamed from: const  reason: not valid java name */
    public static final eg0 f1048const;
    @JvmField
    @NotNull

    /* renamed from: else  reason: not valid java name */
    public static final eg0 f1049else;
    @JvmField
    @NotNull

    /* renamed from: final  reason: not valid java name */
    public static final eg0 f1050final;
    @JvmField
    @NotNull

    /* renamed from: goto  reason: not valid java name */
    public static final eg0 f1052goto;
    @JvmField
    @NotNull

    /* renamed from: import  reason: not valid java name */
    public static final eg0 f1054import;
    @JvmField
    @NotNull

    /* renamed from: native  reason: not valid java name */
    public static final eg0 f1055native;
    @JvmField
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public static final eg0 f1056new;
    @JvmField
    @NotNull

    /* renamed from: super  reason: not valid java name */
    public static final eg0 f1058super;
    @JvmField
    @NotNull

    /* renamed from: this  reason: not valid java name */
    public static final eg0 f1059this;
    @JvmField
    @NotNull

    /* renamed from: throw  reason: not valid java name */
    public static final eg0 f1060throw;
    @JvmField
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public static final eg0 f1061try;
    @JvmField
    @NotNull

    /* renamed from: while  reason: not valid java name */
    public static final eg0 f1062while;
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final String f1063do;

    /* renamed from: public  reason: not valid java name */
    public static final Cif f1057public = new Cif(null);
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public static final Comparator<String> f1053if = new Cdo();

    /* renamed from: for  reason: not valid java name */
    public static final Map<String, eg0> f1051for = new LinkedHashMap();

    /* compiled from: CipherSuite.kt */
    /* renamed from: com.apk.eg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo implements Comparator<String> {
        /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
            return 1;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int compare(java.lang.String r7, java.lang.String r8) {
            /*
                r6 = this;
                java.lang.String r7 = (java.lang.String) r7
                java.lang.String r8 = (java.lang.String) r8
                java.lang.String r0 = "a"
                com.apk.nd0.m1875new(r7, r0)
                java.lang.String r0 = "b"
                com.apk.nd0.m1875new(r8, r0)
                int r0 = r7.length()
                int r1 = r8.length()
                int r0 = java.lang.Math.min(r0, r1)
                r1 = 4
            L1b:
                r2 = -1
                r3 = 1
                if (r1 >= r0) goto L35
                char r4 = r7.charAt(r1)
                char r5 = r8.charAt(r1)
                if (r4 == r5) goto L32
                int r7 = com.apk.nd0.m1877try(r4, r5)
                if (r7 >= 0) goto L30
                goto L43
            L30:
                r2 = 1
                goto L43
            L32:
                int r1 = r1 + 1
                goto L1b
            L35:
                int r7 = r7.length()
                int r8 = r8.length()
                if (r7 == r8) goto L42
                if (r7 >= r8) goto L30
                goto L43
            L42:
                r2 = 0
            L43:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.eg0.Cdo.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    /* compiled from: CipherSuite.kt */
    /* renamed from: com.apk.eg0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {
        public Cif(md0 md0Var) {
        }

        /* renamed from: do  reason: not valid java name */
        public static final eg0 m623do(Cif cif, String str, int i) {
            if (cif != null) {
                eg0 eg0Var = new eg0(str, null);
                eg0.f1051for.put(str, eg0Var);
                return eg0Var;
            }
            throw null;
        }

        /* renamed from: for  reason: not valid java name */
        public final String m624for(String str) {
            if (ie0.m1206static(str, "TLS_", false, 2)) {
                StringBuilder m1016super = Cgoto.m1016super("SSL_");
                String substring = str.substring(4);
                nd0.m1872for(substring, "(this as java.lang.String).substring(startIndex)");
                m1016super.append(substring);
                return m1016super.toString();
            } else if (ie0.m1206static(str, "SSL_", false, 2)) {
                StringBuilder m1016super2 = Cgoto.m1016super("TLS_");
                String substring2 = str.substring(4);
                nd0.m1872for(substring2, "(this as java.lang.String).substring(startIndex)");
                m1016super2.append(substring2);
                return m1016super2.toString();
            } else {
                return str;
            }
        }

        @JvmStatic
        @NotNull
        /* renamed from: if  reason: not valid java name */
        public final synchronized eg0 m625if(@NotNull String str) {
            eg0 eg0Var;
            nd0.m1875new(str, "javaName");
            eg0Var = eg0.f1051for.get(str);
            if (eg0Var == null) {
                eg0Var = eg0.f1051for.get(m624for(str));
                if (eg0Var == null) {
                    eg0Var = new eg0(str, null);
                }
                eg0.f1051for.put(str, eg0Var);
            }
            return eg0Var;
        }
    }

    static {
        Cif.m623do(f1057public, "SSL_RSA_WITH_NULL_MD5", 1);
        Cif.m623do(f1057public, "SSL_RSA_WITH_NULL_SHA", 2);
        Cif.m623do(f1057public, "SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
        Cif.m623do(f1057public, "SSL_RSA_WITH_RC4_128_MD5", 4);
        Cif.m623do(f1057public, "SSL_RSA_WITH_RC4_128_SHA", 5);
        Cif.m623do(f1057public, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
        Cif.m623do(f1057public, "SSL_RSA_WITH_DES_CBC_SHA", 9);
        f1056new = Cif.m623do(f1057public, "SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
        Cif.m623do(f1057public, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
        Cif.m623do(f1057public, "SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
        Cif.m623do(f1057public, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
        Cif.m623do(f1057public, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
        Cif.m623do(f1057public, "SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
        Cif.m623do(f1057public, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
        Cif.m623do(f1057public, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
        Cif.m623do(f1057public, "SSL_DH_anon_WITH_RC4_128_MD5", 24);
        Cif.m623do(f1057public, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
        Cif.m623do(f1057public, "SSL_DH_anon_WITH_DES_CBC_SHA", 26);
        Cif.m623do(f1057public, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
        Cif.m623do(f1057public, "TLS_KRB5_WITH_DES_CBC_SHA", 30);
        Cif.m623do(f1057public, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
        Cif.m623do(f1057public, "TLS_KRB5_WITH_RC4_128_SHA", 32);
        Cif.m623do(f1057public, "TLS_KRB5_WITH_DES_CBC_MD5", 34);
        Cif.m623do(f1057public, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
        Cif.m623do(f1057public, "TLS_KRB5_WITH_RC4_128_MD5", 36);
        Cif.m623do(f1057public, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
        Cif.m623do(f1057public, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
        Cif.m623do(f1057public, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
        Cif.m623do(f1057public, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
        f1061try = Cif.m623do(f1057public, "TLS_RSA_WITH_AES_128_CBC_SHA", 47);
        Cif.m623do(f1057public, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
        Cif.m623do(f1057public, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
        Cif.m623do(f1057public, "TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
        f1045case = Cif.m623do(f1057public, "TLS_RSA_WITH_AES_256_CBC_SHA", 53);
        Cif.m623do(f1057public, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
        Cif.m623do(f1057public, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
        Cif.m623do(f1057public, "TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
        Cif.m623do(f1057public, "TLS_RSA_WITH_NULL_SHA256", 59);
        Cif.m623do(f1057public, "TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
        Cif.m623do(f1057public, "TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
        Cif.m623do(f1057public, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
        Cif.m623do(f1057public, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
        Cif.m623do(f1057public, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
        Cif.m623do(f1057public, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
        Cif.m623do(f1057public, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
        Cif.m623do(f1057public, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
        Cif.m623do(f1057public, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
        Cif.m623do(f1057public, "TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
        Cif.m623do(f1057public, "TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
        Cif.m623do(f1057public, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
        Cif.m623do(f1057public, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
        Cif.m623do(f1057public, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
        Cif.m623do(f1057public, "TLS_PSK_WITH_RC4_128_SHA", 138);
        Cif.m623do(f1057public, "TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
        Cif.m623do(f1057public, "TLS_PSK_WITH_AES_128_CBC_SHA", 140);
        Cif.m623do(f1057public, "TLS_PSK_WITH_AES_256_CBC_SHA", 141);
        Cif.m623do(f1057public, "TLS_RSA_WITH_SEED_CBC_SHA", 150);
        f1049else = Cif.m623do(f1057public, "TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
        f1052goto = Cif.m623do(f1057public, "TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
        Cif.m623do(f1057public, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
        Cif.m623do(f1057public, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
        Cif.m623do(f1057public, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);
        Cif.m623do(f1057public, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);
        Cif.m623do(f1057public, "TLS_DH_anon_WITH_AES_128_GCM_SHA256", TTAdConstant.IMAGE_MODE_LIVE);
        Cif.m623do(f1057public, "TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
        Cif.m623do(f1057public, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
        Cif.m623do(f1057public, "TLS_FALLBACK_SCSV", 22016);
        Cif.m623do(f1057public, "TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
        Cif.m623do(f1057public, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
        Cif.m623do(f1057public, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
        Cif.m623do(f1057public, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
        Cif.m623do(f1057public, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
        Cif.m623do(f1057public, "TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
        Cif.m623do(f1057public, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
        Cif.m623do(f1057public, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
        Cif.m623do(f1057public, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        Cif.m623do(f1057public, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        Cif.m623do(f1057public, "TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
        Cif.m623do(f1057public, "TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
        Cif.m623do(f1057public, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
        Cif.m623do(f1057public, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
        Cif.m623do(f1057public, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
        Cif.m623do(f1057public, "TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
        Cif.m623do(f1057public, "TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
        Cif.m623do(f1057public, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
        f1059this = Cif.m623do(f1057public, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
        f1044break = Cif.m623do(f1057public, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
        Cif.m623do(f1057public, "TLS_ECDH_anon_WITH_NULL_SHA", 49173);
        Cif.m623do(f1057public, "TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
        Cif.m623do(f1057public, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
        Cif.m623do(f1057public, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
        Cif.m623do(f1057public, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
        Cif.m623do(f1057public, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
        Cif.m623do(f1057public, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
        Cif.m623do(f1057public, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
        Cif.m623do(f1057public, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
        Cif.m623do(f1057public, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
        Cif.m623do(f1057public, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
        Cif.m623do(f1057public, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
        Cif.m623do(f1057public, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
        f1046catch = Cif.m623do(f1057public, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
        f1047class = Cif.m623do(f1057public, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
        Cif.m623do(f1057public, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);
        Cif.m623do(f1057public, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);
        f1048const = Cif.m623do(f1057public, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
        f1050final = Cif.m623do(f1057public, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
        Cif.m623do(f1057public, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);
        Cif.m623do(f1057public, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);
        Cif.m623do(f1057public, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);
        Cif.m623do(f1057public, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);
        f1058super = Cif.m623do(f1057public, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
        f1060throw = Cif.m623do(f1057public, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);
        Cif.m623do(f1057public, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);
        Cif.m623do(f1057public, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);
        f1062while = Cif.m623do(f1057public, "TLS_AES_128_GCM_SHA256", 4865);
        f1054import = Cif.m623do(f1057public, "TLS_AES_256_GCM_SHA384", 4866);
        f1055native = Cif.m623do(f1057public, "TLS_CHACHA20_POLY1305_SHA256", 4867);
        Cif.m623do(f1057public, "TLS_AES_128_CCM_SHA256", 4868);
        Cif.m623do(f1057public, "TLS_AES_128_CCM_8_SHA256", 4869);
    }

    public eg0(String str, md0 md0Var) {
        this.f1063do = str;
    }

    @NotNull
    public String toString() {
        return this.f1063do;
    }
}
