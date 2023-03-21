package com.baidu.tts.d.a;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.n;
import com.baidu.tts.loopj.RangeFileAsyncHttpResponseHandler;
import java.io.File;
import org.apache.http.Header;
/* compiled from: ModelFileResponseHandler.java */
/* loaded from: classes8.dex */
public class g extends RangeFileAsyncHttpResponseHandler {

    /* renamed from: a  reason: collision with root package name */
    public c f11188a;

    public g(File file, c cVar) {
        super(file);
        this.f11188a = cVar;
    }

    @Override // com.baidu.tts.loopj.FileAsyncHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, Throwable th, File file) {
        String str;
        if (th != null) {
            Throwable cause = th.getCause();
            if (cause == null) {
                str = th.getMessage();
            } else {
                str = cause.getMessage();
            }
        } else {
            str = null;
        }
        LoggerProxy.d("ModelFileResponseHandler", "onFailure statuscode=" + i + "--msg=" + str);
        this.f11188a.a(com.baidu.tts.h.a.c.a().a(n.MODEL_REQUEST_ERROR, i, "download failure", th));
    }

    @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
    public void onProgress(long j, long j2) {
        this.f11188a.a(j, j2);
    }

    @Override // com.baidu.tts.loopj.FileAsyncHttpResponseHandler
    public void onSuccess(int i, Header[] headerArr, File file) {
        LoggerProxy.d("ModelFileResponseHandler", "onSuccess");
        this.f11188a.e();
    }
}
