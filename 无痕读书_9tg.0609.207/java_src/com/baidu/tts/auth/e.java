package com.baidu.tts.auth;

import android.text.TextUtils;
import com.apk.Cgoto;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.f.n;
import com.baidu.tts.loopj.AsyncHttpResponseHandler;
import com.baidu.tts.loopj.SyncHttpClient;
import com.baidu.tts.tools.StringTool;
import java.util.LinkedList;
import org.apache.http.Header;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: OnlineAuth.java */
/* loaded from: classes8.dex */
public class e implements com.baidu.tts.k.b<e, a> {

    /* renamed from: a  reason: collision with root package name */
    public String f11132a;
    public String b;
    public String c;
    public String d = SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS;

    /* compiled from: OnlineAuth.java */
    /* loaded from: classes8.dex */
    public static class a implements com.baidu.tts.k.a {

        /* renamed from: a  reason: collision with root package name */
        public String f11134a;
        public String b;
        public long c;
        public TtsError d;

        public void a(String str) {
            this.f11134a = str;
        }

        public void b(String str) {
            this.b = str;
        }

        @Override // com.baidu.tts.k.a
        public boolean g() {
            return !StringTool.isEmpty(this.f11134a) || (this.b != null && System.currentTimeMillis() < this.c);
        }

        public String a() {
            return this.b;
        }

        public TtsError b() {
            return this.d;
        }

        public void a(long j) {
            this.c = j;
        }

        public void a(TtsError ttsError) {
            if (ttsError != null) {
                LoggerProxy.d("OnlineAuth", "this=" + this + "--error=" + ttsError.getDetailMessage());
            }
            this.d = ttsError;
        }
    }

    public void a(String str) {
        this.d = str;
    }

    public void b(String str) {
        this.f11132a = str;
    }

    public void c(String str) {
        this.b = str;
    }

    public void d(String str) {
        this.c = str;
    }

    public String a() {
        return this.f11132a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: d */
    public a call() throws Exception {
        LoggerProxy.d("OnlineAuth", "enter online auth");
        final a aVar = new a();
        if (StringTool.isEmpty(this.f11132a)) {
            try {
                if (a(this.b, this.c)) {
                    String a2 = a(this.b, this.c, this.d);
                    LoggerProxy.d("OnlineAuth", "url=" + a2);
                    SyncHttpClient syncHttpClient = null;
                    if (SpeechSynthesizer.REQUEST_PROTOCOL_HTTP.equals(this.d)) {
                        syncHttpClient = new SyncHttpClient();
                    } else if (SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS.equals(this.d)) {
                        syncHttpClient = new SyncHttpClient(true, 80, 443);
                    }
                    syncHttpClient.post(null, a2, null, null, new AsyncHttpResponseHandler() { // from class: com.baidu.tts.auth.e.1
                        @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
                        public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
                            aVar.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_AUTH_FAILURE));
                        }

                        @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
                        public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
                            String str = new String(bArr);
                            LoggerProxy.d("OnlineAuth", "body=" + str + "--code=" + i);
                            if (TextUtils.isEmpty(str)) {
                                return;
                            }
                            try {
                                JSONObject jSONObject = new JSONObject(str);
                                if (jSONObject.has("access_token")) {
                                    aVar.b(jSONObject.getString("access_token"));
                                } else {
                                    aVar.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_AUTH_FAILURE));
                                }
                                if (jSONObject.has("expires_in")) {
                                    int i2 = jSONObject.getInt("expires_in");
                                    long nanoTime = System.nanoTime();
                                    aVar.a((Math.min(i2, 86400L) * 1000000000) + nanoTime);
                                }
                            } catch (JSONException e) {
                                StringBuilder m1016super = Cgoto.m1016super("parse:");
                                m1016super.append(e.toString());
                                LoggerProxy.d("OnlineAuth", m1016super.toString());
                            } catch (Exception e2) {
                                StringBuilder m1016super2 = Cgoto.m1016super("parse:");
                                m1016super2.append(e2.toString());
                                LoggerProxy.d("OnlineAuth", m1016super2.toString());
                            }
                        }
                    });
                } else {
                    aVar.a(com.baidu.tts.h.a.c.a().b(n.TTS_PARAMETER_INVALID));
                }
            } catch (Exception e) {
                aVar.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_ENGINE_AUTH_FAILURE, e));
            }
        } else {
            aVar.a(this.f11132a);
        }
        LoggerProxy.d("OnlineAuth", "end online auth");
        return aVar;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(e eVar) {
        String a2 = eVar.a();
        if (StringTool.isEmpty(this.f11132a)) {
            String b = eVar.b();
            String c = eVar.c();
            StringBuilder m1016super = Cgoto.m1016super("mAK=");
            m1016super.append(this.b);
            m1016super.append("--mSK=");
            Cgoto.m993continue(m1016super, this.c, "--ak2=", b, "--sk2=");
            m1016super.append(c);
            LoggerProxy.d("OnlineAuth", m1016super.toString());
            return (StringTool.isEqual(this.b, b) && StringTool.isEqual(this.c, c)) ? 0 : 1;
        }
        StringBuilder m1016super2 = Cgoto.m1016super("mProductId=");
        m1016super2.append(this.f11132a);
        m1016super2.append("--productId2=");
        m1016super2.append(a2);
        LoggerProxy.d("OnlineAuth", m1016super2.toString());
        if (a2 == null) {
            return 1;
        }
        return this.f11132a.compareTo(a2);
    }

    private boolean a(String str, String str2) {
        return (StringTool.isEmpty(str) || StringTool.isEmpty(str2)) ? false : true;
    }

    private String a(String str, String str2, String str3) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new BasicNameValuePair("grant_type", "client_credentials"));
        linkedList.add(new BasicNameValuePair("client_id", str));
        linkedList.add(new BasicNameValuePair("client_secret", str2));
        return Cgoto.m989case(Cgoto.m996else(str3, "://openapi.baidu.com/oauth/2.0/token", "?"), URLEncodedUtils.format(linkedList, "utf-8"));
    }
}
