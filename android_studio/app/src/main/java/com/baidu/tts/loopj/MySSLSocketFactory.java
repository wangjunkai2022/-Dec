package com.baidu.tts.loopj;

import com.baidu.tts.client.SpeechSynthesizer;
import java.io.IOException;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import org.apache.http.HttpVersion;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpProtocolParams;

/* loaded from: classes8.dex */
public class MySSLSocketFactory extends SSLSocketFactory {
    public SSLContext sslContext;

    public MySSLSocketFactory(KeyStore keyStore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        super(keyStore);
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        this.sslContext = sSLContext;
        sSLContext.init(null, null, null);
    }

    public static SSLSocketFactory getFixedSocketFactory() {
        try {
            return new MySSLSocketFactory(getKeystore());
        } catch (Throwable th) {
            th.printStackTrace();
            return SSLSocketFactory.getSocketFactory();
        }
    }

    public static KeyStore getKeystore() {
        KeyStore keyStore;
        Throwable th;
        try {
            keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        } catch (Throwable th2) {
            keyStore = null;
            th = th2;
        }
        try {
            keyStore.load(null, null);
        } catch (Throwable th3) {
            th = th3;
            th.printStackTrace();
            return keyStore;
        }
        return keyStore;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.security.KeyStore getKeystoreOfCA(java.io.InputStream r3) {
        /*
            r0 = 0
            java.lang.String r1 = "X.509"
            java.security.cert.CertificateFactory r1 = java.security.cert.CertificateFactory.getInstance(r1)     // Catch: java.lang.Throwable -> L1b java.security.cert.CertificateException -> L1d
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L1b java.security.cert.CertificateException -> L1d
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L1b java.security.cert.CertificateException -> L1d
            java.security.cert.Certificate r3 = r1.generateCertificate(r2)     // Catch: java.security.cert.CertificateException -> L19 java.lang.Throwable -> L47
            r2.close()     // Catch: java.io.IOException -> L14
            goto L2d
        L14:
            r1 = move-exception
            r1.printStackTrace()
            goto L2d
        L19:
            r3 = move-exception
            goto L1f
        L1b:
            r3 = move-exception
            goto L49
        L1d:
            r3 = move-exception
            r2 = r0
        L1f:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L47
            if (r2 == 0) goto L2c
            r2.close()     // Catch: java.io.IOException -> L28
            goto L2c
        L28:
            r3 = move-exception
            r3.printStackTrace()
        L2c:
            r3 = r0
        L2d:
            java.lang.String r1 = java.security.KeyStore.getDefaultType()
            java.security.KeyStore r1 = java.security.KeyStore.getInstance(r1)     // Catch: java.lang.Exception -> L41
            r1.load(r0, r0)     // Catch: java.lang.Exception -> L3e
            java.lang.String r0 = "ca"
            r1.setCertificateEntry(r0, r3)     // Catch: java.lang.Exception -> L3e
            goto L46
        L3e:
            r3 = move-exception
            r0 = r1
            goto L42
        L41:
            r3 = move-exception
        L42:
            r3.printStackTrace()
            r1 = r0
        L46:
            return r1
        L47:
            r3 = move-exception
            r0 = r2
        L49:
            if (r0 == 0) goto L53
            r0.close()     // Catch: java.io.IOException -> L4f
            goto L53
        L4f:
            r0 = move-exception
            r0.printStackTrace()
        L53:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.loopj.MySSLSocketFactory.getKeystoreOfCA(java.io.InputStream):java.security.KeyStore");
    }

    public static DefaultHttpClient getNewHttpClient(KeyStore keyStore) {
        try {
            MySSLSocketFactory mySSLSocketFactory = new MySSLSocketFactory(keyStore);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP, PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS, mySSLSocketFactory, 443));
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        } catch (Exception unused) {
            return new DefaultHttpClient();
        }
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return this.sslContext.getSocketFactory().createSocket(socket, str, i, z);
    }

    public void fixHttpsURLConnection() {
        HttpsURLConnection.setDefaultSSLSocketFactory(this.sslContext.getSocketFactory());
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() throws IOException {
        return this.sslContext.getSocketFactory().createSocket();
    }
}
