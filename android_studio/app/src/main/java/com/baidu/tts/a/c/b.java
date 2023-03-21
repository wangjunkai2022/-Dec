package com.baidu.tts.a.c;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.aop.ttslistener.TtsListener;
import com.baidu.tts.b.a.a.d;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.g;
import com.baidu.tts.m.h;
import com.baidu.tts.m.i;
import com.baidu.tts.m.j;

/* compiled from: TtsAdapter.java */
/* loaded from: classes8.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    public d f11110a;
    public com.baidu.tts.b.b.a.c b;
    public TtsListener c;
    public com.baidu.tts.b.a.b d;
    public com.baidu.tts.b.b.a e;
    public com.baidu.tts.b.a.b f;

    public b(d dVar, com.baidu.tts.b.b.a.c cVar, j jVar) {
        this.f11110a = dVar;
        this.b = cVar;
    }

    @Override // com.baidu.tts.j.b
    public void c() {
        this.f11110a.c();
        this.b.c();
    }

    @Override // com.baidu.tts.j.b
    public void d() {
        this.f11110a.d();
        this.b.d();
    }

    @Override // com.baidu.tts.j.b
    public void e() {
        LoggerProxy.d("TtsAdapter", "before engine stop");
        this.f11110a.e();
        LoggerProxy.d("TtsAdapter", "after engine stop");
        this.b.e();
        LoggerProxy.d("TtsAdapter", "after play stop");
    }

    @Override // com.baidu.tts.j.b
    public void f() {
        LoggerProxy.d("TtsAdapter", "before engine destroy");
        this.f11110a.f();
        LoggerProxy.d("TtsAdapter", "after engine destroy");
        this.b.f();
        LoggerProxy.d("TtsAdapter", "after player destroy");
    }

    public void g() {
        com.baidu.tts.b.a.b bVar = new com.baidu.tts.b.a.b() { // from class: com.baidu.tts.a.c.b.3
            @Override // com.baidu.tts.b.a.b
            public void a(h hVar) {
                if (b.this.a(hVar)) {
                    b.this.b.a(hVar);
                }
            }

            @Override // com.baidu.tts.b.a.b
            public void b(h hVar) {
                if (b.this.a(hVar)) {
                    b.this.b.a(hVar);
                }
            }

            @Override // com.baidu.tts.b.a.b
            public void c(h hVar) {
                if (b.this.a(hVar)) {
                    b.this.b.a(hVar);
                }
            }

            @Override // com.baidu.tts.b.a.b
            public void d(h hVar) {
            }

            @Override // com.baidu.tts.b.a.b
            public void e(h hVar) {
            }
        };
        this.f = bVar;
        this.f11110a.a(bVar);
    }

    @Override // com.baidu.tts.j.b
    public TtsError b() {
        TtsError b = this.f11110a.b();
        this.b.b();
        g();
        return b;
    }

    @Override // com.baidu.tts.a.c.a
    public void a(TtsListener ttsListener) {
        this.c = ttsListener;
        a(this.f11110a);
        a(this.b);
    }

    @Override // com.baidu.tts.a.c.a
    public void b(i iVar) {
        this.b.o();
        this.f11110a.a(iVar);
    }

    @Override // com.baidu.tts.a.c.a
    public void a(i iVar) {
        this.f11110a.a(iVar);
    }

    public void a(d dVar) {
        if (this.d == null) {
            this.d = new com.baidu.tts.b.a.b() { // from class: com.baidu.tts.a.c.b.1
                @Override // com.baidu.tts.b.a.b
                public void a(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onSynthesizeStart(hVar);
                    }
                }

                @Override // com.baidu.tts.b.a.b
                public void b(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onSynthesizeFinished(hVar);
                    }
                }

                @Override // com.baidu.tts.b.a.b
                public void c(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onSynthesizeDataArrived(hVar);
                    }
                }

                @Override // com.baidu.tts.b.a.b
                public void d(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onError(hVar);
                    }
                }

                @Override // com.baidu.tts.b.a.b
                public void e(h hVar) {
                    LoggerProxy.d("TtsAdapter", "onSynthesizeStop");
                }
            };
        }
        dVar.a(this.d);
    }

    @Override // com.baidu.tts.a.c.a
    public int b(e eVar) {
        return this.f11110a.b(eVar);
    }

    public void a(com.baidu.tts.b.b.a.c cVar) {
        if (this.e == null) {
            this.e = new com.baidu.tts.b.b.a() { // from class: com.baidu.tts.a.c.b.2
                @Override // com.baidu.tts.b.b.a
                public void a(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onPlayStart(hVar);
                    }
                }

                @Override // com.baidu.tts.b.b.a
                public void b(h hVar) {
                    if (b.this.c != null) {
                        b.this.c.onPlayProgressUpdate(hVar);
                    }
                }

                @Override // com.baidu.tts.b.b.a
                public void c(h hVar) {
                    if (b.this.c != null) {
                        try {
                            b.this.c.onPlayFinished(hVar);
                        } catch (Exception e) {
                            e.toString();
                        }
                    }
                }
            };
        }
        cVar.a(this.e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(h hVar) {
        i f = hVar.f();
        if (f == null) {
            return false;
        }
        return com.baidu.tts.f.i.a(f.g());
    }

    @Override // com.baidu.tts.a.c.a
    public int a(e eVar) {
        return this.f11110a.a(eVar);
    }

    @Override // com.baidu.tts.a.c.a
    public int a(g gVar) {
        return this.f11110a.a(gVar);
    }

    @Override // com.baidu.tts.a.c.a
    public int a(f fVar) {
        return this.f11110a.a(fVar);
    }

    @Override // com.baidu.tts.a.c.a
    public int a(float f, float f2) {
        return this.b.a(f, f2);
    }

    @Override // com.baidu.tts.a.c.a
    public com.baidu.tts.b.b.a.c a() {
        return this.b;
    }
}
