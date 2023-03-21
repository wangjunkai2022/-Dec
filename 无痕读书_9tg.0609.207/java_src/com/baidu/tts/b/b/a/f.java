package com.baidu.tts.b.b.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.l;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: PlayExecutor.java */
/* loaded from: classes8.dex */
public class f extends com.baidu.tts.b.b.a.a {
    public ThreadPoolExecutor c;
    public com.baidu.tts.b.b.b.c f;
    public h g = new h(this);
    public d h = new d(this);
    public g i = new g(this);
    public e j = new e(this);

    /* compiled from: PlayExecutor.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {
        public com.baidu.tts.m.h b;

        public a(com.baidu.tts.m.h hVar) {
            this.b = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            LoggerProxy.d("PlayQueueMachine", "enter run");
            f.this.f.a(this.b);
            LoggerProxy.d("PlayQueueMachine", "end run");
        }
    }

    public f() {
        this.b = this.g;
        this.f = com.baidu.tts.b.b.b.a().b();
    }

    public <T> void b(T t) {
        this.f.a((com.baidu.tts.b.b.b.c) ((com.baidu.tts.m.a) t).a());
    }

    public int c(int i) {
        return this.f.a(i);
    }

    public int d(int i) {
        return this.f.b(i);
    }

    public void e(com.baidu.tts.m.h hVar) {
        this.c.execute(new a(hVar));
    }

    @Override // com.baidu.tts.j.a
    public boolean m() {
        return this.b == this.j;
    }

    @Override // com.baidu.tts.j.a
    public boolean n() {
        return Thread.currentThread().isInterrupted() || this.b == this.h;
    }

    public h p() {
        return this.g;
    }

    public d q() {
        return this.h;
    }

    public g r() {
        return this.i;
    }

    public e s() {
        return this.j;
    }

    public TtsError t() {
        this.f.a(new com.baidu.tts.b.b.a() { // from class: com.baidu.tts.b.b.a.f.1
            @Override // com.baidu.tts.b.b.a
            public void a(com.baidu.tts.m.h hVar) {
                f.this.b(hVar);
            }

            @Override // com.baidu.tts.b.b.a
            public void b(com.baidu.tts.m.h hVar) {
                f.this.c(hVar);
            }

            @Override // com.baidu.tts.b.b.a
            public void c(com.baidu.tts.m.h hVar) {
                f.this.d(hVar);
            }
        });
        return this.f.a();
    }

    public void u() {
        this.c = new com.baidu.tts.c.a(200, "bdtts-PlayExecutorPoolThread");
    }

    public void v() {
        this.f.d();
    }

    public void w() {
        this.f.c();
    }

    public void x() {
        this.f.e();
        ThreadPoolExecutor threadPoolExecutor = this.c;
        if (threadPoolExecutor != null) {
            if (!threadPoolExecutor.isShutdown()) {
                this.c.shutdownNow();
            }
            try {
                LoggerProxy.d("PlayQueueMachine", "before await");
                boolean awaitTermination = this.c.awaitTermination(l.DEFAULT.a(), TimeUnit.MILLISECONDS);
                LoggerProxy.d("PlayQueueMachine", "after await isTer=" + awaitTermination);
            } catch (InterruptedException unused) {
                LoggerProxy.d("PlayQueueMachine", "InterruptedException");
            }
            this.c = null;
        }
    }

    public void y() {
        this.f.f();
    }

    public void z() {
        this.f.b();
    }

    public void b(com.baidu.tts.b.b.a aVar) {
        this.f11154a = aVar;
    }

    public int b(float f, float f2) {
        return this.f.a(f, f2);
    }

    public int b(int i, int i2) {
        return this.f.a(i, i2);
    }
}
