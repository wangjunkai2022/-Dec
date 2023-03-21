package com.baidu.tts.client.model;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.l.a;
import com.umeng.analytics.AnalyticsConfig;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class RecordData {

    /* renamed from: a  reason: collision with root package name */
    public ExecutorService f11178a = Executors.newSingleThreadExecutor();
    public a b;

    /* loaded from: classes8.dex */
    public class InsertData implements Callable<Integer> {
        public JSONObject b;
        public String c;
        public String d;

        public InsertData(JSONObject jSONObject, String str, String str2) {
            this.b = jSONObject;
            this.c = str;
            this.d = str2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            if (this.b != null || this.d != null) {
                RecordData.this.b.a(this.c, this.d, this.b.toString());
            } else {
                RecordData.this.b.c(this.c);
            }
            return 0;
        }
    }

    public RecordData(a aVar) {
        this.b = aVar;
    }

    public void setEndInfo(String str, String str2, int i, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("modeId", str2);
            jSONObject.put("result", i);
            jSONObject.put("endTime", str3);
            LoggerProxy.d("RecordData", "EndInfo json= " + jSONObject.toString());
            this.f11178a.submit(new InsertData(jSONObject, str, "endInfo"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void setStartInfo(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AnalyticsConfig.RTD_START_TIME, str3);
            jSONObject.put("modeId", str2);
            LoggerProxy.d("RecordData", " StartInfo json= " + jSONObject.toString());
            this.f11178a.submit(new InsertData(null, str, null));
            this.f11178a.submit(new InsertData(jSONObject, str, "startInfo"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
