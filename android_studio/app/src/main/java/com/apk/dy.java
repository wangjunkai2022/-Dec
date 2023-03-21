package com.apk;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* compiled from: HttpsUtils.java */
/* loaded from: classes8.dex */
public class dy {

    /* renamed from: do  reason: not valid java name */
    public static X509TrustManager f965do = new Cdo();

    /* renamed from: if  reason: not valid java name */
    public static HostnameVerifier f966if = new Cif();

    /* compiled from: HttpsUtils.java */
    /* renamed from: com.apk.dy$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    /* compiled from: HttpsUtils.java */
    /* renamed from: com.apk.dy$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor {

        /* renamed from: do  reason: not valid java name */
        public SSLSocketFactory f967do;

        /* renamed from: if  reason: not valid java name */
        public X509TrustManager f968if;
    }

    /* compiled from: HttpsUtils.java */
    /* renamed from: com.apk.dy$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif implements HostnameVerifier {
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static Cfor m517do() {
        X509TrustManager x509TrustManager;
        InputStream[] inputStreamArr = new InputStream[0];
        Cfor cfor = new Cfor();
        try {
            KeyManager[] m519if = m519if(null, null);
            TrustManager[] m518for = m518for(inputStreamArr);
            if (m518for != null) {
                int length = m518for.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        x509TrustManager = null;
                        break;
                    }
                    TrustManager trustManager = m518for[i];
                    if (trustManager instanceof X509TrustManager) {
                        x509TrustManager = (X509TrustManager) trustManager;
                        break;
                    }
                    i++;
                }
            } else {
                x509TrustManager = f965do;
            }
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(m519if, new TrustManager[]{x509TrustManager}, null);
            cfor.f967do = sSLContext.getSocketFactory();
            cfor.f968if = x509TrustManager;
            return cfor;
        } catch (KeyManagementException e) {
            throw new AssertionError(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static TrustManager[] m518for(InputStream... inputStreamArr) {
        if (inputStreamArr != null && inputStreamArr.length > 0) {
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null);
                int length = inputStreamArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    InputStream inputStream = inputStreamArr[i];
                    int i3 = i2 + 1;
                    keyStore.setCertificateEntry(Integer.toString(i2), certificateFactory.generateCertificate(inputStream));
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    i++;
                    i2 = i3;
                }
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                return trustManagerFactory.getTrustManagers();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    /* renamed from: if  reason: not valid java name */
    public static KeyManager[] m519if(InputStream inputStream, String str) {
        if (inputStream != null && str != null) {
            try {
                KeyStore keyStore = KeyStore.getInstance("BKS");
                keyStore.load(inputStream, str.toCharArray());
                KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
                keyManagerFactory.init(keyStore, str.toCharArray());
                return keyManagerFactory.getKeyManagers();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
