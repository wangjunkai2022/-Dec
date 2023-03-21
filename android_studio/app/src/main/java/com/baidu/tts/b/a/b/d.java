package com.baidu.tts.b.a.b;

import com.apk.Cgoto;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.b.a.b.e;
import com.baidu.tts.b.a.b.f;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.n;
import com.baidu.tts.m.i;

/* compiled from: MixSynthesizer.java */
/* loaded from: classes8.dex */
public class d extends a {
    public com.baidu.tts.m.b b;
    public TtsError f;
    public int g = 0;
    public int h = 0;
    public f c = new f();
    public e d = new e();
    public c e = new c();

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public TtsError b() {
        this.c.b();
        this.d.b();
        this.e.a((com.baidu.tts.m.b) null);
        return null;
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public TtsError a() {
        this.c.a(new com.baidu.tts.b.a.b() { // from class: com.baidu.tts.b.a.b.d.1
            @Override // com.baidu.tts.b.a.b
            public void a(com.baidu.tts.m.h hVar) {
            }

            @Override // com.baidu.tts.b.a.b
            public void b(com.baidu.tts.m.h hVar) {
            }

            @Override // com.baidu.tts.b.a.b
            public void c(com.baidu.tts.m.h hVar) {
                d.this.h = hVar.b();
                d.this.g = hVar.c();
                d.this.a(hVar);
            }

            @Override // com.baidu.tts.b.a.b
            public void d(com.baidu.tts.m.h hVar) {
            }

            @Override // com.baidu.tts.b.a.b
            public void e(com.baidu.tts.m.h hVar) {
            }
        });
        this.d.a(new com.baidu.tts.b.a.b() { // from class: com.baidu.tts.b.a.b.d.2
            @Override // com.baidu.tts.b.a.b
            public void a(com.baidu.tts.m.h hVar) {
            }

            @Override // com.baidu.tts.b.a.b
            public void b(com.baidu.tts.m.h hVar) {
            }

            @Override // com.baidu.tts.b.a.b
            public void c(com.baidu.tts.m.h hVar) {
                d dVar = d.this;
                dVar.a(dVar.b(hVar));
            }

            @Override // com.baidu.tts.b.a.b
            public void d(com.baidu.tts.m.h hVar) {
            }

            @Override // com.baidu.tts.b.a.b
            public void e(com.baidu.tts.m.h hVar) {
            }
        });
        this.c.a();
        TtsError a2 = this.d.a();
        this.f = a2;
        if (a2 != null) {
            return com.baidu.tts.h.a.c.a().b(n.MIX_ENGINE_OFFLINE_INIT_FAILURE);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.baidu.tts.m.h b(com.baidu.tts.m.h hVar) {
        int i;
        int b = hVar.b();
        if (b >= 0) {
            i = b + this.h;
        } else {
            i = b - this.h;
        }
        hVar.b(i);
        hVar.d(hVar.c() + this.g);
        return hVar;
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public <AllSynthesizerParams> void a(AllSynthesizerParams allsynthesizerparams) {
        com.baidu.tts.m.b bVar = (com.baidu.tts.m.b) allsynthesizerparams;
        this.b = bVar;
        f.b a2 = bVar.a();
        a2.b(3);
        a2.c(500);
        this.c.a((f) a2);
        this.d.a((e) this.b.b());
        this.e.a(this.b);
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public int b(com.baidu.tts.m.e eVar) {
        return this.d.b(eVar);
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public TtsError a(i iVar) throws InterruptedException {
        String substring;
        this.h = 0;
        this.g = 0;
        if (this.e.a()) {
            TtsError a2 = this.c.a(iVar);
            if (a2 != null) {
                StringBuilder m1016super = Cgoto.m1016super("online synthesize tts error=");
                m1016super.append(a2.getDetailMessage());
                LoggerProxy.d("MixSynthesizer", m1016super.toString());
                n errorEnum = a2.getErrorEnum();
                if (errorEnum == n.ONLINE_ENGINE_HTTP_REQUEST_FAILURE || errorEnum == n.ONLINE_ENGINE_GET_TIMEOUT || errorEnum == n.ONLINE_AUTH_TIMEOUT_EXCEPTION || errorEnum == n.ONLINE_ENGINE_SERVER_IP_IS_NULL) {
                    String c = iVar.c();
                    int length = c.length();
                    int i = this.g;
                    if (length > i) {
                        substring = c.substring(i);
                    } else {
                        substring = c.substring(c.length() - 1);
                    }
                    iVar.b(substring);
                    return this.d.a(iVar);
                }
                return a2;
            }
            return a2;
        }
        return this.d.a(iVar);
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.e eVar) {
        return this.d.a(eVar);
    }

    @Override // com.baidu.tts.b.a.b.a, com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.g gVar) {
        if (this.f == null) {
            return this.d.a(gVar);
        }
        String a2 = gVar.a();
        String b = gVar.b();
        e.a b2 = this.b.b();
        b2.d(a2);
        b2.e(b);
        TtsError a3 = this.d.a();
        this.f = a3;
        if (a3 == null) {
            return 0;
        }
        return a3.getDetailCode();
    }

    @Override // com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.f fVar) {
        return this.d.a(fVar);
    }
}
