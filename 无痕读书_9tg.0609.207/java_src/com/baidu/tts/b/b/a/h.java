package com.baidu.tts.b.b.a;

import com.baidu.tts.aop.tts.TtsError;
/* compiled from: UninitialPlayState.java */
/* loaded from: classes8.dex */
public class h extends b {
    public h(f fVar) {
        super(fVar);
    }

    @Override // com.baidu.tts.b.b.a.b, com.baidu.tts.b.b.a.c
    public void a(com.baidu.tts.m.h hVar) {
        b();
        if (this.f11155a.a() != this) {
            this.f11155a.a(hVar);
        }
    }

    @Override // com.baidu.tts.b.b.a.b, com.baidu.tts.j.b
    public TtsError b() {
        TtsError t = this.f11155a.t();
        a((b) this.f11155a.q());
        return t;
    }

    @Override // com.baidu.tts.b.b.a.b, com.baidu.tts.b.b.a.c
    public void o() {
        b();
        if (this.f11155a.a() != this) {
            this.f11155a.o();
        }
    }
}
