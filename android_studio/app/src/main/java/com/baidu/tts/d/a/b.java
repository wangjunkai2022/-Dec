package com.baidu.tts.d.a;

import com.apk.Cgoto;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.f.l;
import com.baidu.tts.f.n;
import com.baidu.tts.loopj.SyncHttpClient;
import com.baidu.tts.tools.FileTools;
import com.baidu.tts.tools.StringTool;
import java.io.File;
import java.util.HashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.Header;

/* compiled from: DownloadEngine.java */
/* loaded from: classes8.dex */
public class b extends com.baidu.tts.j.a {
    public ThreadPoolExecutor h;
    public com.baidu.tts.l.a i;
    public i b = new i(this);
    public f c = new f(this);
    public d f = new d(this);
    public h g = new h(this);

    /* renamed from: a  reason: collision with root package name */
    public volatile com.baidu.tts.d.a.a f11183a = this.b;

    /* compiled from: DownloadEngine.java */
    /* loaded from: classes8.dex */
    public class a implements Callable<Void> {
        public c b;
        public SyncHttpClient c;

        public a(c cVar) {
            this.b = cVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            this.b.d();
            final String a2 = this.b.a();
            LoggerProxy.d("DownloadEngine", "DownloadWork start fileId=" + a2);
            if (StringTool.isEmpty(a2)) {
                this.b.a(com.baidu.tts.h.a.c.a().a(n.MODEL_REQUEST_ERROR, "fileId is null"));
            } else {
                HashSet hashSet = new HashSet();
                hashSet.add(a2);
                ModelFileBags modelFileBags = b.this.i.a(hashSet).get();
                if (modelFileBags != null) {
                    String url = modelFileBags.getUrl(0);
                    if (url != null) {
                        if (url.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS)) {
                            this.c = new SyncHttpClient(true, 80, 443);
                        } else {
                            this.c = new SyncHttpClient();
                        }
                        this.c.setURLEncodingEnabled(false);
                        this.c.setTimeout(l.DEFAULT.b());
                        this.c.setMaxRetriesAndTimeout(5, 1500);
                        g gVar = new g(FileTools.getFile(this.b.b()), this.b) { // from class: com.baidu.tts.d.a.b.a.1
                            @Override // com.baidu.tts.d.a.g, com.baidu.tts.loopj.FileAsyncHttpResponseHandler
                            public void onFailure(int i, Header[] headerArr, Throwable th, File file) {
                                StringBuilder m1016super = Cgoto.m1016super("1isInterrupted=");
                                m1016super.append(Thread.currentThread().isInterrupted());
                                LoggerProxy.d("DownloadEngine", m1016super.toString());
                                if (b.this.C()) {
                                    super.onFailure(i, headerArr, th, file);
                                }
                            }

                            @Override // com.baidu.tts.d.a.g, com.baidu.tts.loopj.AsyncHttpResponseHandler
                            public void onProgress(long j, long j2) {
                                if (b.this.C()) {
                                    super.onProgress(j, j2);
                                }
                            }

                            @Override // com.baidu.tts.d.a.g, com.baidu.tts.loopj.FileAsyncHttpResponseHandler
                            public void onSuccess(int i, Header[] headerArr, File file) {
                                StringBuilder m1016super = Cgoto.m1016super("2isInterrupted=");
                                m1016super.append(Thread.currentThread().isInterrupted());
                                m1016super.append("--fileId=");
                                m1016super.append(a2);
                                LoggerProxy.d("DownloadEngine", m1016super.toString());
                                if (b.this.C()) {
                                    super.onSuccess(i, headerArr, file);
                                }
                            }
                        };
                        gVar.setUseSynchronousMode(true);
                        LoggerProxy.d("DownloadEngine", "before get fileId=" + a2);
                        this.c.get(url, gVar);
                    } else {
                        this.b.a(com.baidu.tts.h.a.c.a().a(n.MODEL_REQUEST_ERROR, "url is null"));
                    }
                } else {
                    this.b.a(com.baidu.tts.h.a.c.a().a(n.MODEL_REQUEST_ERROR, "urlbags is null"));
                }
            }
            LoggerProxy.d("DownloadEngine", "DownloadWork end");
            return null;
        }

        public void b() {
            SyncHttpClient syncHttpClient = this.c;
            if (syncHttpClient != null) {
                syncHttpClient.stop();
            }
        }

        public c c() {
            return this.b;
        }
    }

    public b() {
        b();
    }

    public e b(c cVar) {
        Future<Void> future;
        a aVar = new a(cVar);
        cVar.c();
        LoggerProxy.d("DownloadEngine", "before submit");
        try {
            future = this.h.submit(aVar);
        } catch (Exception e) {
            LoggerProxy.d("DownloadEngine", "submit exception");
            cVar.a(com.baidu.tts.h.a.c.a().a(n.MODEL_FILE_DOWNLOAD_EXCEPTION, e));
            future = null;
        }
        e eVar = new e();
        eVar.a(future);
        eVar.a(aVar);
        return eVar;
    }

    @Override // com.baidu.tts.j.a
    public TtsError g() {
        return this.f11183a.b();
    }

    @Override // com.baidu.tts.j.a
    public void h() {
        this.f11183a.a();
    }

    @Override // com.baidu.tts.j.a
    public void i() {
        this.f11183a.c();
    }

    @Override // com.baidu.tts.j.a
    public void j() {
        this.f11183a.d();
    }

    @Override // com.baidu.tts.j.a
    public void k() {
        this.f11183a.e();
    }

    @Override // com.baidu.tts.j.a
    public void l() {
        this.f11183a.f();
    }

    @Override // com.baidu.tts.j.a
    public boolean m() {
        return this.f11183a == this.g;
    }

    @Override // com.baidu.tts.j.a
    public boolean n() {
        return Thread.currentThread().isInterrupted() || this.f11183a == this.c;
    }

    public i o() {
        return this.b;
    }

    public f p() {
        return this.c;
    }

    public d q() {
        return this.f;
    }

    public h r() {
        return this.g;
    }

    public void s() {
        this.h = (ThreadPoolExecutor) Executors.newFixedThreadPool(5, new com.baidu.tts.g.a.a("bdtts-downloadPoolThread"));
    }

    public void t() {
        LoggerProxy.d("DownloadEngine", "enter stop");
        ThreadPoolExecutor threadPoolExecutor = this.h;
        if (threadPoolExecutor != null) {
            if (!threadPoolExecutor.isShutdown()) {
                this.h.shutdownNow();
            }
            try {
                LoggerProxy.d("DownloadEngine", "before awaitTermination");
                boolean awaitTermination = this.h.awaitTermination(l.DEFAULT.a(), TimeUnit.MILLISECONDS);
                LoggerProxy.d("DownloadEngine", "after awaitTermination isTermination=" + awaitTermination);
            } catch (InterruptedException unused) {
            }
            this.h = null;
        }
        LoggerProxy.d("DownloadEngine", "end stop");
    }

    public void a(com.baidu.tts.l.a aVar) {
        this.i = aVar;
    }

    public com.baidu.tts.d.a.a a() {
        return this.f11183a;
    }

    public void a(com.baidu.tts.d.a.a aVar) {
        this.f11183a = aVar;
    }

    public e a(c cVar) {
        return this.f11183a.a(cVar);
    }
}
