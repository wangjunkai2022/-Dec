package com.baidu.tts.d;

import com.apk.Cgoto;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.DownloadHandler;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.f.l;
import com.baidu.tts.f.n;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.StringTool;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* compiled from: Downloader.java */
/* loaded from: classes8.dex */
public class c implements com.baidu.tts.j.b {

    /* renamed from: a  reason: collision with root package name */
    public static volatile c f11195a;
    public com.baidu.tts.l.a b;
    public com.baidu.tts.d.b.a c = com.baidu.tts.d.b.a.a();
    public com.baidu.tts.d.a.b d = new com.baidu.tts.d.a.b();
    public ExecutorService e;

    /* compiled from: Downloader.java */
    /* loaded from: classes8.dex */
    public class a implements Callable<com.baidu.tts.d.a> {
        public DownloadHandler b;

        public a(DownloadHandler downloadHandler) {
            this.b = downloadHandler;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public com.baidu.tts.d.a call() throws Exception {
            com.baidu.tts.d.a aVar = new com.baidu.tts.d.a();
            com.baidu.tts.database.a e = c.this.b.e();
            String modelId = this.b.getModelId();
            com.baidu.tts.d.b.d b = c.this.c.b(modelId);
            try {
                b.c(this.b);
                if (!b.a(e)) {
                    Conditions conditions = new Conditions();
                    conditions.appendId(modelId);
                    ModelBags modelBags = c.this.b.a(conditions).get();
                    if (modelBags != null && !modelBags.isEmpty()) {
                        b.a(modelBags, e);
                    }
                    com.baidu.tts.h.a.c a2 = com.baidu.tts.h.a.c.a();
                    n nVar = n.MODEL_BAGS_EMPTY;
                    b.a(this.b, a2.a(nVar, "modelId=" + modelId));
                    return aVar;
                }
                Set<String> f = b.f();
                if (DataTool.isSetEmpty(f)) {
                    com.baidu.tts.h.a.c a3 = com.baidu.tts.h.a.c.a();
                    n nVar2 = n.MODEL_DB_MODEL_INVALID;
                    b.a(this.b, a3.a(nVar2, "modelId=" + modelId));
                    return aVar;
                }
                for (String str : f) {
                    com.baidu.tts.d.b.c c = c.this.c.c(str);
                    if (!c.a(e)) {
                        HashSet hashSet = new HashSet();
                        hashSet.add(str);
                        ModelFileBags modelFileBags = c.this.b.a(hashSet).get();
                        if (modelFileBags != null && !modelFileBags.isEmpty()) {
                            modelFileBags.generateAbsPath(c.this.b.d());
                            c.a(modelFileBags, e);
                        }
                        com.baidu.tts.h.a.c a4 = com.baidu.tts.h.a.c.a();
                        n nVar3 = n.MODEL_FILE_BAG_EMPTY;
                        b.a(this.b, a4.a(nVar3, "fileId=" + str));
                        return aVar;
                    }
                }
                b.d();
                Set<String> b2 = b.b();
                if (DataTool.isSetEmpty(b2)) {
                    com.baidu.tts.h.a.c a5 = com.baidu.tts.h.a.c.a();
                    n nVar4 = n.MODEL_DB_MODEL_FILE_PATHS_INVALID;
                    b.a(this.b, a5.a(nVar4, "modelId=" + modelId));
                    return aVar;
                }
                for (String str2 : b2) {
                    if (!StringTool.isEmpty(str2)) {
                        com.baidu.tts.d.b.b a6 = c.this.c.a(str2);
                        a6.a(modelId);
                        boolean a7 = a6.a(e);
                        String c2 = a6.c();
                        LoggerProxy.d("Downloader", "isNeedDownload=" + a7 + "--fileId=" + c2);
                        if (a7) {
                            if (a6.e()) {
                                a6.f();
                            }
                            com.baidu.tts.d.a.c cVar = new com.baidu.tts.d.a.c();
                            cVar.a(a6);
                            if (Thread.currentThread().isInterrupted()) {
                                return null;
                            }
                            LoggerProxy.d("Downloader", "before download fileId=" + c2);
                            a6.a(c.this.d.a(cVar));
                            aVar.a(true);
                        } else {
                            aVar.a(str2, a6.d());
                        }
                    }
                }
                if (!aVar.a() && aVar.b()) {
                    this.b.updateProgress(b);
                    com.baidu.tts.h.a.c a8 = com.baidu.tts.h.a.c.a();
                    n nVar5 = n.MODEL_EXISTS;
                    b.a(this.b, a8.a(nVar5, "modelId=" + modelId));
                }
                return aVar;
            } catch (Exception e2) {
                StringBuilder m1016super = Cgoto.m1016super("exception=");
                m1016super.append(e2.toString());
                LoggerProxy.d("Downloader", m1016super.toString());
                com.baidu.tts.h.a.c a9 = com.baidu.tts.h.a.c.a();
                n nVar6 = n.MODEL_CHECK_EXCEPTION;
                b.a(this.b, a9.a(nVar6, "modelId=" + modelId));
                return aVar;
            }
        }
    }

    private synchronized ExecutorService h() {
        if (this.e == null) {
            this.e = Executors.newSingleThreadExecutor();
        }
        return this.e;
    }

    @Override // com.baidu.tts.j.b
    public synchronized void d() {
        this.d.d();
    }

    @Override // com.baidu.tts.j.b
    public synchronized void e() {
        LoggerProxy.d("Downloader", "enter stop");
        this.c.c();
        if (this.e != null) {
            if (!this.e.isShutdown()) {
                this.e.shutdownNow();
                this.d.e();
                LoggerProxy.d("Downloader", "after engine stop");
            }
            try {
                LoggerProxy.d("Downloader", "before awaitTermination");
                boolean awaitTermination = this.e.awaitTermination(l.DEFAULT.a(), TimeUnit.MILLISECONDS);
                LoggerProxy.d("Downloader", "after awaitTermination isTermination=" + awaitTermination);
            } catch (InterruptedException unused) {
            }
            this.e = null;
        }
        LoggerProxy.d("Downloader", "end stop");
    }

    @Override // com.baidu.tts.j.b
    public synchronized void f() {
    }

    public synchronized void g() {
        h();
        this.d.A();
    }

    public static c a() {
        if (f11195a == null) {
            synchronized (c.class) {
                if (f11195a == null) {
                    f11195a = new c();
                }
            }
        }
        return f11195a;
    }

    @Override // com.baidu.tts.j.b
    public synchronized TtsError b() {
        return null;
    }

    @Override // com.baidu.tts.j.b
    public synchronized void c() {
        this.d.c();
    }

    public void a(com.baidu.tts.l.a aVar) {
        this.b = aVar;
        this.c.a(aVar.e());
        this.d.a(this.b);
    }

    public synchronized DownloadHandler a(DownloadHandler downloadHandler) {
        LoggerProxy.d("Downloader", "download handler=" + downloadHandler);
        downloadHandler.setCheckFuture(h().submit(new a(downloadHandler)));
        return downloadHandler;
    }
}
