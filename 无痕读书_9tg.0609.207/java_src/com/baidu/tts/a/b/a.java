package com.baidu.tts.a.b;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.baidu.tts.aop.tts.ITts;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.aop.tts.TtsFactory;
import com.baidu.tts.aop.ttslistener.TtsListener;
import com.baidu.tts.auth.AuthInfo;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.SpeechError;
import com.baidu.tts.client.SpeechSynthesizeBag;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.client.SpeechSynthesizerListener;
import com.baidu.tts.client.TtsMode;
import com.baidu.tts.f.l;
import com.baidu.tts.f.n;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.g;
import com.baidu.tts.m.h;
import com.baidu.tts.m.i;
import com.baidu.tts.tools.ResourceTools;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: SpeechSynthesizerAdapter.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public ITts f11104a;
    public SpeechSynthesizerListener b;
    public ThreadPoolExecutor c;
    public TtsListener d = new TtsListener() { // from class: com.baidu.tts.a.b.a.1
        private boolean a(h hVar) {
            try {
                int i = AnonymousClass2.f11106a[hVar.g().getTtsErrorFlyweight().a().ordinal()];
                return i == 1 || i == 2 || i == 3;
            } catch (Exception e) {
                StringBuilder m1016super = Cgoto.m1016super("isStopped exception=");
                m1016super.append(e.toString());
                LoggerProxy.d("SpeechSynthesizerAdapter", m1016super.toString());
                return false;
            }
        }

        @Override // com.baidu.tts.aop.ttslistener.TtsListener
        public void onError(h hVar) {
            if (a.this.b == null || a(hVar)) {
                return;
            }
            a.this.b.onError(a.this.a(hVar), a.this.b(hVar));
        }

        @Override // com.baidu.tts.aop.ttslistener.TtsListener
        public void onPlayFinished(h hVar) {
            if (a.this.b != null) {
                a.this.b.onSpeechFinish(a.this.a(hVar));
            }
        }

        @Override // com.baidu.tts.aop.ttslistener.TtsListener
        public void onPlayProgressUpdate(h hVar) {
            if (a.this.b != null) {
                a.this.b.onSpeechProgressChanged(a.this.a(hVar), hVar.c());
            }
        }

        @Override // com.baidu.tts.aop.ttslistener.TtsListener
        public void onPlayStart(h hVar) {
            if (a.this.b != null) {
                a.this.b.onSpeechStart(a.this.a(hVar));
            }
        }

        @Override // com.baidu.tts.aop.ttslistener.TtsListener
        public void onSynthesizeDataArrived(h hVar) {
            if (a.this.b != null) {
                a.this.b.onSynthesizeDataArrived(a.this.a(hVar), hVar.d(), hVar.c(), hVar.e());
            }
        }

        @Override // com.baidu.tts.aop.ttslistener.TtsListener
        public void onSynthesizeFinished(h hVar) {
            if (a.this.b != null) {
                a.this.b.onSynthesizeFinish(a.this.a(hVar));
            }
        }

        @Override // com.baidu.tts.aop.ttslistener.TtsListener
        public void onSynthesizeStart(h hVar) {
            if (a.this.b != null) {
                a.this.b.onSynthesizeStart(a.this.a(hVar));
            }
        }
    };

    /* compiled from: SpeechSynthesizerAdapter.java */
    /* renamed from: com.baidu.tts.a.b.a$2  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f11106a;

        static {
            int[] iArr = new int[n.values().length];
            f11106a = iArr;
            try {
                n nVar = n.MIX_AUTH_INTERRUPTED_EXCEPTION;
                iArr[36] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f11106a;
                n nVar2 = n.OFFLINE_AUTH_INTERRUPTED_EXCEPTION;
                iArr2[21] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f11106a;
                n nVar3 = n.ONLINE_AUTH_INTERRUPTED_EXCEPTION;
                iArr3[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: SpeechSynthesizerAdapter.java */
    /* renamed from: com.baidu.tts.a.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class CallableC0079a implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        public List<SpeechSynthesizeBag> f11107a;

        public CallableC0079a(List<SpeechSynthesizeBag> list) {
            this.f11107a = list;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            int size;
            List<SpeechSynthesizeBag> list = this.f11107a;
            if (list != null && (size = list.size()) > 0) {
                for (int i = 0; i < size; i++) {
                    SpeechSynthesizeBag speechSynthesizeBag = this.f11107a.get(i);
                    if (speechSynthesizeBag != null) {
                        String text = speechSynthesizeBag.getText();
                        String utteranceId = speechSynthesizeBag.getUtteranceId();
                        if (TextUtils.isEmpty(utteranceId)) {
                            utteranceId = String.valueOf(i);
                            speechSynthesizeBag.setUtteranceId(utteranceId);
                        }
                        if (Thread.currentThread().isInterrupted()) {
                            return null;
                        }
                        i iVar = new i(text, utteranceId);
                        iVar.a(com.baidu.tts.f.i.SPEAK);
                        a.this.f11104a.speak(iVar);
                    }
                }
            }
            return null;
        }
    }

    /* compiled from: SpeechSynthesizerAdapter.java */
    /* loaded from: classes8.dex */
    public class b implements Callable<Void> {
        public String b;
        public String c;

        public b(String str, String str2) {
            this.b = str;
            this.c = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            i iVar = new i(this.b, this.c);
            iVar.a(com.baidu.tts.f.i.SPEAK);
            a.this.f11104a.speak(iVar);
            return null;
        }
    }

    /* compiled from: SpeechSynthesizerAdapter.java */
    /* loaded from: classes8.dex */
    public class c implements Callable<Void> {
        public String b;
        public String c;

        public c(String str, String str2) {
            this.b = str;
            this.c = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            i iVar = new i(this.b, this.c);
            iVar.a(com.baidu.tts.f.i.SYNTHESIZE);
            a.this.f11104a.synthesize(iVar);
            return null;
        }
    }

    public a() {
        ITts g = g();
        this.f11104a = g;
        g.setTtsListener(this.d);
    }

    private ITts g() {
        return new TtsFactory().makeProxy();
    }

    private synchronized ExecutorService h() {
        if (this.c == null) {
            this.c = new com.baidu.tts.c.a((int) SpeechSynthesizer.MAX_QUEUE_SIZE, "bdtts-SpeechSynthesizerPoolThread", new ThreadPoolExecutor.AbortPolicy());
        }
        return this.c;
    }

    private void i() {
        ThreadPoolExecutor threadPoolExecutor = this.c;
        if (threadPoolExecutor != null) {
            if (!threadPoolExecutor.isShutdown()) {
                this.c.shutdownNow();
            }
            try {
                boolean awaitTermination = this.c.awaitTermination(l.DEFAULT.a(), TimeUnit.MILLISECONDS);
                LoggerProxy.d("SpeechSynthesizerAdapter", "isTerminated=" + awaitTermination);
            } catch (InterruptedException unused) {
                LoggerProxy.d("SpeechSynthesizerAdapter", "InterruptedException");
            }
            this.c = null;
        }
    }

    public int c() {
        ITts iTts = this.f11104a;
        if (iTts != null) {
            iTts.c();
            return 0;
        }
        return 0;
    }

    public int d() {
        i();
        ITts iTts = this.f11104a;
        if (iTts != null) {
            iTts.e();
            return 0;
        }
        return 0;
    }

    public int e() {
        i();
        try {
            if (this.f11104a != null) {
                this.f11104a.f();
                this.f11104a = null;
                return 0;
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public int f() {
        return this.f11104a.freeCustomResource(null);
    }

    public void a(SpeechSynthesizerListener speechSynthesizerListener) {
        if (this.b != speechSynthesizerListener) {
            this.b = speechSynthesizerListener;
        }
    }

    public int b() {
        ITts iTts = this.f11104a;
        if (iTts != null) {
            iTts.d();
            return 0;
        }
        return 0;
    }

    public int c(String str, String str2) {
        f fVar = new f();
        fVar.a(str);
        fVar.b(str2);
        return this.f11104a.loadEnglishModel(fVar);
    }

    public void a(Context context) {
        this.f11104a.setContext(context);
    }

    public int b(String str, String str2) {
        g gVar = new g();
        gVar.b(str);
        gVar.a(str2);
        return this.f11104a.loadModel(gVar);
    }

    public TtsError a(TtsMode ttsMode) {
        this.f11104a.setMode(ttsMode.getTtsEnum());
        return this.f11104a.b();
    }

    public String a() {
        return com.baidu.tts.h.b.b.a().j();
    }

    public int a(String str, String str2) {
        try {
            return this.f11104a.setParam(com.baidu.tts.f.g.valueOf(str), str2);
        } catch (Exception unused) {
            return n.TTS_PARAMETER_INVALID.b();
        }
    }

    public int b(String str, String str2, Bundle bundle) {
        return a(str, new c(str, str2));
    }

    public AuthInfo b(TtsMode ttsMode) {
        return this.f11104a.auth(ttsMode.getTtsEnum());
    }

    public int b(int i) {
        return this.f11104a.setAudioSampleRate(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SpeechError b(h hVar) {
        if (hVar != null) {
            TtsError g = hVar.g();
            if (g != null) {
                int detailCode = g.getDetailCode();
                String detailMessage = g.getDetailMessage();
                SpeechError speechError = new SpeechError();
                speechError.code = detailCode;
                speechError.description = detailMessage;
                return speechError;
            }
            LoggerProxy.d("SpeechSynthesizerAdapter", "ttsError is null");
        }
        SpeechError speechError2 = new SpeechError();
        speechError2.code = n.TTS_ERROR_UNKNOW.b();
        speechError2.description = n.TTS_ERROR_UNKNOW.c();
        return speechError2;
    }

    public int a(String str) {
        e eVar = new e();
        eVar.a(str);
        return this.f11104a.loadCustomResource(eVar);
    }

    public int a(String str, String str2, Bundle bundle) {
        return a(str, new b(str, str2));
    }

    public int a(List<SpeechSynthesizeBag> list) {
        if (list.size() <= 100) {
            return a(new CallableC0079a(list));
        }
        return SpeechSynthesizer.ERROR_LIST_IS_TOO_LONG;
    }

    public int a(float f, float f2) {
        return this.f11104a.setStereoVolume(f, f2);
    }

    public int a(int i) {
        return this.f11104a.setAudioStreamType(i);
    }

    public int a(int i, int i2) {
        return this.f11104a.setAudioAttributes(i, i2);
    }

    private int a(String str, Callable<Void> callable) {
        n isTextValid = ResourceTools.isTextValid(str);
        if (isTextValid == null) {
            return a(callable);
        }
        return isTextValid.b();
    }

    private int a(Callable<Void> callable) {
        try {
            h().submit(callable);
            return 0;
        } catch (RejectedExecutionException unused) {
            ((ThreadPoolExecutor) h()).getQueue().size();
            return SpeechSynthesizer.ERROR_QUEUE_IS_FULL;
        } catch (Exception e) {
            LoggerProxy.d("SpeechSynthesizerAdapter", e.toString());
            return SpeechSynthesizer.ERROR_QUEUE_IS_FULL;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(h hVar) {
        i f;
        if (hVar != null && (f = hVar.f()) != null) {
            return f.f();
        }
        LoggerProxy.d("SpeechSynthesizerAdapter", "getUtteranceId null");
        return null;
    }
}
