package com.baidu.tts.l.a;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.f.o;
import com.baidu.tts.loopj.RequestHandle;
import com.baidu.tts.loopj.RequestParams;
import com.baidu.tts.loopj.SyncHttpClient;
import com.baidu.tts.tools.JsonTool;
import java.io.UnsupportedEncodingException;
import java.util.Set;
import java.util.concurrent.Callable;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: GetServerModelFileInfosWork.java */
/* loaded from: classes8.dex */
public class g implements Callable<ModelFileBags> {

    /* renamed from: a  reason: collision with root package name */
    public RequestHandle f11241a;
    public Set<String> b;

    public g(Set<String> set) {
        this.b = set;
    }

    private StringEntity b() throws UnsupportedEncodingException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.baidu.tts.f.g.FUNCTION.a(), "getURL");
            jSONObject.put(com.baidu.tts.f.g.IVERSION.b(), "2");
            jSONObject.put(com.baidu.tts.f.g.ID.b(), JsonTool.fromSetToJson(this.b));
            String jSONObject2 = jSONObject.toString();
            LoggerProxy.d("GetServerModelFileInfosWork", "geturl params=" + jSONObject2);
            return new StringEntity(jSONObject2);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public ModelFileBags call() throws Exception {
        HttpEntity b = b();
        e eVar = new e();
        this.f11241a = new SyncHttpClient(true, 80, 443).post(null, o.MODEL_SERVER.a() + "https=1", b, RequestParams.APPLICATION_JSON, eVar);
        return eVar.a();
    }
}
