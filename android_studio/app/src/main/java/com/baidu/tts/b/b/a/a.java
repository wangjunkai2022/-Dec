package com.baidu.tts.b.b.a;

import com.baidu.tts.aop.tts.TtsError;

/* compiled from: APlayExecutor.java */
/* loaded from: classes8.dex */
public abstract class a extends com.baidu.tts.j.a implements c {

    /* renamed from: a  reason: collision with root package name */
    public com.baidu.tts.b.b.a f11154a;
    public volatile b b;

    public b a() {
        return this.b;
    }

    @Override // com.baidu.tts.b.b.a.c
    public int b(int i) {
        return this.b.b(i);
    }

    public void c(com.baidu.tts.m.h hVar) {
        com.baidu.tts.b.b.a aVar;
        if (!C() || (aVar = this.f11154a) == null) {
            return;
        }
        aVar.b(hVar);
    }

    public void d(com.baidu.tts.m.h hVar) {
        com.baidu.tts.b.b.a aVar;
        if (!C() || (aVar = this.f11154a) == null) {
            return;
        }
        aVar.c(hVar);
    }

    @Override // com.baidu.tts.j.a
    public TtsError g() {
        return this.b.b();
    }

    @Override // com.baidu.tts.j.a
    public void h() {
        this.b.a();
    }

    @Override // com.baidu.tts.j.a
    public void i() {
        this.b.c();
    }

    @Override // com.baidu.tts.j.a
    public void j() {
        this.b.d();
    }

    @Override // com.baidu.tts.j.a
    public void k() {
        this.b.e();
    }

    @Override // com.baidu.tts.j.a
    public void l() {
        this.b.f();
    }

    @Override // com.baidu.tts.b.b.a.c
    public void o() {
        this.b.o();
    }

    public void a(b bVar) {
        this.b = bVar;
    }

    public void b(com.baidu.tts.m.h hVar) {
        com.baidu.tts.b.b.a aVar;
        if (!C() || (aVar = this.f11154a) == null) {
            return;
        }
        aVar.a(hVar);
    }

    @Override // com.baidu.tts.b.b.a.c
    public <T> void a(T t) {
        this.b.a((b) t);
    }

    @Override // com.baidu.tts.b.b.a.c
    public void a(com.baidu.tts.b.b.a aVar) {
        this.b.a(aVar);
    }

    @Override // com.baidu.tts.b.b.a.c
    public void a(com.baidu.tts.m.h hVar) {
        this.b.a(hVar);
    }

    @Override // com.baidu.tts.b.b.a.c
    public int a(float f, float f2) {
        return this.b.a(f, f2);
    }

    @Override // com.baidu.tts.b.b.a.c
    public int a(int i) {
        return this.b.a(i);
    }

    @Override // com.baidu.tts.b.b.a.c
    public int a(int i, int i2) {
        return this.b.a(i, i2);
    }
}
