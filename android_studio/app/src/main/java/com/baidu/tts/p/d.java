package com.baidu.tts.p;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.f.g;
import com.baidu.tts.f.n;
import com.baidu.tts.loopj.JsonHttpResponseHandler;
import org.apache.http.Header;
import org.json.JSONObject;

/* compiled from: UploadStatisticsHandler.java */
/* loaded from: classes8.dex */
public class d extends JsonHttpResponseHandler {

    /* renamed from: a  reason: collision with root package name */
    public TtsError f11262a;
    public int b = -1;

    public int a() {
        return this.b;
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        this.f11262a = com.baidu.tts.h.a.c.a().a(n.MODEL_REQUEST_ERROR, i, jSONObject != null ? jSONObject.toString() : null, th);
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler
    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        int optInt = jSONObject.optInt(g.ERROR_NUMBER.a());
        String optString = jSONObject.optString(g.ERROR_MESSAGE.a());
        if (optInt == 0) {
            this.b = optInt;
        } else {
            this.f11262a = com.baidu.tts.h.a.c.a().a(n.MODEL_SERVER_ERROR, optInt, optString);
        }
    }
}
