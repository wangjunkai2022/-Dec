package com.baidu.tts.loopj;

import org.apache.http.Header;
/* loaded from: classes8.dex */
public abstract class BaseJsonHttpResponseHandler<JSON_TYPE> extends TextHttpResponseHandler {
    public static final String LOG_TAG = "BaseJsonHttpRH";

    public BaseJsonHttpResponseHandler() {
        this("UTF-8");
    }

    @Override // com.baidu.tts.loopj.TextHttpResponseHandler
    public final void onFailure(final int i, final Header[] headerArr, final String str, final Throwable th) {
        if (str != null) {
            Runnable runnable = new Runnable() { // from class: com.baidu.tts.loopj.BaseJsonHttpResponseHandler.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final Object parseResponse = BaseJsonHttpResponseHandler.this.parseResponse(str, true);
                        BaseJsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.baidu.tts.loopj.BaseJsonHttpResponseHandler.2.1
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                BaseJsonHttpResponseHandler.this.onFailure(i, headerArr, th, str, parseResponse);
                            }
                        });
                    } catch (Throwable th2) {
                        AsyncHttpClient.log.d(BaseJsonHttpResponseHandler.LOG_TAG, "parseResponse thrown an problem", th2);
                        BaseJsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.baidu.tts.loopj.BaseJsonHttpResponseHandler.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                BaseJsonHttpResponseHandler.this.onFailure(i, headerArr, th, str, null);
                            }
                        });
                    }
                }
            };
            if (!getUseSynchronousMode() && !getUsePoolThread()) {
                Thread thread = new Thread(runnable);
                thread.setName("bdtts-BaseJsonHttpRH");
                thread.start();
                return;
            }
            runnable.run();
            return;
        }
        onFailure(i, headerArr, th, null, null);
    }

    public abstract void onFailure(int i, Header[] headerArr, Throwable th, String str, JSON_TYPE json_type);

    @Override // com.baidu.tts.loopj.TextHttpResponseHandler
    public final void onSuccess(final int i, final Header[] headerArr, final String str) {
        if (i != 204) {
            Runnable runnable = new Runnable() { // from class: com.baidu.tts.loopj.BaseJsonHttpResponseHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final Object parseResponse = BaseJsonHttpResponseHandler.this.parseResponse(str, false);
                        BaseJsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.baidu.tts.loopj.BaseJsonHttpResponseHandler.1.1
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                BaseJsonHttpResponseHandler.this.onSuccess(i, headerArr, str, parseResponse);
                            }
                        });
                    } catch (Throwable th) {
                        AsyncHttpClient.log.d(BaseJsonHttpResponseHandler.LOG_TAG, "parseResponse thrown an problem", th);
                        BaseJsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.baidu.tts.loopj.BaseJsonHttpResponseHandler.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                BaseJsonHttpResponseHandler.this.onFailure(i, headerArr, th, str, null);
                            }
                        });
                    }
                }
            };
            if (!getUseSynchronousMode() && !getUsePoolThread()) {
                Thread thread = new Thread(runnable);
                thread.setName("bdtts-BaseJsonHttpRH");
                thread.start();
                return;
            }
            runnable.run();
            return;
        }
        onSuccess(i, headerArr, null, null);
    }

    public abstract void onSuccess(int i, Header[] headerArr, String str, JSON_TYPE json_type);

    public abstract JSON_TYPE parseResponse(String str, boolean z) throws Throwable;

    public BaseJsonHttpResponseHandler(String str) {
        super(str);
    }
}
