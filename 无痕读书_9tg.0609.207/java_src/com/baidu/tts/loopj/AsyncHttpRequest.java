package com.baidu.tts.loopj;

import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes8.dex */
public class AsyncHttpRequest implements Runnable {
    public boolean cancelIsNotified;
    public final AbstractHttpClient client;
    public final HttpContext context;
    public int executionCount;
    public final AtomicBoolean isCancelled = new AtomicBoolean();
    public volatile boolean isFinished;
    public boolean isRequestPreProcessed;
    public final HttpUriRequest request;
    public final ResponseHandlerInterface responseHandler;

    public AsyncHttpRequest(AbstractHttpClient abstractHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, ResponseHandlerInterface responseHandlerInterface) {
        this.client = (AbstractHttpClient) Utils.notNull(abstractHttpClient, "client");
        this.context = (HttpContext) Utils.notNull(httpContext, "context");
        this.request = (HttpUriRequest) Utils.notNull(httpUriRequest, TTLogUtil.TAG_EVENT_REQUEST);
        this.responseHandler = (ResponseHandlerInterface) Utils.notNull(responseHandlerInterface, "responseHandler");
    }

    private void makeRequest() throws IOException {
        if (isCancelled()) {
            return;
        }
        if (this.request.getURI().getScheme() != null) {
            ResponseHandlerInterface responseHandlerInterface = this.responseHandler;
            if (responseHandlerInterface instanceof RangeFileAsyncHttpResponseHandler) {
                ((RangeFileAsyncHttpResponseHandler) responseHandlerInterface).updateRequestHeaders(this.request);
            }
            HttpResponse execute = this.client.execute(this.request, this.context);
            if (isCancelled()) {
                return;
            }
            ResponseHandlerInterface responseHandlerInterface2 = this.responseHandler;
            responseHandlerInterface2.onPreProcessResponse(responseHandlerInterface2, execute);
            if (isCancelled()) {
                return;
            }
            this.responseHandler.sendResponseMessage(execute);
            if (isCancelled()) {
                return;
            }
            ResponseHandlerInterface responseHandlerInterface3 = this.responseHandler;
            responseHandlerInterface3.onPostProcessResponse(responseHandlerInterface3, execute);
            return;
        }
        throw new MalformedURLException("No valid URI scheme was provided");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0008 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void makeRequestWithRetries() throws java.io.IOException {
        /*
            r6 = this;
            org.apache.http.impl.client.AbstractHttpClient r0 = r6.client
            org.apache.http.client.HttpRequestRetryHandler r0 = r0.getHttpRequestRetryHandler()
            r1 = 0
            r2 = 1
        L8:
            if (r2 == 0) goto Lab
            r6.makeRequest()     // Catch: java.lang.Exception -> Le java.io.IOException -> L11 java.lang.NullPointerException -> L26 java.net.UnknownHostException -> L4e
            return
        Le:
            r0 = move-exception
            goto L8c
        L11:
            r1 = move-exception
            boolean r2 = r6.isCancelled()     // Catch: java.lang.Exception -> Le
            if (r2 == 0) goto L19
            return
        L19:
            int r2 = r6.executionCount     // Catch: java.lang.Exception -> Le
            int r2 = r2 + 1
            r6.executionCount = r2     // Catch: java.lang.Exception -> Le
            org.apache.http.protocol.HttpContext r3 = r6.context     // Catch: java.lang.Exception -> Le
            boolean r2 = r0.retryRequest(r1, r2, r3)     // Catch: java.lang.Exception -> Le
            goto L81
        L26:
            r1 = move-exception
            java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Exception -> Le
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Le
            r3.<init>()     // Catch: java.lang.Exception -> Le
            java.lang.String r4 = "NPE in HttpClient: "
            r3.append(r4)     // Catch: java.lang.Exception -> Le
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Exception -> Le
            r3.append(r1)     // Catch: java.lang.Exception -> Le
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Exception -> Le
            r2.<init>(r1)     // Catch: java.lang.Exception -> Le
            int r1 = r6.executionCount     // Catch: java.lang.Exception -> Le
            int r1 = r1 + 1
            r6.executionCount = r1     // Catch: java.lang.Exception -> Le
            org.apache.http.protocol.HttpContext r3 = r6.context     // Catch: java.lang.Exception -> Le
            boolean r1 = r0.retryRequest(r2, r1, r3)     // Catch: java.lang.Exception -> Le
            goto L7e
        L4e:
            r1 = move-exception
            java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Exception -> Le
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Le
            r3.<init>()     // Catch: java.lang.Exception -> Le
            java.lang.String r4 = "UnknownHostException exception: "
            r3.append(r4)     // Catch: java.lang.Exception -> Le
            java.lang.String r4 = r1.getMessage()     // Catch: java.lang.Exception -> Le
            r3.append(r4)     // Catch: java.lang.Exception -> Le
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> Le
            r2.<init>(r3)     // Catch: java.lang.Exception -> Le
            int r3 = r6.executionCount     // Catch: java.lang.Exception -> Le
            if (r3 < 0) goto L7d
            int r3 = r6.executionCount     // Catch: java.lang.Exception -> Le
            int r3 = r3 + 1
            r6.executionCount = r3     // Catch: java.lang.Exception -> Le
            org.apache.http.protocol.HttpContext r4 = r6.context     // Catch: java.lang.Exception -> Le
            boolean r1 = r0.retryRequest(r1, r3, r4)     // Catch: java.lang.Exception -> Le
            if (r1 == 0) goto L7d
            r1 = 1
            goto L7e
        L7d:
            r1 = 0
        L7e:
            r5 = r2
            r2 = r1
            r1 = r5
        L81:
            if (r2 == 0) goto L8
            com.baidu.tts.loopj.ResponseHandlerInterface r3 = r6.responseHandler     // Catch: java.lang.Exception -> Le
            int r4 = r6.executionCount     // Catch: java.lang.Exception -> Le
            r3.sendRetryMessage(r4)     // Catch: java.lang.Exception -> Le
            goto L8
        L8c:
            com.baidu.tts.loopj.LogInterface r1 = com.baidu.tts.loopj.AsyncHttpClient.log
            java.lang.String r2 = "AsyncHttpRequest"
            java.lang.String r3 = "Unhandled exception origin cause"
            r1.e(r2, r3, r0)
            java.io.IOException r1 = new java.io.IOException
            java.lang.String r2 = "Unhandled exception: "
            java.lang.StringBuilder r2 = com.apk.Cgoto.m1016super(r2)
            java.lang.String r0 = r0.getMessage()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
        Lab:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.loopj.AsyncHttpRequest.makeRequestWithRetries():void");
    }

    private synchronized void sendCancelNotification() {
        if (!this.isFinished && this.isCancelled.get() && !this.cancelIsNotified) {
            this.cancelIsNotified = true;
            this.responseHandler.sendCancelMessage();
        }
    }

    public boolean cancel(boolean z) {
        this.isCancelled.set(true);
        this.request.abort();
        return isCancelled();
    }

    public Object getTag() {
        return this.responseHandler.getTag();
    }

    public boolean isCancelled() {
        boolean z = this.isCancelled.get();
        if (z) {
            sendCancelNotification();
        }
        return z;
    }

    public boolean isDone() {
        return isCancelled() || this.isFinished;
    }

    public void onPostProcessRequest(AsyncHttpRequest asyncHttpRequest) {
    }

    public void onPreProcessRequest(AsyncHttpRequest asyncHttpRequest) {
    }

    @Override // java.lang.Runnable
    public void run() {
        if (isCancelled()) {
            return;
        }
        if (!this.isRequestPreProcessed) {
            this.isRequestPreProcessed = true;
            onPreProcessRequest(this);
        }
        if (isCancelled()) {
            return;
        }
        this.responseHandler.sendStartMessage();
        if (isCancelled()) {
            return;
        }
        try {
            makeRequestWithRetries();
        } catch (IOException e) {
            if (!isCancelled()) {
                this.responseHandler.sendFailureMessage(0, null, null, e);
            } else {
                AsyncHttpClient.log.e("AsyncHttpRequest", "makeRequestWithRetries returned error", e);
            }
        }
        if (isCancelled()) {
            return;
        }
        this.responseHandler.sendFinishMessage();
        if (isCancelled()) {
            return;
        }
        onPostProcessRequest(this);
        this.isFinished = true;
    }

    public AsyncHttpRequest setRequestTag(Object obj) {
        this.responseHandler.setTag(obj);
        return this;
    }
}
