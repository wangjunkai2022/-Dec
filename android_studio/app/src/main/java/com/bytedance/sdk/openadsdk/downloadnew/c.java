package com.bytedance.sdk.openadsdk.downloadnew;

import android.text.TextUtils;
import com.baidu.tts.loopj.AsyncHttpClient;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* loaded from: classes8.dex */
public class c {

    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public InputStream f11460a;
        public Map<String, String> b;
        public int c;
        public HttpURLConnection d;

        public a(InputStream inputStream, Map<String, String> map, int i, HttpURLConnection httpURLConnection) {
            this.f11460a = inputStream;
            this.b = map;
            this.c = i;
            this.d = httpURLConnection;
        }
    }

    public static HttpURLConnection a(String str, Map<String, String> map) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            HttpURLConnection httpURLConnection3 = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection3.setInstanceFollowRedirects(false);
                httpURLConnection3.setRequestProperty("accept", "*/*");
                httpURLConnection3.setRequestProperty("connection", "Keep-Alive");
                if (map != null && !map.isEmpty()) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        httpURLConnection3.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                httpURLConnection3.connect();
                int responseCode = httpURLConnection3.getResponseCode();
                return ((responseCode < 200 || responseCode >= 300) && responseCode >= 300 && responseCode < 400) ? a(httpURLConnection3.getHeaderField("Location"), map) : httpURLConnection3;
            } catch (Exception unused) {
                httpURLConnection2 = httpURLConnection;
                return httpURLConnection2;
            }
        } catch (Exception unused2) {
        }
    }

    public static Map<String, String> a(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        int size = httpURLConnection.getHeaderFields().size();
        for (int i = 0; i < size; i++) {
            hashMap.put(httpURLConnection.getHeaderFieldKey(i), httpURLConnection.getHeaderField(i));
        }
        return hashMap;
    }

    public static a a(String str, List<com.ss.android.socialbase.downloader.model.c> list) throws IOException {
        int responseCode;
        HashMap hashMap = new HashMap();
        if (list != null && !list.isEmpty()) {
            for (com.ss.android.socialbase.downloader.model.c cVar : list) {
                hashMap.put(cVar.a(), cVar.b());
            }
        }
        HttpURLConnection a2 = a(str, hashMap);
        if (a2 != null && (responseCode = a2.getResponseCode()) >= 200 && responseCode < 300) {
            Map<String, String> a3 = a(a2);
            InputStream inputStream = a2.getInputStream();
            String contentEncoding = a2.getContentEncoding();
            if (!TextUtils.isEmpty(contentEncoding) && contentEncoding.contains(AsyncHttpClient.ENCODING_GZIP)) {
                inputStream = new GZIPInputStream(inputStream);
            }
            return new a(inputStream, a3, responseCode, a2);
        }
        return null;
    }
}
