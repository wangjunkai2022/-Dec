package com.baidu.tts.e;

import android.content.Context;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.f.o;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.loopj.AsyncHttpResponseHandler;
import com.baidu.tts.loopj.SyncHttpClient;
import com.baidu.tts.tools.CommonUtility;
import com.baidu.tts.tools.SharedPreferencesUtils;
import com.umeng.analytics.pro.ak;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import org.apache.http.Header;
import org.apache.http.entity.StringEntity;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: StatHelper.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static long f11206a = 86400000;

    public static synchronized void a(Context context, String str) {
        synchronized (a.class) {
            if (c.f(context)) {
                long a2 = c.a(context);
                long j = SharedPreferencesUtils.getLong(context, "statistics_time", 0L);
                long j2 = SharedPreferencesUtils.getLong(context, "statistics_expires", 0L);
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - a2 < f11206a) {
                    Date date = new Date(a2);
                    Date date2 = new Date(currentTimeMillis);
                    LoggerProxy.d("StatHelper", "lastTime " + a2 + ", curTime " + System.currentTimeMillis());
                    LoggerProxy.d("StatHelper", "lastDate " + date + "\ncurDate " + date2 + " staExpires: " + j2);
                } else if (currentTimeMillis - j > j2) {
                    boolean b = b(context, str);
                    LoggerProxy.d("StatHelper", "updated " + b);
                }
            }
        }
    }

    public static boolean b(Context context, String str) {
        boolean z;
        try {
            long j = SharedPreferencesUtils.getLong(context, "Success_Count", 0L);
            String str2 = j + "." + SharedPreferencesUtils.getLong(context, "Fail_Count", 0L);
            LoggerProxy.d("StatHelper", " postContent:" + str2);
            if (j >= 1) {
                try {
                    z = a(context, str, str2);
                } catch (Error e) {
                    e.toString();
                    z = false;
                }
                c.a(context, System.currentTimeMillis());
                LoggerProxy.d("StatHelper", "update ret: " + z);
                if (z) {
                    SharedPreferencesUtils.putLong(context, "Success_Count", 0L);
                    SharedPreferencesUtils.putLong(context, "Fail_Count", 0L);
                    return true;
                }
                return false;
            }
            return false;
        } catch (Exception e2) {
            StringBuilder m1016super = Cgoto.m1016super("exception:");
            m1016super.append(e2.toString());
            LoggerProxy.d("StatHelper", m1016super.toString());
            return false;
        }
    }

    public static StringEntity b(Context context, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        String b = c.b(str);
        String[] split = EmbeddedSynthesizerEngine.bdTTSGetAESKEY().split(":");
        String a2 = c.a(split[0]);
        String a3 = c.a(split[1]);
        try {
            String string = SharedPreferencesUtils.getString(context, "offline_speechDatInfo", "");
            jSONObject.put("flow", str2);
            jSONObject.put("cuid", com.baidu.tts.h.b.b.a().i());
            jSONObject.put("sign", b);
            jSONObject.put("app", c.d(context));
            jSONObject.put("selfDef", "android.etts");
            jSONObject.put("sdkversion", c.a());
            jSONObject.put("platform", c.b(context));
            jSONObject.put("perinfo", string);
            jSONObject.put(ak.x, c.b());
            jSONObject.put("sdk_name", c.c());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        try {
            return new StringEntity(CommonUtility.AES_cbc_encrypt(jSONObject.toString(), a2, a3));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean a(final Context context, String str, String str2) {
        final boolean[] zArr = {false};
        String a2 = o.STATISTICS_SERVER.a();
        LoggerProxy.d("StatHelper", "statHelper url:" + a2);
        new SyncHttpClient(true, 80, 443).post(null, a2, b(context, str, str2), null, new AsyncHttpResponseHandler() { // from class: com.baidu.tts.e.a.1
            @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
            public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
                LoggerProxy.d("StatHelper", " statusCode: " + i + " responseBody: " + bArr);
            }

            @Override // com.baidu.tts.loopj.AsyncHttpResponseHandler
            public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
                String str3 = new String(bArr);
                StringBuilder m1020throw = Cgoto.m1020throw(" statusCode: ", i, " response=");
                m1020throw.append(new String(bArr));
                LoggerProxy.d("StatHelper", m1020throw.toString());
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str3);
                    if (SpeechSynthesizer.REQUEST_DNS_OFF.equals(jSONObject.optString("err_no"))) {
                        long optLong = jSONObject.optLong("expires");
                        long optLong2 = jSONObject.optLong("time");
                        SharedPreferencesUtils.putLong(context, "statistics_expires", optLong);
                        long currentTimeMillis = System.currentTimeMillis();
                        long j = currentTimeMillis - optLong2;
                        if (j < 60000 && j > 0) {
                            SharedPreferencesUtils.putLong(context, "statistics_time", optLong2);
                        } else {
                            SharedPreferencesUtils.putLong(context, "statistics_time", currentTimeMillis);
                        }
                        zArr[0] = true;
                        LoggerProxy.d("StatHelper", "ret=" + zArr[0]);
                    }
                } catch (JSONException e) {
                    StringBuilder m1016super = Cgoto.m1016super("parse:");
                    m1016super.append(e.toString());
                    LoggerProxy.d("StatHelper", m1016super.toString());
                } catch (Exception e2) {
                    StringBuilder m1016super2 = Cgoto.m1016super("parse:");
                    m1016super2.append(e2.toString());
                    LoggerProxy.d("StatHelper", m1016super2.toString());
                }
            }
        });
        return zArr[0];
    }
}
