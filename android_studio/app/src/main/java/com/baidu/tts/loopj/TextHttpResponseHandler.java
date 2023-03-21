package com.baidu.tts.loopj;

import java.io.UnsupportedEncodingException;
import org.apache.http.Header;

/* loaded from: classes8.dex */
public abstract class TextHttpResponseHandler extends AsyncHttpResponseHandler {
    public static final String LOG_TAG = "TextHttpRH";

    public TextHttpResponseHandler() {
        this("UTF-8");
    }

    public static String getResponseString(byte[] bArr, String str) {
        String str2;
        if (bArr == null) {
            str2 = null;
        } else {
            try {
                str2 = new String(bArr, str);
            } catch (UnsupportedEncodingException e) {
                AsyncHttpClient.log.e(LOG_TAG, "Encoding response into string failed", e);
                return null;
            }
        }
        return (str2 == null || !str2.startsWith("\ufeff")) ? str2 : str2.substring(1);
    }

    public abstract void onFailure(int i, Header[] headerArr, String str, Throwable th);

    @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        onFailure(i, headerArr, getResponseString(bArr, getCharset()), th);
    }

    public abstract void onSuccess(int i, Header[] headerArr, String str);

    @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
    public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        onSuccess(i, headerArr, getResponseString(bArr, getCharset()));
    }

    public TextHttpResponseHandler(String str) {
        setCharset(str);
    }
}
