package com.baidu.tts.l.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.f.n;
import com.baidu.tts.loopj.JsonHttpResponseHandler;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: GetModelFileInfosHttpHandler.java */
/* loaded from: classes8.dex */
public class e extends JsonHttpResponseHandler {

    /* renamed from: a  reason: collision with root package name */
    public TtsError f11239a;
    public ModelFileBags b;

    public ModelFileBags a() {
        return this.b;
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler, com.baidu.tts.loopj.TextHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, String str, Throwable th) {
        LoggerProxy.d("GetModelFileInfosHttpHandler", "onFailure1");
        this.f11239a = com.baidu.tts.h.a.c.a().a(n.MODEL_REQUEST_ERROR, i, str, th);
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler
    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        LoggerProxy.d("GetModelFileInfosHttpHandler", "onSuccess response=" + jSONObject);
        int optInt = jSONObject.optInt(com.baidu.tts.f.g.ERROR_NUMBER.a());
        String optString = jSONObject.optString(com.baidu.tts.f.g.ERROR_MESSAGE.a());
        if (optInt != 0 && optInt != -4005) {
            this.f11239a = com.baidu.tts.h.a.c.a().a(n.MODEL_SERVER_ERROR, optInt, optString);
            return;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(com.baidu.tts.f.g.DATA.b());
        ModelFileBags modelFileBags = new ModelFileBags();
        this.b = modelFileBags;
        modelFileBags.parseJson(optJSONArray);
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        LoggerProxy.d("GetModelFileInfosHttpHandler", "onFailure2");
        this.f11239a = com.baidu.tts.h.a.c.a().a(n.MODEL_REQUEST_ERROR, i, jSONObject != null ? jSONObject.toString() : null, th);
    }
}
