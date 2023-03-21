package com.baidu.tts.loopj;

import com.apk.Cgoto;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpUriRequest;

/* loaded from: classes8.dex */
public abstract class RangeFileAsyncHttpResponseHandler extends FileAsyncHttpResponseHandler {
    public static final String LOG_TAG = "RangeFileAsyncHttpRH";
    public boolean append;
    public long current;

    public RangeFileAsyncHttpResponseHandler(File file) {
        super(file);
        this.current = 0L;
        this.append = false;
    }

    @Override // com.baidu.tts.loopj.FileAsyncHttpResponseHandler, com.baidu.tts.loopj.AsyncHttpResponseHandler
    public byte[] getResponseData(HttpEntity httpEntity) throws IOException {
        int read;
        if (httpEntity != null) {
            InputStream content = httpEntity.getContent();
            long contentLength = httpEntity.getContentLength() + this.current;
            FileOutputStream fileOutputStream = new FileOutputStream(getTargetFile(), this.append);
            if (content != null) {
                try {
                    byte[] bArr = new byte[4096];
                    while (this.current < contentLength && (read = content.read(bArr)) != -1 && !Thread.currentThread().isInterrupted()) {
                        this.current += read;
                        fileOutputStream.write(bArr, 0, read);
                        sendProgressMessage(this.current, contentLength);
                    }
                    return null;
                } finally {
                    content.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                }
            }
            return null;
        }
        return null;
    }

    @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler, com.baidu.tts.loopj.ResponseHandlerInterface
    public void sendResponseMessage(HttpResponse httpResponse) throws IOException {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        StatusLine statusLine = httpResponse.getStatusLine();
        if (statusLine.getStatusCode() == 416) {
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            sendSuccessMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), null);
        } else if (statusLine.getStatusCode() >= 300) {
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            sendFailureMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), null, new HttpResponseException(statusLine.getStatusCode(), statusLine.getReasonPhrase()));
        } else if (Thread.currentThread().isInterrupted()) {
        } else {
            Header firstHeader = httpResponse.getFirstHeader(AsyncHttpClient.HEADER_CONTENT_RANGE);
            if (firstHeader == null) {
                this.append = false;
                this.current = 0L;
            } else {
                LogInterface logInterface = AsyncHttpClient.log;
                StringBuilder m1016super = Cgoto.m1016super("Content-Range: ");
                m1016super.append(firstHeader.getValue());
                logInterface.v(LOG_TAG, m1016super.toString());
            }
            sendSuccessMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), getResponseData(httpResponse.getEntity()));
        }
    }

    public void updateRequestHeaders(HttpUriRequest httpUriRequest) {
        if (this.file.exists() && this.file.canWrite()) {
            this.current = this.file.length();
        }
        if (this.current > 0) {
            this.append = true;
            StringBuilder m1016super = Cgoto.m1016super("bytes=");
            m1016super.append(this.current);
            m1016super.append("-");
            httpUriRequest.setHeader("Range", m1016super.toString());
        }
    }
}
