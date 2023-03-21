package com.baidu.tts.loopj;

import android.os.Looper;
import com.apk.Cgoto;
import java.io.IOException;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
/* loaded from: classes8.dex */
public abstract class BinaryHttpResponseHandler extends AsyncHttpResponseHandler {
    public static final String LOG_TAG = "BinaryHttpRH";
    public String[] mAllowedContentTypes;

    public BinaryHttpResponseHandler() {
        this.mAllowedContentTypes = new String[]{RequestParams.APPLICATION_OCTET_STREAM, "image/jpeg", "image/png", "image/gif"};
    }

    public String[] getAllowedContentTypes() {
        return this.mAllowedContentTypes;
    }

    @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
    public abstract void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th);

    @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
    public abstract void onSuccess(int i, Header[] headerArr, byte[] bArr);

    @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler, com.baidu.tts.loopj.ResponseHandlerInterface
    public final void sendResponseMessage(HttpResponse httpResponse) throws IOException {
        String[] allowedContentTypes;
        StatusLine statusLine = httpResponse.getStatusLine();
        Header[] headers = httpResponse.getHeaders(AsyncHttpClient.HEADER_CONTENT_TYPE);
        if (headers.length != 1) {
            sendFailureMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), null, new HttpResponseException(statusLine.getStatusCode(), "None, or more than one, Content-Type Header found!"));
            return;
        }
        Header header = headers[0];
        boolean z = false;
        for (String str : getAllowedContentTypes()) {
            try {
                if (Pattern.matches(str, header.getValue())) {
                    z = true;
                }
            } catch (PatternSyntaxException e) {
                AsyncHttpClient.log.e(LOG_TAG, "Given pattern is not valid: " + str, e);
            }
        }
        if (!z) {
            int statusCode = statusLine.getStatusCode();
            Header[] allHeaders = httpResponse.getAllHeaders();
            int statusCode2 = statusLine.getStatusCode();
            StringBuilder m1016super = Cgoto.m1016super("Content-Type (");
            m1016super.append(header.getValue());
            m1016super.append(") not allowed!");
            sendFailureMessage(statusCode, allHeaders, null, new HttpResponseException(statusCode2, m1016super.toString()));
            return;
        }
        super.sendResponseMessage(httpResponse);
    }

    public BinaryHttpResponseHandler(String[] strArr) {
        this.mAllowedContentTypes = new String[]{RequestParams.APPLICATION_OCTET_STREAM, "image/jpeg", "image/png", "image/gif"};
        if (strArr != null) {
            this.mAllowedContentTypes = strArr;
        } else {
            AsyncHttpClient.log.e(LOG_TAG, "Constructor passed allowedContentTypes was null !");
        }
    }

    public BinaryHttpResponseHandler(String[] strArr, Looper looper) {
        super(looper);
        this.mAllowedContentTypes = new String[]{RequestParams.APPLICATION_OCTET_STREAM, "image/jpeg", "image/png", "image/gif"};
        if (strArr != null) {
            this.mAllowedContentTypes = strArr;
        } else {
            AsyncHttpClient.log.e(LOG_TAG, "Constructor passed allowedContentTypes was null !");
        }
    }
}
