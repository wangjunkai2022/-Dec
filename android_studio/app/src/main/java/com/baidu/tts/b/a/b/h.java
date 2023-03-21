package com.baidu.tts.b.a.b;

import com.apk.Cgoto;
import com.baidu.tts.b.a.b.f;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.k;
import com.baidu.tts.f.n;
import com.baidu.tts.loopj.RequestParams;
import com.baidu.tts.tools.CommonUtility;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TtsResponseHandler.java */
/* loaded from: classes8.dex */
public class h extends g {

    /* renamed from: a  reason: collision with root package name */
    public com.baidu.tts.a.a.a<byte[], byte[]> f11153a = new com.baidu.tts.a.a.a<>();
    public f.b b;
    public com.baidu.tts.m.h c;

    public h(com.baidu.tts.m.h hVar) {
        this.c = hVar;
        this.f11153a.a(new com.baidu.tts.a.a.b());
        this.f11153a.a();
    }

    private void b(HttpEntity httpEntity) {
        byte[] bArr;
        byte[] bArr2 = null;
        try {
            bArr = "----BD**TTS++LIB".getBytes("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            bArr = null;
        }
        try {
            bArr2 = EntityUtils.toByteArray(httpEntity);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        int indexOf = CommonUtility.indexOf(bArr2, bArr, 0);
        if (indexOf < 0) {
            this.c.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_HTTP_REQUEST_PARSE_ERROR));
            return;
        }
        int indexOf2 = CommonUtility.indexOf(bArr2, bArr, bArr.length + indexOf);
        if (indexOf2 < 0) {
            this.c.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_HTTP_REQUEST_PARSE_ERROR));
            return;
        }
        try {
            a(new String(CommonUtility.copyBytesOfRange(bArr2, indexOf + bArr.length, indexOf2), "utf-8"));
        } catch (UnsupportedEncodingException e3) {
            e3.printStackTrace();
        }
        int indexOf3 = CommonUtility.indexOf(bArr2, bArr, bArr.length + indexOf2);
        if (indexOf3 >= 0) {
            this.c.a(CommonUtility.copyBytesOfRange(bArr2, indexOf2 + bArr.length, indexOf3));
        }
    }

    private void c(HttpEntity httpEntity) {
        String str;
        try {
            str = EntityUtils.toString(httpEntity, com.baidu.tts.f.d.UTF8.a());
        } catch (ParseException e) {
            e.printStackTrace();
            str = null;
            a(str);
        } catch (IOException e2) {
            e2.printStackTrace();
            str = null;
            a(str);
        }
        a(str);
    }

    public void a(f.b bVar) {
        this.b = bVar;
    }

    @Override // com.baidu.tts.b.a.b.g
    public void a(int i, Header[] headerArr, String str, HttpEntity httpEntity) {
        if (RequestParams.APPLICATION_JSON.equals(str)) {
            c(httpEntity);
        } else {
            b(httpEntity);
        }
    }

    private void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt(com.baidu.tts.f.g.ERROR_NUMBER.a());
            LoggerProxy.d("TtsResponseHandler", "parseJSON errNo=" + optInt);
            this.c.a(optInt);
            if (optInt != 0) {
                this.c.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_ENGINE_REQUEST_RESULT_ERROR, optInt, jSONObject.getString(com.baidu.tts.f.g.ERROR_MESSAGE.a())));
                return;
            }
            this.c.a(jSONObject.optString(com.baidu.tts.f.g.SERIAL_NUMBER.a()));
            this.c.b(jSONObject.optInt(com.baidu.tts.f.g.INDEX.a()));
            this.c.d(jSONObject.optInt(com.baidu.tts.f.g.PERCENT.b()));
            int optInt2 = jSONObject.optInt(com.baidu.tts.f.g.RESPONSE_SAMPLE_RATE.b());
            if (optInt2 == 8000) {
                this.c.a(k.HZ8K);
            } else if (optInt2 == 16000) {
                this.c.a(k.HZ16K);
            } else if (optInt2 == 24000) {
                this.c.a(k.HZ24K);
            }
            if (com.baidu.tts.b.b.b.d.b()) {
                com.baidu.tts.b.b.b.d.a(optInt2);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        } catch (ParseException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.baidu.tts.b.a.b.g
    public void a(int i, Header[] headerArr, String str, HttpEntity httpEntity, Throwable th) {
        StringBuilder m1016super = Cgoto.m1016super("onFailure error = ");
        m1016super.append(th.getMessage());
        LoggerProxy.d("TtsResponseHandler", m1016super.toString());
        this.c.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_ENGINE_HTTP_REQUEST_FAILURE, i, null, th));
    }
}
