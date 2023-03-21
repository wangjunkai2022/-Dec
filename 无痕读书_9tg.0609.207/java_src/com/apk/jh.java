package com.apk;

import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.HashSet;
/* compiled from: BridgeWebViewClient.java */
/* loaded from: classes8.dex */
public class jh extends WebViewClient {

    /* renamed from: do  reason: not valid java name */
    public boolean f2328do;

    static {
        new HashSet();
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        File m1777private;
        String str;
        String uri = webResourceRequest.getUrl().toString();
        if (uri.endsWith(".gif")) {
            return new WebResourceResponse("text/plain", "utf-8", new ByteArrayInputStream("".getBytes()));
        }
        if (this.f2328do) {
            String substring = TextUtils.isEmpty(uri) ? "" : uri.substring(uri.lastIndexOf("."));
            boolean z = false;
            if (!TextUtils.isEmpty(substring) && (substring.contains("gif") || substring.contains("jpeg") || substring.contains("jpg") || substring.contains("png") || substring.contains("svg") || substring.contains("webp") || substring.contains("ttf"))) {
                z = true;
            }
            if (z && (m1777private = mu.m1777private(uri)) != null) {
                if (!m1777private.exists()) {
                    u.m2643const(webView.getContext().getApplicationContext(), uri);
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(uri, options);
                    str = options.outMimeType.replace("image/", ".");
                } catch (Exception unused) {
                    str = "image/png";
                }
                try {
                    WebResourceResponse webResourceResponse = new WebResourceResponse(str, "utf-8", new FileInputStream(m1777private));
                    HashMap hashMap = new HashMap();
                    hashMap.put("Access-Control-Allow-Origin", "*");
                    hashMap.put("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE, PUT");
                    hashMap.put("Access-Control-Max-Age", "3600");
                    hashMap.put("Access-Control-Allow-Headers", "Content-Type,Access-Token,Authorization");
                    webResourceResponse.setResponseHeaders(hashMap);
                    return webResourceResponse;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }
}
