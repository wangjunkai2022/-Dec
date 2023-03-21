package com.baidu.tts.b.a.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.m.i;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AEngineExecutor.java */
/* loaded from: classes8.dex */
public abstract class a extends com.baidu.tts.j.a implements d {

    /* renamed from: a  reason: collision with root package name */
    public com.baidu.tts.b.a.b.b f11137a;
    public List<com.baidu.tts.b.a.b> b = new ArrayList();
    public volatile b c;

    public b a() {
        return this.c;
    }

    @Override // com.baidu.tts.b.a.a.d
    public int b(com.baidu.tts.m.e eVar) {
        return this.c.b(eVar);
    }

    public void c(com.baidu.tts.m.h hVar) {
        if (C()) {
            if (hVar == null) {
                hVar = new com.baidu.tts.m.h();
            }
            hVar.a(com.baidu.tts.f.e.SYN_FINISH);
            List<com.baidu.tts.b.a.b> list = this.b;
            if (list != null) {
                for (com.baidu.tts.b.a.b bVar : list) {
                    if (bVar != null) {
                        bVar.b(hVar);
                    }
                }
            }
        }
    }

    public void d(com.baidu.tts.m.h hVar) {
        if (hVar == null) {
            hVar = new com.baidu.tts.m.h();
        }
        hVar.a(com.baidu.tts.f.e.SYN_STOP);
        List<com.baidu.tts.b.a.b> list = this.b;
        if (list != null) {
            for (com.baidu.tts.b.a.b bVar : list) {
                if (bVar != null) {
                    bVar.e(hVar);
                }
            }
        }
    }

    public void e(com.baidu.tts.m.h hVar) {
        if (hVar == null) {
            hVar = new com.baidu.tts.m.h();
        }
        hVar.a(com.baidu.tts.f.e.SYN_ERROR);
        List<com.baidu.tts.b.a.b> list = this.b;
        if (list != null) {
            for (com.baidu.tts.b.a.b bVar : list) {
                if (bVar != null) {
                    bVar.d(hVar);
                }
            }
        }
    }

    @Override // com.baidu.tts.j.a
    public TtsError g() {
        return this.c.b();
    }

    @Override // com.baidu.tts.j.a
    public void h() {
        this.c.a();
    }

    @Override // com.baidu.tts.j.a
    public void i() {
        this.c.c();
    }

    @Override // com.baidu.tts.j.a
    public void j() {
        this.c.d();
    }

    @Override // com.baidu.tts.j.a
    public void k() {
        this.c.e();
    }

    @Override // com.baidu.tts.j.a
    public void l() {
        this.c.f();
    }

    public void a(b bVar) {
        this.c = bVar;
    }

    public void b(com.baidu.tts.m.h hVar) {
        if (C()) {
            if (hVar == null) {
                hVar = new com.baidu.tts.m.h();
            }
            hVar.a(com.baidu.tts.f.e.SYN_DATA);
            List<com.baidu.tts.b.a.b> list = this.b;
            if (list != null) {
                for (com.baidu.tts.b.a.b bVar : list) {
                    if (bVar != null) {
                        bVar.c(hVar);
                    }
                }
            }
        }
    }

    @Override // com.baidu.tts.b.a.a.d
    public void a(com.baidu.tts.b.a.b.b bVar) {
        this.c.a(bVar);
    }

    @Override // com.baidu.tts.b.a.a.d
    public void a(com.baidu.tts.b.a.b bVar) {
        this.c.a(bVar);
    }

    @Override // com.baidu.tts.b.a.a.d
    public void a(Object obj) {
        this.c.a((b) obj);
    }

    @Override // com.baidu.tts.b.a.a.d
    public void a(i iVar) {
        this.c.a(iVar);
    }

    @Override // com.baidu.tts.b.a.a.d
    public int a(com.baidu.tts.m.e eVar) {
        return this.c.a(eVar);
    }

    @Override // com.baidu.tts.b.a.a.d
    public int a(com.baidu.tts.m.g gVar) {
        return this.c.a(gVar);
    }

    @Override // com.baidu.tts.b.a.a.d
    public int a(com.baidu.tts.m.f fVar) {
        return this.c.a(fVar);
    }

    public void a(com.baidu.tts.m.h hVar) {
        if (C()) {
            if (hVar == null) {
                hVar = new com.baidu.tts.m.h();
            }
            hVar.a(com.baidu.tts.f.e.SYN_START);
            List<com.baidu.tts.b.a.b> list = this.b;
            if (list != null) {
                for (com.baidu.tts.b.a.b bVar : list) {
                    if (bVar != null) {
                        bVar.a(hVar);
                    }
                }
            }
        }
    }
}
