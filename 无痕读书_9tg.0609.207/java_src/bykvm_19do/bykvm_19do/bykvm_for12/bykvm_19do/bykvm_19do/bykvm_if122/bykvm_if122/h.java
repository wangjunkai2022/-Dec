package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: CipherSuite.java */
/* loaded from: classes8.dex */
public final class h {
    public static final Comparator<String> b = new a();
    public static final Map<String, h> c = new TreeMap(b);
    public static final h d;
    public static final h e;
    public static final h f;
    public static final h g;
    public static final h h;
    public static final h i;
    public static final h j;
    public static final h k;
    public static final h l;
    public static final h m;
    public static final h n;
    public static final h o;
    public static final h p;
    public static final h q;
    public static final h r;

    /* renamed from: a  reason: collision with root package name */
    public final String f10774a;

    /* compiled from: CipherSuite.java */
    /* loaded from: classes8.dex */
    public static class a implements Comparator<String> {
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            int min = Math.min(str.length(), str2.length());
            for (int i = 4; i < min; i++) {
                char charAt = str.charAt(i);
                char charAt2 = str2.charAt(i);
                if (charAt != charAt2) {
                    return charAt < charAt2 ? -1 : 1;
                }
            }
            int length = str.length();
            int length2 = str2.length();
            if (length != length2) {
                return length < length2 ? -1 : 1;
            }
            return 0;
        }
    }

    static {
        a("SSL_RSA_WITH_NULL_MD5", 1);
        a("SSL_RSA_WITH_NULL_SHA", 2);
        a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
        a("SSL_RSA_WITH_RC4_128_MD5", 4);
        a("SSL_RSA_WITH_RC4_128_SHA", 5);
        a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
        a("SSL_RSA_WITH_DES_CBC_SHA", 9);
        d = a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
        a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
        a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
        a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
        a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
        a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
        a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
        a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
        a("SSL_DH_anon_WITH_RC4_128_MD5", 24);
        a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
        a("SSL_DH_anon_WITH_DES_CBC_SHA", 26);
        a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
        a("TLS_KRB5_WITH_DES_CBC_SHA", 30);
        a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
        a("TLS_KRB5_WITH_RC4_128_SHA", 32);
        a("TLS_KRB5_WITH_DES_CBC_MD5", 34);
        a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
        a("TLS_KRB5_WITH_RC4_128_MD5", 36);
        a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
        a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
        a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
        a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
        e = a("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
        a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
        a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
        a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
        f = a("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
        a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
        a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
        a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
        a("TLS_RSA_WITH_NULL_SHA256", 59);
        a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
        a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
        a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
        a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
        a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
        a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
        a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
        a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
        a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
        a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
        a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
        a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
        a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
        a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
        a("TLS_PSK_WITH_RC4_128_SHA", 138);
        a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
        a("TLS_PSK_WITH_AES_128_CBC_SHA", 140);
        a("TLS_PSK_WITH_AES_256_CBC_SHA", 141);
        a("TLS_RSA_WITH_SEED_CBC_SHA", 150);
        g = a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
        h = a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
        a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
        a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
        a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);
        a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);
        a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", TTAdConstant.IMAGE_MODE_LIVE);
        a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
        a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
        a("TLS_FALLBACK_SCSV", 22016);
        a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
        a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
        a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
        a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
        a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
        a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
        a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
        a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
        i = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        j = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
        a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
        a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
        a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
        a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
        a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
        a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
        a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
        k = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
        l = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
        a("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
        a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
        a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
        a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
        a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
        a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
        a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
        a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
        a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
        a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
        a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
        a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
        a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
        m = a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
        n = a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
        a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);
        a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);
        o = a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
        p = a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
        a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);
        a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);
        a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);
        a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);
        q = a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
        r = a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);
    }

    public h(String str) {
        if (str != null) {
            this.f10774a = str;
            return;
        }
        throw null;
    }

    public static synchronized h a(String str) {
        h hVar;
        synchronized (h.class) {
            hVar = c.get(str);
            if (hVar == null) {
                hVar = new h(str);
                c.put(str, hVar);
            }
        }
        return hVar;
    }

    public String toString() {
        return this.f10774a;
    }

    public static List<h> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static h a(String str, int i2) {
        return a(str);
    }
}
