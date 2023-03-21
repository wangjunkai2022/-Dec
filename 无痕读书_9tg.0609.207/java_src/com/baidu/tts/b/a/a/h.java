package com.baidu.tts.b.a.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.f.n;
import com.baidu.tts.m.i;
/* compiled from: UninitialEngineState.java */
/* loaded from: classes8.dex */
public class h extends b {
    public h(c cVar) {
        super(cVar);
    }

    @Override // com.baidu.tts.b.a.a.b, com.baidu.tts.b.a.a.d
    public void a(i iVar) {
        a(com.baidu.tts.m.h.b(iVar));
    }

    @Override // com.baidu.tts.b.a.a.b, com.baidu.tts.j.b
    public TtsError b() {
        TtsError s = this.f11138a.s();
        a((b) this.f11138a.p());
        return s;
    }

    @Override // com.baidu.tts.b.a.a.b, com.baidu.tts.b.a.a.d
    public int a(com.baidu.tts.m.e eVar) {
        a(new com.baidu.tts.m.h());
        return -1;
    }

    @Override // com.baidu.tts.b.a.a.b, com.baidu.tts.b.a.a.d
    public int b(com.baidu.tts.m.e eVar) {
        a(new com.baidu.tts.m.h());
        return -1;
    }

    @Override // com.baidu.tts.b.a.a.b, com.baidu.tts.b.a.a.d
    public int a(com.baidu.tts.m.g gVar) {
        a(new com.baidu.tts.m.h());
        return -1;
    }

    @Override // com.baidu.tts.b.a.a.b, com.baidu.tts.b.a.a.d
    public int a(com.baidu.tts.m.f fVar) {
        a(new com.baidu.tts.m.h());
        return -1;
    }

    private void a(com.baidu.tts.m.h hVar) {
        hVar.a(com.baidu.tts.h.a.c.a().b(n.OFFLINE_ENGINE_UNINITIALIZED));
        this.f11138a.e(hVar);
    }
}
