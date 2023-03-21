package com.bytedance.pangle.f;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
/* loaded from: classes8.dex */
public final class p extends r {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f11335a;
    public int b;

    public p(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.b = -1;
        this.f11335a = bArr;
    }

    @Override // java.security.cert.Certificate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof p) {
            try {
                return Arrays.equals(getEncoded(), ((p) obj).getEncoded());
            } catch (CertificateEncodingException unused) {
                return false;
            }
        }
        return false;
    }

    @Override // com.bytedance.pangle.f.r, java.security.cert.Certificate
    public final byte[] getEncoded() {
        return this.f11335a;
    }

    @Override // java.security.cert.Certificate
    public final int hashCode() {
        if (this.b == -1) {
            try {
                this.b = Arrays.hashCode(getEncoded());
            } catch (CertificateEncodingException unused) {
                this.b = 0;
            }
        }
        return this.b;
    }
}
