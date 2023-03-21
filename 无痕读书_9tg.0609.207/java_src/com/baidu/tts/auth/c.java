package com.baidu.tts.auth;

import android.content.Context;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.f.g;
import com.baidu.tts.f.o;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.loopj.RequestHandle;
import com.baidu.tts.loopj.SyncHttpClient;
import com.baidu.tts.tools.SharedPreferencesUtils;
import java.io.UnsupportedEncodingException;
import java.util.LinkedList;
import java.util.concurrent.Callable;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;
/* compiled from: GetTtsLicenseWork.java */
/* loaded from: classes8.dex */
public class c implements Callable<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public RequestHandle f11129a;
    public String b;
    public String c;

    public c(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    private HttpEntity b() throws UnsupportedEncodingException {
        EmbeddedSynthesizerEngine.bdTTSGetEngineParam();
        try {
            LinkedList linkedList = new LinkedList();
            com.baidu.tts.h.b.b a2 = com.baidu.tts.h.b.b.a();
            String i = a2.i();
            Context h = a2.h();
            String b = com.baidu.tts.e.c.b(this.b);
            int i2 = SharedPreferencesUtils.getInt(h, "getLicense_err_no");
            linkedList.add(new BasicNameValuePair(g.CUID.a(), i));
            linkedList.add(new BasicNameValuePair(g.SIGN.a(), b));
            linkedList.add(new BasicNameValuePair(g.ID.a(), this.b));
            linkedList.add(new BasicNameValuePair(g.APPNAME.a(), com.baidu.tts.e.c.d(h)));
            linkedList.add(new BasicNameValuePair(g.SELFDEF.a(), "android.etts"));
            linkedList.add(new BasicNameValuePair(g.STA.a(), com.baidu.tts.e.c.b(h)));
            String a3 = g.GETLICENSE_ERRNO.a();
            linkedList.add(new BasicNameValuePair(a3, "" + i2));
            linkedList.add(new BasicNameValuePair(g.VERSION.c(), SpeechSynthesizer.VersionName));
            UrlEncodedFormEntity urlEncodedFormEntity = new UrlEncodedFormEntity(linkedList, "utf-8");
            LoggerProxy.d("GetTtsLicenseWork", "getLicense params: " + linkedList.toString());
            return urlEncodedFormEntity;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public Integer call() throws Exception {
        SyncHttpClient syncHttpClient = new SyncHttpClient(true, 80, 443);
        String a2 = o.GETLICENSE_SERVER.a();
        b bVar = new b(this.c);
        this.f11129a = syncHttpClient.post(null, a2, b(), null, bVar);
        return Integer.valueOf(bVar.a());
    }
}
