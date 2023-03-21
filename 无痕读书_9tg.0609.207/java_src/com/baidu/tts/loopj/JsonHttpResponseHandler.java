package com.baidu.tts.loopj;

import com.apk.Cgoto;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes8.dex */
public class JsonHttpResponseHandler extends TextHttpResponseHandler {
    public static final String LOG_TAG = "JsonHttpRH";
    public boolean useRFC5179CompatibilityMode;

    public JsonHttpResponseHandler() {
        super("UTF-8");
        this.useRFC5179CompatibilityMode = true;
    }

    public boolean isUseRFC5179CompatibilityMode() {
        return this.useRFC5179CompatibilityMode;
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        AsyncHttpClient.log.w(LOG_TAG, "onFailure(int, Header[], Throwable, JSONObject) was not overriden, but callback was received", th);
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        AsyncHttpClient.log.w(LOG_TAG, "onSuccess(int, Header[], JSONObject) was not overriden, but callback was received");
    }

    public Object parseResponse(byte[] bArr) throws JSONException {
        Object obj = null;
        if (bArr == null) {
            return null;
        }
        String responseString = TextHttpResponseHandler.getResponseString(bArr, getCharset());
        if (responseString != null) {
            responseString = responseString.trim();
            if (this.useRFC5179CompatibilityMode) {
                if (responseString.startsWith("{") || responseString.startsWith("[")) {
                    obj = new JSONTokener(responseString).nextValue();
                }
            } else if ((responseString.startsWith("{") && responseString.endsWith("}")) || (responseString.startsWith("[") && responseString.endsWith("]"))) {
                obj = new JSONTokener(responseString).nextValue();
            } else if (responseString.startsWith("\"") && responseString.endsWith("\"")) {
                obj = responseString.substring(1, responseString.length() - 1);
            }
        }
        return obj == null ? responseString : obj;
    }

    public void setUseRFC5179CompatibilityMode(boolean z) {
        this.useRFC5179CompatibilityMode = z;
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONArray jSONArray) {
        AsyncHttpClient.log.w(LOG_TAG, "onFailure(int, Header[], Throwable, JSONArray) was not overriden, but callback was received", th);
    }

    public void onSuccess(int i, Header[] headerArr, JSONArray jSONArray) {
        AsyncHttpClient.log.w(LOG_TAG, "onSuccess(int, Header[], JSONArray) was not overriden, but callback was received");
    }

    public JsonHttpResponseHandler(String str) {
        super(str);
        this.useRFC5179CompatibilityMode = true;
    }

