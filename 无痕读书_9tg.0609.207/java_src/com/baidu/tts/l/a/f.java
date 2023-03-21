package com.baidu.tts.l.a;

import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.f.o;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.loopj.RequestHandle;
import com.baidu.tts.loopj.RequestParams;
import com.baidu.tts.loopj.SyncHttpClient;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.Callable;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: GetServerDefaultModelsWork.java */
/* loaded from: classes8.dex */
public class f implements Callable<ModelBags> {

    /* renamed from: a  reason: collision with root package name */
    public RequestHandle f11240a;

    private StringEntity b() throws UnsupportedEncodingException {
        try {
            JSONObject jSONObject = new JSONObject(EmbeddedSynthesizerEngine.bdTTSGetEngineParam());
            jSONObject.put(com.baidu.tts.f.g.FUNCTION.a(), "getDefaultList");
            return new StringEntity(jSONObject.toString());
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public ModelBags call() throws Exception {
        SyncHttpClient syncHttpClient = new SyncHttpClient(true, 80, 443);
        String a2 = o.MODEL_SERVER.a();
        HttpEntity b = b();
        b bVar = new b();
        this.f11240a = syncHttpClient.post(null, a2, b, RequestParams.APPLICATION_JSON, bVar);
        return bVar.a();
    }
}
