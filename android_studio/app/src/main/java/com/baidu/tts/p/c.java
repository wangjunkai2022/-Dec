package com.baidu.tts.p;

import android.content.Context;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.o;
import com.baidu.tts.loopj.RequestHandle;
import com.baidu.tts.loopj.SyncHttpClient;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;

/* compiled from: UploadStatistics.java */
/* loaded from: classes8.dex */
public class c {
    public Context b;
    public com.baidu.tts.l.a c;
    public FutureTask<Integer> d;
    public int e = 0;
    public int f = 0;

    /* renamed from: a  reason: collision with root package name */
    public ExecutorService f11259a = Executors.newSingleThreadExecutor();

    /* compiled from: UploadStatistics.java */
    /* loaded from: classes8.dex */
    public class a implements Callable<Integer> {
        public RequestHandle b;

        public a() {
        }

        private UrlEncodedFormEntity b() {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject();
            ArrayList arrayList2 = c.this.c.f().get("listId");
            if (arrayList2.size() != 0) {
                c.this.e = ((Integer) arrayList2.get(0)).intValue();
                c.this.f = ((Integer) arrayList2.get(arrayList2.size() - 1)).intValue();
            }
            JSONArray jSONArray = new JSONArray((Collection) c.this.c.f().get(LitePalParser.NODE_LIST));
            try {
                jSONObject.put("deviceInfo", com.baidu.tts.p.a.a(c.this.b));
                jSONObject.put("appinfo", com.baidu.tts.p.a.b(c.this.b));
                jSONObject.put("methodinfo", jSONArray);
                LoggerProxy.d("UploadStatistics", "StatisticsData= " + jSONObject.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            arrayList.add(new BasicNameValuePair("d", jSONObject.toString()));
            try {
                return new UrlEncodedFormEntity(arrayList, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Integer call() throws Exception {
            SyncHttpClient syncHttpClient = new SyncHttpClient(true, 80, 443);
            String a2 = o.STATISTICS_MODELLOAD_SERVER.a();
            HttpEntity b = b();
            d dVar = new d();
            this.b = syncHttpClient.post(null, a2, b, null, dVar);
            final int a3 = dVar.a();
            c.this.f11259a.submit(new Runnable() { // from class: com.baidu.tts.p.c.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (a3 == 0) {
                        int a4 = c.this.c.a(c.this.e, c.this.f);
                        LoggerProxy.d("UploadStatistics", "delete database code==" + a4);
                    }
                }
            });
            return Integer.valueOf(a3);
        }
    }

    public c(Context context) {
        this.b = context;
        this.c = new com.baidu.tts.l.a(context);
    }

    public FutureTask<Integer> a() {
        FutureTask<Integer> futureTask = new FutureTask<>(new a());
        this.d = futureTask;
        this.f11259a.submit(futureTask);
        return this.d;
    }

    public void b() {
        this.d.cancel(true);
    }
}
