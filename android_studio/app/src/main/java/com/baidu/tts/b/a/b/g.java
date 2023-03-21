package com.baidu.tts.b.a.b;

import com.baidu.tts.loopj.AsyncHttpResponseHandler;
import com.baidu.tts.loopj.RequestParams;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;

/* compiled from: ResponseHandler.java */
/* loaded from: classes8.dex */
public abstract class g extends AsyncHttpResponseHandler {

    /* renamed from: a  reason: collision with root package name */
    public String f11152a;
    public HttpEntity b;

    public String a(HttpEntity httpEntity) {
        Header contentType = httpEntity.getContentType();
        if (contentType == null || !RequestParams.APPLICATION_JSON.equals(contentType.getValue())) {
            return null;
        }
        return RequestParams.APPLICATION_JSON;
    }

    public abstract void a(int i, Header[] headerArr, String str, HttpEntity httpEntity);

    public abstract void a(int i, Header[] headerArr, String str, HttpEntity httpEntity, Throwable th);

    @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        a(i, headerArr, this.f11152a, this.b, th);
    }

    @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
    public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        a(i, headerArr, this.f11152a, this.b);
    }

    @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler, com.baidu.tts.loopj.ResponseHandlerInterface
    public void sendResponseMessage(HttpResponse httpResponse) throws IOException {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        StatusLine statusLine = httpResponse.getStatusLine();
        HttpEntity entity = httpResponse.getEntity();
        this.b = entity;
        this.f11152a = a(entity);
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (statusLine.getStatusCode() >= 300) {
            sendFailureMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), null, new HttpResponseException(statusLine.getStatusCode(), statusLine.getReasonPhrase()));
        } else {
            sendSuccessMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), null);
        }
    }
}
