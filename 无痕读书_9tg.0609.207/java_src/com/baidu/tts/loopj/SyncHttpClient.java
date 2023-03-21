package com.baidu.tts.loopj;

import android.content.Context;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes8.dex */
public class SyncHttpClient extends AsyncHttpClient {
    public RequestHandle mRequestHandle;

    public SyncHttpClient() {
        super(false, 80, 443);
    }

    @Override // com.baidu.tts.loopj.AsyncHttpClient
    public RequestHandle sendRequest(DefaultHttpClient defaultHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, String str, ResponseHandlerInterface responseHandlerInterface, Context context) {
        if (str != null) {
            httpUriRequest.addHeader(AsyncHttpClient.HEADER_CONTENT_TYPE, str);
        }
        responseHandlerInterface.setUseSynchronousMode(true);
        AsyncHttpRequest newAsyncHttpRequest = newAsyncHttpRequest(defaultHttpClient, httpContext, httpUriRequest, str, responseHandlerInterface, context);
        this.mRequestHandle = new RequestHandle(newAsyncHttpRequest);
        newAsyncHttpRequest.run();
        return null;
    }

    public void stop() {
        RequestHandle requestHandle = this.mRequestHandle;
        if (requestHandle != null) {
            requestHandle.cancel(true);
            this.mRequestHandle = null;
        }
    }

    public SyncHttpClient(int i) {
        super(false, i, 443);
    }

    public SyncHttpClient(int i, int i2) {
        super(false, i, i2);
    }

    public SyncHttpClient(boolean z, int i, int i2) {
        super(z, i, i2);
    }

    public SyncHttpClient(SchemeRegistry schemeRegistry) {
        super(schemeRegistry);
    }
}
