package com.bytedance.sdk.openadsdk.api.plugin.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.Arrays;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes8.dex */
public class c {

    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final c f11424a = new c();
    }

    public static c a() {
        return a.f11424a;
    }

    private X509TrustManager b() throws IOException {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e) {
            throw new IOException("No System TLS", e);
        }
    }

    public c() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
        if (r5 == null) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String a(boolean r4, java.lang.String r5, byte[] r6) {
        /*
            r3 = this;
            r0 = 0
            java.net.URL r1 = new java.net.URL     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            javax.net.ssl.X509TrustManager r5 = r3.b()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            javax.net.ssl.SSLSocketFactory r5 = r3.a(r5)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            javax.net.ssl.HttpsURLConnection.setDefaultSSLSocketFactory(r5)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            java.net.URLConnection r5 = r1.openConnection()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            javax.net.ssl.HttpsURLConnection r5 = (javax.net.ssl.HttpsURLConnection) r5     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            r1 = 5000(0x1388, float:7.006E-42)
            r5.setConnectTimeout(r1)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            com.bytedance.sdk.openadsdk.api.plugin.a.a r1 = com.bytedance.sdk.openadsdk.api.plugin.a.a.f11422a     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            r5.setHostnameVerifier(r1)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            if (r4 == 0) goto L48
            if (r6 == 0) goto L48
            int r4 = r6.length     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            if (r4 == 0) goto L48
            r4 = 1
            r5.setDoOutput(r4)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            int r4 = r6.length     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            r5.setFixedLengthStreamingMode(r4)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            java.io.BufferedOutputStream r4 = new java.io.BufferedOutputStream     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            java.io.OutputStream r1 = r5.getOutputStream()     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            r4.<init>(r1)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            r4.write(r6)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            r4.flush()     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            r4.close()     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            java.lang.String r4 = "POST"
            r5.setRequestMethod(r4)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            goto L4d
        L48:
            java.lang.String r4 = "GET"
            r5.setRequestMethod(r4)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
        L4d:
            int r4 = r5.getResponseCode()     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            r6 = 200(0xc8, float:2.8E-43)
            if (r4 < r6) goto L78
            r6 = 300(0x12c, float:4.2E-43)
            if (r4 >= r6) goto L78
            java.lang.String r4 = "Content-Type"
            java.lang.String r4 = r5.getHeaderField(r4)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            java.lang.String r6 = "utf-8"
            java.lang.String r4 = a(r4, r6)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            java.lang.String r6 = new java.lang.String     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            java.io.InputStream r1 = r5.getInputStream()     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r1 = a(r1, r2)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            r6.<init>(r1, r4)     // Catch: java.lang.Exception -> L7c java.lang.Throwable -> L89
            r5.disconnect()     // Catch: java.lang.Exception -> L77
        L77:
            return r6
        L78:
            r5.disconnect()     // Catch: java.lang.Exception -> L88
            goto L88
        L7c:
            r4 = move-exception
            goto L82
        L7e:
            r4 = move-exception
            goto L8b
        L80:
            r4 = move-exception
            r5 = r0
        L82:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L89
            if (r5 == 0) goto L88
            goto L78
        L88:
            return r0
        L89:
            r4 = move-exception
            r0 = r5
        L8b:
            if (r0 == 0) goto L90
            r0.disconnect()     // Catch: java.lang.Exception -> L90
        L90:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.api.plugin.a.c.a(boolean, java.lang.String, byte[]):java.lang.String");
    }

    public static byte[] a(InputStream inputStream, int i) throws IOException {
        if (inputStream == null) {
            return null;
        }
        if (i < 1) {
            i = 1;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[i];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byteArrayOutputStream.close();
                inputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static String a(String str, String str2) {
        if (str != null) {
            String[] split = str.split(";", 0);
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=", 0);
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return str2;
    }

    private SSLSocketFactory a(X509TrustManager x509TrustManager) throws IOException {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw new IOException("No System TLS", e);
        }
    }
}
