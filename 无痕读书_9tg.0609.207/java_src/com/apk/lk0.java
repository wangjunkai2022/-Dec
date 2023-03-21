package com.apk;

import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import org.jetbrains.annotations.NotNull;
/* compiled from: OkHostnameVerifier.kt */
/* loaded from: classes7.dex */
public final class lk0 implements HostnameVerifier {

    /* renamed from: do  reason: not valid java name */
    public static final lk0 f2826do = new lk0();

    /* renamed from: do  reason: not valid java name */
    public final String m1639do(String str) {
        if (m1640for(str)) {
            Locale locale = Locale.US;
            nd0.m1872for(locale, "Locale.US");
            String lowerCase = str.toLowerCase(locale);
            nd0.m1872for(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return lowerCase;
        }
        return str;
    }

    /* renamed from: for  reason: not valid java name */
    public final boolean m1640for(String str) {
        int i;
        int length = str.length();
        int length2 = str.length();
        nd0.m1875new(str, "$this$utf8Size");
        if (length2 >= 0) {
            if (!(length2 <= str.length())) {
                StringBuilder m1020throw = Cgoto.m1020throw("endIndex > string.length: ", length2, " > ");
                m1020throw.append(str.length());
                throw new IllegalArgumentException(m1020throw.toString().toString());
            }
            long j = 0;
            int i2 = 0;
            while (i2 < length2) {
                char charAt = str.charAt(i2);
                if (charAt < 128) {
                    j++;
                } else {
                    if (charAt < 2048) {
                        i = 2;
                    } else if (charAt < 55296 || charAt > 57343) {
                        i = 3;
                    } else {
                        int i3 = i2 + 1;
                        char charAt2 = i3 < length2 ? str.charAt(i3) : (char) 0;
                        if (charAt > 56319 || charAt2 < 56320 || charAt2 > 57343) {
                            j++;
                            i2 = i3;
                        } else {
                            j += 4;
                            i2 += 2;
                        }
                    }
                    j += i;
                }
                i2++;
            }
            return length == ((int) j);
        }
        throw new IllegalArgumentException(Cgoto.m1018synchronized("endIndex < beginIndex: ", length2, " < ", 0).toString());
    }

    /* renamed from: if  reason: not valid java name */
    public final List<String> m1641if(X509Certificate x509Certificate, int i) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames != null) {
                ArrayList arrayList = new ArrayList();
                for (List<?> list : subjectAlternativeNames) {
                    if (list != null && list.size() >= 2 && !(!nd0.m1870do(list.get(0), Integer.valueOf(i))) && (obj = list.get(1)) != null) {
                        arrayList.add((String) obj);
                    }
                }
                return arrayList;
            }
            return xc0.f5512do;
        } catch (CertificateParsingException unused) {
            return xc0.f5512do;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x0114 A[SYNTHETIC] */
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1642new(@org.jetbrains.annotations.NotNull java.lang.String r11, @org.jetbrains.annotations.NotNull java.security.cert.X509Certificate r12) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.lk0.m1642new(java.lang.String, java.security.cert.X509Certificate):boolean");
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(@NotNull String str, @NotNull SSLSession sSLSession) {
        Certificate certificate;
        nd0.m1875new(str, "host");
        nd0.m1875new(sSLSession, com.umeng.analytics.pro.d.aw);
        if (m1640for(str)) {
            try {
                certificate = sSLSession.getPeerCertificates()[0];
                if (certificate == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
                }
            } catch (SSLException unused) {
                return false;
            }
        }
        return m1642new(str, (X509Certificate) certificate);
    }
}
