package com.baidu.tts.loopj;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
/* loaded from: classes8.dex */
public final class HttpGet extends HttpEntityEnclosingRequestBase {
    public static final String METHOD_NAME = "GET";

    public HttpGet() {
    }

    public String getMethod() {
        return METHOD_NAME;
    }

    public HttpGet(URI uri) {
        setURI(uri);
    }

    public HttpGet(String str) {
        setURI(URI.create(str));
    }
}
