package com.baidu.tts.b.a.b;

import com.apk.Cgoto;
import com.baidu.speechsynthesizer.utility.SpeechDecoder;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.auth.e;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.f.k;
import com.baidu.tts.f.l;
import com.baidu.tts.f.n;
import com.baidu.tts.f.o;
import com.baidu.tts.loopj.SyncHttpClient;
import com.baidu.tts.m.i;
import com.baidu.tts.tools.CommonUtility;
import com.baidu.tts.tools.StringTool;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;
/* compiled from: OnlineSynthesizer.java */
/* loaded from: classes8.dex */
public class f extends com.baidu.tts.b.a.b.a {
    public b b;
    public double c;

    /* compiled from: OnlineSynthesizer.java */
    /* loaded from: classes8.dex */
    public class a implements Callable<com.baidu.tts.m.h> {
        public int b;
        public c c;
        public i d;
        public b e;
        public com.baidu.tts.m.h f;
        public SyncHttpClient g;

        public a(int i, c cVar, i iVar, b bVar, com.baidu.tts.m.h hVar) {
            this.b = i;
            this.c = cVar;
            this.d = iVar;
            this.e = bVar;
            this.f = hVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public com.baidu.tts.m.h call() throws Exception {
            try {
                HttpEntity a2 = f.this.a(this.b, this.c.f11150a, this.d, this.e);
                String b = this.e.b();
                if (this.b == 1) {
                    String a3 = this.e.a();
                    if (this.e.v() == null) {
                        if ("1".equals(a3)) {
                            this.c.b = o.TTS_SERVER.a(b);
                        } else {
                            this.c.b = o.TTS_SERVER.b(b);
                        }
                    } else {
                        this.c.b = this.e.v();
                        if ("1".equals(a3)) {
                            String host = new URL(this.e.v()).getHost();
                            String hostAddress = InetAddress.getByName(host).getHostAddress();
                            this.c.b = this.e.v().replace(host, hostAddress);
                            LoggerProxy.d("OnlineSynthesizer", "localDNS: " + hostAddress);
                        }
                    }
                    StringBuilder m1016super = Cgoto.m1016super("serverIp=");
                    m1016super.append(this.c.b);
                    LoggerProxy.d("OnlineSynthesizer", m1016super.toString());
                }
                String str = this.c.b;
                if (str == null) {
                    this.f.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_SERVER_IP_IS_NULL));
                    return this.f;
                }
                if (str.startsWith("http://")) {
                    this.g = new SyncHttpClient();
                } else if (this.c.b.startsWith("https://")) {
                    this.g = new SyncHttpClient(true, 80, 443);
                }
                this.g.setMaxRetriesAndTimeout(this.e.s(), this.e.t());
                int u = this.e.u();
                LoggerProxy.d("OnlineSynthesizer", "timeout=" + u);
                this.g.setTimeout(u);
                h hVar = new h(this.f);
                hVar.a(this.e);
                String d = this.e.d();
                if (d != null) {
                    int c = this.e.c();
                    LoggerProxy.d("OnlineSynthesizer", "--> proxy host=" + d + "--port=" + c);
                    this.g.setProxy(d, c);
                }
                if (this.c.b == null) {
                    this.f.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_SERVER_IP_IS_NULL));
                } else if (!Thread.currentThread().isInterrupted()) {
                    LoggerProxy.d("OnlineSynthesizer", "before post");
                    this.g.post(null, this.c.b, a2, null, hVar);
                    LoggerProxy.d("OnlineSynthesizer", "after post");
                }
                return this.f;
            } catch (com.baidu.tts.q.a unused) {
                this.f.a(com.baidu.tts.h.a.c.a().b(n.ONLINE_TOKEN_IS_NULL));
                return this.f;
            }
        }

        public void b() {
            SyncHttpClient syncHttpClient = this.g;
            if (syncHttpClient != null) {
                syncHttpClient.stop();
            }
        }
    }

    /* compiled from: OnlineSynthesizer.java */
    /* loaded from: classes8.dex */
    public static class b extends com.baidu.tts.m.d<b> {
        public static Set<String> x;

        /* renamed from: a  reason: collision with root package name */
        public String f11149a;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;
        public String j;
        public String k;
        public String l;
        public String m;
        public String q;
        public String u;
        public String v;
        public String w;
        public com.baidu.tts.f.b b = com.baidu.tts.f.b.OPUS;
        public com.baidu.tts.f.c c = com.baidu.tts.f.c.OPUS_16K;
        public String d = SpeechSynthesizer.REQUEST_DNS_OFF;
        public int n = 5;
        public int o = 1000;
        public int p = l.DEFAULT.b();
        public int r = -1;
        public String s = SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS;
        public String t = "1";

        static {
            HashSet hashSet = new HashSet();
            x = hashSet;
            hashSet.add(com.baidu.tts.f.g.SPEED.b());
        }

        public String a() {
            return this.t;
        }

        public String b() {
            return this.s;
        }

        public int c() {
            return this.r;
        }

        public String d() {
            return this.q;
        }

        public String e() {
            return this.k;
        }

        public String f() {
            return this.l;
        }

        public com.baidu.tts.f.b g() {
            return this.b;
        }

        public String h() {
            return this.b.a();
        }

        public String i() {
            return this.f11149a;
        }

        public String j() {
            return this.m;
        }

        public String k() {
            return this.c.a();
        }

        public String l() {
            return this.d;
        }

        public String m() {
            return this.e;
        }

        public String n() {
            return this.f;
        }

        public String o() {
            return this.g;
        }

        public String p() {
            return this.h;
        }

        public String q() {
            return this.i;
        }

        public String r() {
            return this.j;
        }

        public int s() {
            return this.n;
        }

        public int t() {
            return this.o;
        }

        public int u() {
            return this.p;
        }

        public String v() {
            return this.u;
        }

        public String w() {
            return this.v;
        }

        public String x() {
            return this.w;
        }

        public void a(String str) {
            this.t = str;
        }

        public void b(String str) {
            this.s = str;
        }

        public void c(String str) {
            this.q = str;
        }

        public void d(String str) {
            this.k = str;
        }

        public void e(String str) {
            this.l = str;
        }

        public void f(String str) {
            this.f11149a = str;
        }

        public void g(String str) {
            this.m = str;
        }

        public void h(String str) {
            this.d = str;
        }

        public void i(String str) {
            this.g = str;
        }

        public void j(String str) {
            this.h = str;
        }

        public void k(String str) {
            this.i = str;
        }

        public void l(String str) {
            this.j = str;
        }

        public void m(String str) {
            this.u = str;
        }

        public void n(String str) {
            this.v = str;
        }

        public void o(String str) {
            this.w = str;
        }

        public void a(int i) {
            this.r = i;
        }

        public void b(int i) {
            this.n = i;
        }

        public void c(int i) {
            this.o = i;
        }

        public void d(int i) {
            this.p = i;
        }

        public int a(com.baidu.tts.f.b bVar) {
            if (bVar != null) {
                this.b = bVar;
                return 0;
            }
            return n.TTS_PARAMETER_INVALID.b();
        }

        public void a(com.baidu.tts.f.c cVar) {
            this.c = cVar;
        }
    }

    /* compiled from: OnlineSynthesizer.java */
    /* loaded from: classes8.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public String f11150a = CommonUtility.generateSerialNumber();
        public String b;

        public c() {
        }
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public int b(com.baidu.tts.m.e eVar) {
        return n.ONLINE_UNSUPPORTED_OPERATION.b();
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public <OnlineSynthesizerParams> void a(OnlineSynthesizerParams onlinesynthesizerparams) {
        this.b = (b) onlinesynthesizerparams;
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public TtsError a(i iVar) throws InterruptedException {
        try {
            return new d(iVar).call();
        } catch (InterruptedException e) {
            throw e;
        } catch (Exception e2) {
            return com.baidu.tts.h.a.c.a().a(n.ONLINE_ENGINE_CALL_EXCEPTION, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.baidu.tts.m.h a(int i, c cVar, i iVar) throws InterruptedException {
        com.baidu.tts.m.h b2 = com.baidu.tts.m.h.b(iVar);
        b G = this.b.G();
        a aVar = new a(i, cVar, iVar, G, b2);
        FutureTask futureTask = new FutureTask(aVar);
        Thread thread = new Thread(futureTask);
        thread.setName("bdtts-OnlineSynthesizer");
        thread.start();
        try {
            return (com.baidu.tts.m.h) futureTask.get(G.u(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            futureTask.cancel(true);
            aVar.b();
            throw e;
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            b2.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_ENGINE_GET_EXECUTION_EXCEPTION, e2.getCause()));
            return b2;
        } catch (TimeoutException e3) {
            LoggerProxy.d("OnlineSynthesizer", "startOnceHttpRequest timeout");
            futureTask.cancel(true);
            aVar.b();
            b2.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_ENGINE_GET_TIMEOUT, e3));
            return b2;
        }
    }

    /* compiled from: OnlineSynthesizer.java */
    /* loaded from: classes8.dex */
    public class d implements SpeechDecoder.OnDecodedDataListener, Callable<TtsError> {
        public i c;
        public c d;
        public com.baidu.tts.m.h f;
        public k g = k.HZ16K;
        public int h = 0;
        public int i = 1;

        /* renamed from: a  reason: collision with root package name */
        public byte[] f11151a = new byte[0];
        public SpeechDecoder e = new SpeechDecoder();

        public d(i iVar) {
            this.c = iVar;
            this.d = new c();
        }

        private boolean b(com.baidu.tts.m.h hVar) {
            return !a(hVar) || hVar.b() < 0;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public TtsError call() throws Exception {
            com.baidu.tts.m.h a2;
            SpeechDecoder.setOnDecodedDataListener(this);
            int i = 0;
            do {
                i++;
                LoggerProxy.d("OnlineSynthesizer", "count=" + i);
                a2 = f.this.a(i, this.d, this.c);
                if (a(a2)) {
                    if (i == 1) {
                        this.g = a2.i();
                    } else {
                        a2.a(this.g);
                    }
                    this.f = a2;
                    byte[] d = a2.d();
                    if (f.this.b.g() == com.baidu.tts.f.b.PCM) {
                        f.this.a(a2);
                    } else {
                        int decodeWithCallback = this.e.decodeWithCallback(d, a2.b());
                        LoggerProxy.d("OnlineSynthesizer", "Decoder ret : " + decodeWithCallback);
                        if (decodeWithCallback != 0 && i == 1) {
                            throw new Exception("Audio Decoder failed");
                        }
                    }
                }
            } while (!b(a2));
            if (a2 == null) {
                return com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_CALL_EXCEPTION);
            }
            return a2.g();
        }

        @Override // com.baidu.speechsynthesizer.utility.SpeechDecoder.OnDecodedDataListener
        public void onDecodedData(byte[] bArr) {
            try {
                byte[] a2 = a(this.f11151a, bArr);
                this.f11151a = a2;
                int length = a2.length;
                if (length >= 3200) {
                    int length2 = this.f.d().length;
                    int c = this.f.c();
                    double d = (length / 32000.0d) / ((length2 * 8) / f.this.c);
                    a((int) ((d * (c - this.h) * this.i) + this.h));
                }
                if (bArr.length == 0) {
                    if (length < 3200) {
                        a(this.f.c());
                    }
                    this.h = this.f.c();
                    this.i = 1;
                    if (this.f.b() < 0) {
                        this.h = 0;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        private boolean a(com.baidu.tts.m.h hVar) {
            return hVar != null && hVar.g() == null && hVar.a() == 0;
        }

        private void a(int i) {
            StringBuilder m1016super = Cgoto.m1016super("mindex=");
            m1016super.append(this.i);
            m1016super.append(" progress=");
            m1016super.append(i);
            LoggerProxy.d("OnlineSynthesizer", m1016super.toString());
            com.baidu.tts.m.h G = this.f.G();
            G.a(this.f11151a);
            G.e(com.baidu.tts.f.f.ONLINE.a());
            G.a(com.baidu.tts.f.a.PCM);
            G.c(this.i);
            G.d(i);
            f.this.a(G);
            this.i++;
            this.f11151a = new byte[0];
        }

        private byte[] a(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = new byte[bArr.length + bArr2.length];
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
            return bArr3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HttpEntity a(int i, String str, i iVar, b bVar) throws com.baidu.tts.q.a {
        if (bVar == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.INDEX.a(), String.valueOf(i)));
        arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.SERIAL_NUMBER.a(), str));
        arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.PLATFORM.b(), "Android"));
        com.baidu.tts.h.b.b a2 = com.baidu.tts.h.b.b.a();
        arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.VERSION.a(), a2.j()));
        String i2 = bVar.i();
        if (!StringTool.isEmpty(i2)) {
            arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.PRODUCT_ID.a(), i2));
        }
        String j = bVar.j();
        if (!StringTool.isEmpty(j)) {
            arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.KEY.a(), j));
        }
        iVar.c(bVar.y());
        String d2 = iVar.d();
        if (i == 1) {
            try {
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.TEXT.a(), URLEncoder.encode(iVar.c(), d2)));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.CTP.a(), a2.a(com.baidu.tts.f.g.CTP.a())));
                String i3 = a2.i();
                if (i3 != null) {
                    arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.CUID.a(), i3));
                }
                if (StringTool.isEmpty(i2)) {
                    LoggerProxy.d("OnlineSynthesizer", "before online auth");
                    e.a a3 = com.baidu.tts.auth.a.a().a(bVar);
                    LoggerProxy.d("OnlineSynthesizer", "after online auth");
                    if (a3.g()) {
                        arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.TOKEN.a(), a3.a()));
                    } else {
                        throw new com.baidu.tts.q.a();
                    }
                }
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.TEXT_ENCODE.a(), bVar.z()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.AUDIO_ENCODE.a(), bVar.h()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.BITRATE.a(), bVar.k()));
                this.c = bVar.g().b()[Integer.parseInt(bVar.k())].b();
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.SPEAKER.a(), bVar.l()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.NUMBER.a(), bVar.m()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.ENGINE.a(), bVar.n()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.STYLE.a(), bVar.o()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.BACKGROUND.a(), bVar.p()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.TERRITORY.a(), bVar.q()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.PUNCTUATION.a(), bVar.r()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.LANGUAGE.a(), bVar.A()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.SPEED.a(), bVar.D()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.PITCH.a(), bVar.E()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.VOLUME.a(), bVar.F()));
                arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.OPEN_XML.a(), bVar.B()));
                String x = bVar.x();
                if (x != null) {
                    arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.AUDIO_CTRL.a(), x));
                }
                String w = bVar.w();
                if (w != null) {
                    arrayList.add(new BasicNameValuePair(com.baidu.tts.f.g.TEXT_CTRL.a(), w));
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        try {
            StringBuffer stringBuffer = new StringBuffer();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                NameValuePair nameValuePair = (NameValuePair) it.next();
                stringBuffer.append(nameValuePair.getName());
                stringBuffer.append("=");
                stringBuffer.append(nameValuePair.getValue());
                stringBuffer.append(",");
            }
            LoggerProxy.d("OnlineSynthesizer", "request params: " + ((Object) stringBuffer));
            return new UrlEncodedFormEntity(arrayList, d2);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.e eVar) {
        return n.ONLINE_UNSUPPORTED_OPERATION.b();
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.g gVar) {
        return n.ONLINE_UNSUPPORTED_OPERATION.b();
    }

    @Override // com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.f fVar) {
        return n.ONLINE_UNSUPPORTED_OPERATION.b();
    }
}
