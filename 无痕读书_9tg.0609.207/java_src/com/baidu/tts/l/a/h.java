package com.baidu.tts.l.a;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.f.o;
import com.baidu.tts.loopj.RequestHandle;
import com.baidu.tts.loopj.RequestParams;
import com.baidu.tts.loopj.SyncHttpClient;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.Callable;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: GetServerModelsWork.java */
/* loaded from: classes8.dex */
public class h implements Callable<ModelBags> {

    /* renamed from: a  reason: collision with root package name */
    public Conditions f11242a;
    public RequestHandle b;

    public h(Conditions conditions) {
        this.f11242a = conditions;
    }

    private StringEntity b() throws UnsupportedEncodingException {
        JSONObject jSONConditions = this.f11242a.getJSONConditions();
        try {
            jSONConditions.put(com.baidu.tts.f.g.IVERSION.b(), "2");
            jSONConditions.put(com.baidu.tts.f.g.FUNCTION.a(), "getList");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        String jSONObject = jSONConditions.toString();
        LoggerProxy.d("GetServerModelsWork", "getlist params=" + jSONObject);
        return new StringEntity(jSONObject);
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public ModelBags call() throws Exception {
        SyncHttpClient syncHttpClient = new SyncHttpClient(true, 80, 443);
        String a2 = o.MODEL_SERVER.a();
        HttpEntity b = b();
        b bVar = new b();
        this.b = syncHttpClient.post(null, a2, b, RequestParams.APPLICATION_JSON, bVar);
        return bVar.a();
    }
}