    @Override // com.baidu.tts.loopj.TextHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, String str, Throwable th) {
        AsyncHttpClient.log.w(LOG_TAG, "onFailure(int, Header[], String, Throwable) was not overriden, but callback was received", th);
    }

    @Override // com.baidu.tts.loopj.TextHttpResponseHandler
    public void onSuccess(int i, Header[] headerArr, String str) {
        AsyncHttpClient.log.w(LOG_TAG, "onSuccess(int, Header[], String) was not overriden, but callback was received");
    }

    @Override // com.baidu.tts.loopj.TextHttpResponseHandler, com.baidu.tts.loopj.AsyncHttpResponseHandler
    public final void onFailure(final int i, final Header[] headerArr, final byte[] bArr, final Throwable th) {
        if (bArr != null) {
            Runnable runnable = new Runnable() { // from class: com.baidu.tts.loopj.JsonHttpResponseHandler.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final Object parseResponse = JsonHttpResponseHandler.this.parseResponse(bArr);
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.baidu.tts.loopj.JsonHttpResponseHandler.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!JsonHttpResponseHandler.this.useRFC5179CompatibilityMode && parseResponse == null) {
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    JsonHttpResponseHandler.this.onFailure(i, headerArr, (String) null, th);
                                    return;
                                }
                                Object obj = parseResponse;
                                if (obj instanceof JSONObject) {
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    JsonHttpResponseHandler.this.onFailure(i, headerArr, th, (JSONObject) obj);
                                } else if (obj instanceof JSONArray) {
                                    AnonymousClass2 anonymousClass23 = AnonymousClass2.this;
                                    JsonHttpResponseHandler.this.onFailure(i, headerArr, th, (JSONArray) obj);
                                } else if (obj instanceof String) {
                                    AnonymousClass2 anonymousClass24 = AnonymousClass2.this;
                                    JsonHttpResponseHandler.this.onFailure(i, headerArr, (String) obj, th);
                                } else {
                                    AnonymousClass2 anonymousClass25 = AnonymousClass2.this;
                                    JsonHttpResponseHandler jsonHttpResponseHandler = JsonHttpResponseHandler.this;
                                    int i2 = i;
                                    Header[] headerArr2 = headerArr;
                                    StringBuilder m1016super = Cgoto.m1016super("Unexpected response type ");
                                    m1016super.append(parseResponse.getClass().getName());
                                    jsonHttpResponseHandler.onFailure(i2, headerArr2, new JSONException(m1016super.toString()), (JSONObject) null);
                                }
                            }
                        });
                    } catch (JSONException e) {
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.baidu.tts.loopj.JsonHttpResponseHandler.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                JsonHttpResponseHandler.this.onFailure(i, headerArr, e, (JSONObject) null);
                            }
                        });
                    }
                }
            };
            if (!getUseSynchronousMode() && !getUsePoolThread()) {
                Thread thread = new Thread(runnable);
                thread.setName("bdtts-JsonHttpRH");
                thread.start();
                return;
            }
            runnable.run();
            return;
        }
        AsyncHttpClient.log.v(LOG_TAG, "response body is null, calling onFailure(Throwable, JSONObject)");
        onFailure(i, headerArr, th, (JSONObject) null);
    }

    @Override // com.baidu.tts.loopj.TextHttpResponseHandler, com.baidu.tts.loopj.AsyncHttpResponseHandler
    public final void onSuccess(final int i, final Header[] headerArr, final byte[] bArr) {
        if (i != 204) {
            Runnable runnable = new Runnable() { // from class: com.baidu.tts.loopj.JsonHttpResponseHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final Object parseResponse = JsonHttpResponseHandler.this.parseResponse(bArr);
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.baidu.tts.loopj.JsonHttpResponseHandler.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!JsonHttpResponseHandler.this.useRFC5179CompatibilityMode && parseResponse == null) {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    JsonHttpResponseHandler.this.onSuccess(i, headerArr, (String) null);
                                    return;
                                }
                                Object obj = parseResponse;
                                if (obj instanceof JSONObject) {
                                    AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                    JsonHttpResponseHandler.this.onSuccess(i, headerArr, (JSONObject) obj);
                                } else if (obj instanceof JSONArray) {
                                    AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                                    JsonHttpResponseHandler.this.onSuccess(i, headerArr, (JSONArray) obj);
                                } else if (obj instanceof String) {
                                    if (JsonHttpResponseHandler.this.useRFC5179CompatibilityMode) {
                                        AnonymousClass1 anonymousClass14 = AnonymousClass1.this;
                                        JsonHttpResponseHandler.this.onFailure(i, headerArr, (String) parseResponse, new JSONException("Response cannot be parsed as JSON data"));
                                        return;
                                    }
                                    AnonymousClass1 anonymousClass15 = AnonymousClass1.this;
                                    JsonHttpResponseHandler.this.onSuccess(i, headerArr, (String) parseResponse);
                                } else {
                                    AnonymousClass1 anonymousClass16 = AnonymousClass1.this;
                                    JsonHttpResponseHandler jsonHttpResponseHandler = JsonHttpResponseHandler.this;
                                    int i2 = i;
                                    Header[] headerArr2 = headerArr;
                                    StringBuilder m1016super = Cgoto.m1016super("Unexpected response type ");
                                    m1016super.append(parseResponse.getClass().getName());
                                    jsonHttpResponseHandler.onFailure(i2, headerArr2, new JSONException(m1016super.toString()), (JSONObject) null);
                                }
                            }
                        });
                    } catch (JSONException e) {
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.baidu.tts.loopj.JsonHttpResponseHandler.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                JsonHttpResponseHandler.this.onFailure(i, headerArr, e, (JSONObject) null);
                            }
                        });
                    }
                }
            };
            if (!getUseSynchronousMode() && !getUsePoolThread()) {
                Thread thread = new Thread(runnable);
                thread.setName("bdtts-JsonHttpRH");
                thread.start();
                return;
            }
            runnable.run();
            return;
        }
        onSuccess(i, headerArr, new JSONObject());
    }

    public JsonHttpResponseHandler(boolean z) {
        super("UTF-8");
        this.useRFC5179CompatibilityMode = true;
        this.useRFC5179CompatibilityMode = z;
    }

    public JsonHttpResponseHandler(String str, boolean z) {
        super(str);
        this.useRFC5179CompatibilityMode = true;
        this.useRFC5179CompatibilityMode = z;
    }
}
