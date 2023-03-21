package com.baidu.tts.l.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.f.n;
import com.baidu.tts.loopj.JsonHttpResponseHandler;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: GetListHttpHandler.java */
/* loaded from: classes8.dex */
public class b extends JsonHttpResponseHandler {

    /* renamed from: a  reason: collision with root package name */
    public TtsError f11236a;
    public ModelBags b;

    public ModelBags a() {
        return this.b;
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler, com.baidu.tts.loopj.TextHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, String str, Throwable th) {
        LoggerProxy.d("GetListHttpHandler", "onFailure1");
        this.f11236a = com.baidu.tts.h.a.c.a().a(n.MODEL_REQUEST_ERROR, i, str, th);
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler
    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        LoggerProxy.d("GetListHttpHandler", "onSuccess response=" + jSONObject);
        int optInt = jSONObject.optInt(com.baidu.tts.f.g.ERROR_NUMBER.a());
        String optString = jSONObject.optString(com.baidu.tts.f.g.ERROR_MESSAGE.a());
        if (optInt != 0 && optInt != -1004) {
            this.f11236a = com.baidu.tts.h.a.c.a().a(n.MODEL_SERVER_ERROR, optInt, optString);
            return;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(com.baidu.tts.f.g.DATA_LIST.b());
        ModelBags modelBags = new ModelBags();
        this.b = modelBags;
        modelBags.parseJson(optJSONArray);
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        LoggerProxy.d("GetListHttpHandler", "onFailure2");
        this.f11236a = com.baidu.tts.h.a.c.a().a(n.MODEL_REQUEST_ERROR, i, jSONObject != null ? jSONObject.toString() : null, th);
    }
}
