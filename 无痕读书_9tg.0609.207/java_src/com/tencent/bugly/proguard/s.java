package com.tencent.bugly.proguard;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class s {
    public static s b;

    /* renamed from: a  reason: collision with root package name */
    public Map<String, String> f12100a = null;
    public Context c;

    public s(Context context) {
        this.c = context;
    }

    public static s a(Context context) {
        if (b == null) {
            b = new s(context);
        }
        return b;
    }

    public static byte[] b(HttpURLConnection httpURLConnection) {
        BufferedInputStream bufferedInputStream;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    bufferedInputStream.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                try {
                    if (!y.a(th)) {
                        th.printStackTrace();
                    }
                    return null;
                } finally {
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream = null;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:73:0x013f
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public final byte[] a(java.lang.String r21, byte[] r22, com.tencent.bugly.proguard.w r23, java.util.Map<java.lang.String, java.lang.String> r24) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.s.a(java.lang.String, byte[], com.tencent.bugly.proguard.w, java.util.Map):byte[]");
    }

    public static Map<String, String> a(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null || headerFields.size() == 0) {
            return null;
        }
        for (String str : headerFields.keySet()) {
            List<String> list = headerFields.get(str);
            if (list.size() > 0) {
                hashMap.put(str, list.get(0));
            }
        }
        return hashMap;
    }

    private HttpURLConnection a(String str, byte[] bArr, String str2, Map<String, String> map) {
        if (str == null) {
            y.e("destUrl is null.", new Object[0]);
            return null;
        }
        TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.tencent.bugly.proguard.s.1
            @Override // javax.net.ssl.X509TrustManager
            public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str3) throws CertificateException {
                y.c("checkClientTrusted", new Object[0]);
            }

            @Override // javax.net.ssl.X509TrustManager
            public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str3) throws CertificateException {
                y.c("checkServerTrusted", new Object[0]);
            }

            @Override // javax.net.ssl.X509TrustManager
            public final X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        }};
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (Exception e) {
            e.printStackTrace();
        }
        HttpURLConnection a2 = a(str2, str);
        if (a2 == null) {
            y.e("Failed to get HttpURLConnection object.", new Object[0]);
            return null;
        }
        try {
            a2.setRequestProperty("wup_version", "3.0");
            if (map != null && map.size() > 0) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    a2.setRequestProperty(entry.getKey(), URLEncoder.encode(entry.getValue(), "utf-8"));
                }
            }
            a2.setRequestProperty("A37", URLEncoder.encode(str2, "utf-8"));
            a2.setRequestProperty("A38", URLEncoder.encode(str2, "utf-8"));
            OutputStream outputStream = a2.getOutputStream();
            if (bArr == null) {
                outputStream.write(0);
            } else {
                outputStream.write(bArr);
            }
            return a2;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            y.e("Failed to upload, please check your network.", new Object[0]);
            return null;
        }
    }

    public static HttpURLConnection a(String str, String str2) {
        HttpURLConnection httpURLConnection;
        try {
            URL url = new URL(str2);
            if (a.b() != null) {
                httpURLConnection = (HttpURLConnection) url.openConnection(a.b());
            } else if (str != null && str.toLowerCase(Locale.US).contains("wap")) {
                httpURLConnection = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("http.proxyHost"), Integer.parseInt(System.getProperty("http.proxyPort")))));
            } else {
                httpURLConnection = (HttpURLConnection) url.openConnection();
            }
            httpURLConnection.setConnectTimeout(30000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(false);
            return httpURLConnection;
        } catch (Throwable th) {
            if (y.a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
