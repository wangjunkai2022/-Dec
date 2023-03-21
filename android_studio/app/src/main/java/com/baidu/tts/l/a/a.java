package com.baidu.tts.l.a;

import android.text.TextUtils;
import com.apk.Cgoto;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.f.o;
import com.baidu.tts.loopj.AsyncHttpResponseHandler;
import com.baidu.tts.loopj.RequestHandle;
import com.baidu.tts.loopj.RequestParams;
import com.baidu.tts.loopj.SyncHttpClient;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.Callable;
import org.apache.http.Header;
import org.apache.http.entity.StringEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CheckServerModelsUpdate.java */
/* loaded from: classes8.dex */
public class a implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    public RequestHandle f11234a;
    public JSONArray b;

    public a(JSONArray jSONArray) {
        this.b = jSONArray;
    }

    private StringEntity b() throws UnsupportedEncodingException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.baidu.tts.f.g.FUNCTION.a(), "checkUpdate");
            jSONObject.put(com.baidu.tts.f.g.MODELSINFO.a(), this.b);
            return new StringEntity(jSONObject.toString());
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public String call() throws Exception {
        final String[] strArr = {""};
        this.f11234a = new SyncHttpClient(true, 80, 443).post(null, o.MODEL_SERVER.a(), b(), RequestParams.APPLICATION_JSON, new AsyncHttpResponseHandler() { // from class: com.baidu.tts.l.a.a.1
            @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
            public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
                LoggerProxy.d("GetServerModelsWork", "onFileure statusCode:" + i);
            }

            @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
            public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
                String str = new String(bArr);
                StringBuilder m1020throw = Cgoto.m1020throw("statusCode: ", i, " response: ");
                m1020throw.append(new String(bArr));
                LoggerProxy.d("GetServerModelsWork", m1020throw.toString());
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (SpeechSynthesizer.REQUEST_DNS_OFF.equals(jSONObject.optString("err_no"))) {
                        strArr[0] = jSONObject.optString("info");
                    }
                } catch (Exception e) {
                    StringBuilder m1016super = Cgoto.m1016super("parse:");
                    m1016super.append(e.toString());
                    LoggerProxy.d("GetServerModelsWork", m1016super.toString());
                }
            }
        });
        return strArr[0];
    }
}
