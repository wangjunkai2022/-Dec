package com.baidu.tts.b.a.b;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.auth.d;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.f.k;
import com.baidu.tts.f.n;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.m.i;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.ResourceTools;
import com.baidu.tts.tools.SharedPreferencesUtils;
import com.baidu.tts.tools.StringTool;
import com.biquge.ebook.app.bean.RedBgImageBean;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: OfflineSynthesizer.java */
/* loaded from: classes8.dex */
public class e extends com.baidu.tts.b.a.b.a {
    public a b;
    public long[] c = new long[1];

    /* compiled from: OfflineSynthesizer.java */
    /* loaded from: classes8.dex */
    public static class a extends com.baidu.tts.m.d<a> {
        public String d;
        public String e;
        public String f;
        public String g;

        /* renamed from: a  reason: collision with root package name */
        public String f11146a = SpeechSynthesizer.REQUEST_DNS_OFF;
        public String b = SpeechSynthesizer.REQUEST_DNS_OFF;
        public String c = SpeechSynthesizer.REQUEST_DNS_OFF;
        public String h = RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR;
        public String i = "1";

        public int a(String str) {
            if (DataTool.isLong(str)) {
                this.f11146a = str;
                return 0;
            }
            return n.TTS_PARAMETER_INVALID.b();
        }

        public void b(String str) {
            this.b = str;
        }

        public int c(String str) {
            if (DataTool.isLong(str)) {
                this.c = str;
                return 0;
            }
            return n.TTS_PARAMETER_INVALID.b();
        }

        public void d(String str) {
            this.d = str;
        }

        public void e(String str) {
            this.e = str;
        }

        public void f(String str) {
            this.f = str;
        }

        public void g(String str) {
            this.g = str;
        }

        public void h(String str) {
            this.h = str;
        }

        public int i(String str) {
            if (DataTool.isLong(str)) {
                this.i = str;
                return 0;
            }
            return n.TTS_PARAMETER_INVALID.b();
        }

        public String b() {
            return this.d;
        }

        public String d() {
            return this.f;
        }

        public String e() {
            return this.g;
        }

        public String f() {
            return this.h;
        }

        public long g() {
            try {
                return Long.parseLong(this.i);
            } catch (Exception unused) {
                return 0L;
            }
        }

        public long a() {
            try {
                return Long.parseLong(this.f11146a);
            } catch (Exception unused) {
                return 0L;
            }
        }

        public String c() {
            return this.e;
        }
    }

    /* compiled from: OfflineSynthesizer.java */
    /* loaded from: classes8.dex */
    public class b implements EmbeddedSynthesizerEngine.OnNewDataListener, Callable<TtsError> {
        public i c;
        public int d = 0;
        public k e = k.HZ16K;

        /* renamed from: a  reason: collision with root package name */
        public ExecutorService f11147a = Executors.newCachedThreadPool(new com.baidu.tts.g.a.a("bdtts-OfflineSynthesizer"));

