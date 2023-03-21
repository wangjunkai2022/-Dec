package com.baidu.tts.b.a.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.n;
import com.baidu.tts.m.i;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* compiled from: EngineExecutor.java */
/* loaded from: classes8.dex */
public class c extends com.baidu.tts.b.a.a.a {
    public ExecutorService f;
    public h g = new h(this);
    public e h = new e(this);
    public g i = new g(this);
    public f j = new f(this);

    /* compiled from: EngineExecutor.java */
    /* loaded from: classes8.dex */
    public class a implements Callable<Void> {
        public i b;

        public a(i iVar) {
            this.b = iVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            try {
                c.this.a(com.baidu.tts.m.h.b(this.b));
                TtsError a2 = c.this.f11137a.a(this.b);
                if (a2 == null) {
                    c.this.c(com.baidu.tts.m.h.b(this.b));
                } else {
                    c.this.e(com.baidu.tts.m.h.a(this.b, a2));
                }
            } catch (InterruptedException unused) {
            }
            return null;
        }
    }

    public c() {
        this.c = this.g;
    }

    private void a(boolean z) {
        if (z) {
            d((com.baidu.tts.m.h) null);
            return;
        }
        com.baidu.tts.m.h hVar = new com.baidu.tts.m.h();
        hVar.a(com.baidu.tts.h.a.c.a().b(n.TTS_ENGINE_STOP_FAILURE));
        d(hVar);
    }

    public int b(com.baidu.tts.m.g gVar) {
        return this.f11137a.a(gVar);
    }

    public int c(com.baidu.tts.m.e eVar) {
        return this.f11137a.a(eVar);
    }

    public int d(com.baidu.tts.m.e eVar) {
        return this.f11137a.b(eVar);
    }

    @Override // com.baidu.tts.j.a
    public boolean m() {
        return this.c == this.j;
    }

    @Override // com.baidu.tts.j.a
    public boolean n() {
        return Thread.currentThread().isInterrupted() || this.c == this.h;
    }

    public h o() {
        return this.g;
    }

    public e p() {
        return this.h;
    }

    public g q() {
        return this.i;
    }

    public f r() {
        return this.j;
    }

    public TtsError s() {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.f11137a.a(new com.baidu.tts.b.a.b() { // from class: com.baidu.tts.b.a.a.c.1
            @Override // com.baidu.tts.b.a.b
            public void a(com.baidu.tts.m.h hVar) {
            }

            @Override // com.baidu.tts.b.a.b
            public void b(com.baidu.tts.m.h hVar) {
            }

            @Override // com.baidu.tts.b.a.b
            public void c(com.baidu.tts.m.h hVar) {
                c.this.b(hVar);
            }

            @Override // com.baidu.tts.b.a.b
            public void d(com.baidu.tts.m.h hVar) {
            }

            @Override // com.baidu.tts.b.a.b
            public void e(com.baidu.tts.m.h hVar) {
            }
        });
        return this.f11137a.a();
    }

    public void t() {
        this.f = Executors.newSingleThreadExecutor(new com.baidu.tts.g.a.a("bdtts-EngineExecutorPoolThread"));
    }

    public void u() {
    }

    public void v() {
    }

    public void w() {
        ExecutorService executorService = this.f;
        if (executorService != null) {
            if (!executorService.isShutdown()) {
                this.f.shutdownNow();
            }
            try {
                LoggerProxy.d("EngineExecutor", "before awaitTermination");
                boolean awaitTermination = this.f.awaitTermination(1000L, TimeUnit.MILLISECONDS);
                LoggerProxy.d("EngineExecutor", "after awaitTermination isTermination=" + awaitTermination);
                a(awaitTermination);
            } catch (InterruptedException unused) {
                a(false);
            }
            this.f = null;
        }
    }

    public void x() {
        this.f11137a.b();
        this.b = null;
    }

    public int b(com.baidu.tts.m.f fVar) {
        return this.f11137a.a(fVar);
    }

    public void b(com.baidu.tts.b.a.b.b bVar) {
        this.f11137a = bVar;
    }

    public void b(com.baidu.tts.b.a.b bVar) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        if (this.b.contains(bVar)) {
            return;
        }
        this.b.add(bVar);
    }

    public <T> void b(T t) {
        this.f11137a.a((com.baidu.tts.b.a.b.b) t);
    }

    public void b(i iVar) {
        this.f.submit(new a(iVar));
    }
}