        public b(i iVar) {
            this.c = iVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public TtsError call() throws Exception {
            d.a a2 = com.baidu.tts.auth.a.a().a(e.this.b);
            if (a2 != null) {
                if (a2.g()) {
                    long bdTTSGetParam = EmbeddedSynthesizerEngine.bdTTSGetParam(e.this.c[0], 23);
                    if (bdTTSGetParam == 24000) {
                        this.e = k.HZ24K;
                        if (com.baidu.tts.b.b.b.d.b()) {
                            com.baidu.tts.b.b.b.d.a((int) bdTTSGetParam);
                        }
                    } else if (bdTTSGetParam == 16000) {
                        this.e = k.HZ16K;
                        if (com.baidu.tts.b.b.b.d.b()) {
                            com.baidu.tts.b.b.b.d.a((int) bdTTSGetParam);
                        }
                    }
                    LoggerProxy.d("OfflineSynthesizer", " sampleRate:" + bdTTSGetParam + " sampleRateEnum:" + this.e.a());
                    String F = e.this.b.F();
                    if (F.matches("\\d+(.\\d+)?")) {
                        if (F.indexOf(".") > 0) {
                            EmbeddedSynthesizerEngine.bdTTSSetParamFloat(e.this.c[0], 5, Float.parseFloat(F));
                        } else {
                            EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 5, Long.parseLong(F));
                        }
                    }
                    String D = e.this.b.D();
                    if (D.matches("\\d+(.\\d+)?")) {
                        if (D.indexOf(".") > 0) {
                            EmbeddedSynthesizerEngine.bdTTSSetParamFloat(e.this.c[0], 6, Float.parseFloat(D));
                        } else {
                            EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 6, Long.parseLong(D));
                        }
                    }
                    String E = e.this.b.E();
                    if (E.matches("\\d+(.\\d+)?")) {
                        if (E.indexOf(".") > 0) {
                            EmbeddedSynthesizerEngine.bdTTSSetParamFloat(e.this.c[0], 7, Float.parseFloat(E));
                        } else {
                            EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 7, Long.parseLong(E));
                        }
                    }
                    String f = e.this.b.f();
                    if (f.matches("\\d+(.\\d+)?")) {
                        if (f.indexOf(".") > 0) {
                            EmbeddedSynthesizerEngine.bdTTSSetParamFloat(e.this.c[0], 8, Float.parseFloat(f));
                        } else {
                            EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 8, Long.parseLong(f));
                        }
                    }
                    int bdTTSSetParam = EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 0, 0L);
                    LoggerProxy.d("OfflineSynthesizer", "engineResult = " + bdTTSSetParam);
                    EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 18, e.this.b.a());
                    EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 10, e.this.b.C());
                    EmbeddedSynthesizerEngine.bdTTSSetParam(e.this.c[0], 22, e.this.b.g());
                    EmbeddedSynthesizerEngine.setOnNewDataListener(this);
                    this.c.c(com.baidu.tts.f.d.GBK.a());
                    byte[] e = this.c.e();
                    LoggerProxy.d("OfflineSynthesizer", "before bdttssynthesis");
                    int bdTTSSynthesis = EmbeddedSynthesizerEngine.bdTTSSynthesis(e.this.c[0], e, e.length);
                    LoggerProxy.d("OfflineSynthesizer", "after bdttssynthesis result = " + bdTTSSynthesis);
                    Context h = com.baidu.tts.h.b.b.a().h();
                    if (bdTTSSynthesis == 0) {
                        SharedPreferencesUtils.putLong(h, "Success_Count", SharedPreferencesUtils.getLong(h, "Success_Count", 0L) + 1);
                        return null;
                    }
                    SharedPreferencesUtils.putLong(h, "Fail_Count", SharedPreferencesUtils.getLong(h, "Fail_Count", 0L) + 1);
                    return com.baidu.tts.h.a.c.a().a(n.OFFLINE_ENGINE_SYNTHESIZE_ERROR, bdTTSSynthesis);
                }
                return a2.b();
            }
            return com.baidu.tts.h.a.c.a().b(n.OFFLINE_ENGINE_AUTH_NULL);
        }

        @Override // com.baidu.tts.jni.EmbeddedSynthesizerEngine.OnNewDataListener
        public int onNewData(byte[] bArr, int i) {
            this.d++;
            com.baidu.tts.m.h b = com.baidu.tts.m.h.b(this.c);
            b.e(com.baidu.tts.f.f.OFFLINE.a());
            b.a(com.baidu.tts.f.a.PCM);
            b.a(bArr);
            b.d(i);
            b.a(this.e);
            b.c(this.d);
            b.b(this.d);
            e.this.a(b);
            if (Thread.currentThread().isInterrupted()) {
                LoggerProxy.d("OfflineSynthesizer", "interrupted to interrupt syn");
                return -1;
            }
            return 0;
        }
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public <OfflineSynthesizerParams> void a(OfflineSynthesizerParams offlinesynthesizerparams) {
        this.b = (a) offlinesynthesizerparams;
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public TtsError b() {
        EmbeddedSynthesizerEngine.bdTTSEngineUninit(this.c[0]);
        return null;
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public TtsError a() {
        if (this.b == null) {
            this.b = new a();
        }
        d.a a2 = com.baidu.tts.auth.a.a().a(this.b);
        if (a2.g()) {
            String b2 = this.b.b();
            String c = this.b.c();
            String bdTTSGetDatParam = !StringTool.isEmpty(c) ? EmbeddedSynthesizerEngine.bdTTSGetDatParam(c) : "";
            byte[] stringToByteArrayAddNull = ResourceTools.stringToByteArrayAddNull(b2);
            byte[] stringToByteArrayAddNull2 = ResourceTools.stringToByteArrayAddNull(c);
            Context h = com.baidu.tts.h.b.b.a().h();
            LoggerProxy.d("OfflineSynthesizer", "before bdTTSEngineInit SpeechInfo: " + bdTTSGetDatParam);
            SharedPreferencesUtils.putString(h, "offline_speechDatInfo", bdTTSGetDatParam);
            int bdTTSEngineInit = EmbeddedSynthesizerEngine.bdTTSEngineInit(h, stringToByteArrayAddNull, stringToByteArrayAddNull2, this.c);
            LoggerProxy.d("OfflineSynthesizer", "engine init ret = " + bdTTSEngineInit);
            if (bdTTSEngineInit == 0) {
                return null;
            }
            return com.baidu.tts.h.a.c.a().a(n.OFFLINE_ENGINE_INIT_FAILED, bdTTSEngineInit, "bdTTSEngineInit result not 0");
        }
        return a2.b();
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public int b(com.baidu.tts.m.e eVar) {
        return EmbeddedSynthesizerEngine.bdTTSDomainDataUninit(this.c[0]);
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public TtsError a(i iVar) throws InterruptedException {
        try {
            return new b(iVar).call();
        } catch (InterruptedException e) {
            throw e;
        } catch (Exception e2) {
            return com.baidu.tts.h.a.c.a().a(n.OFFLINE_ENGINE_CALL_EXCEPTION, e2);
        }
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.e eVar) {
        return EmbeddedSynthesizerEngine.bdTTSDomainDataInit(ResourceTools.stringToByteArrayAddNull(eVar.a()), this.c[0]);
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.g gVar) {
        String b2 = gVar.b();
        String a2 = gVar.a();
        boolean isEmpty = TextUtils.isEmpty(b2);
        boolean isEmpty2 = TextUtils.isEmpty(a2);
        if (isEmpty && isEmpty2) {
            return n.TTS_PARAMETER_INVALID.b();
        }
        Context h = com.baidu.tts.h.b.b.a().h();
        return (!isEmpty2 ? EmbeddedSynthesizerEngine.bdTTSReInitData(h, ResourceTools.stringToByteArrayAddNull(a2), this.c[0]) : 0) + (isEmpty ? 0 : EmbeddedSynthesizerEngine.bdTTSReInitData(h, ResourceTools.stringToByteArrayAddNull(b2), this.c[0]));
    }

    @Override // com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.f fVar) {
        String b2 = fVar.b();
        String a2 = fVar.a();
        boolean isEmpty = TextUtils.isEmpty(b2);
        if (!TextUtils.isEmpty(a2) && !isEmpty) {
            int loadEnglishEngine = EmbeddedSynthesizerEngine.loadEnglishEngine(ResourceTools.stringToByteArrayAddNull(a2), ResourceTools.stringToByteArrayAddNull(b2), this.c[0]);
            LoggerProxy.d("OfflineSynthesizer", "loadEnglishModel ret=" + loadEnglishEngine);
            return loadEnglishEngine;
        }
        return n.TTS_PARAMETER_INVALID.b();
    }
}
