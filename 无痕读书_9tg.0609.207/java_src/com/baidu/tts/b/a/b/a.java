package com.baidu.tts.b.a.b;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.m.i;
/* compiled from: ASynthesizer.java */
/* loaded from: classes8.dex */
public abstract class a implements b {

    /* renamed from: a  reason: collision with root package name */
    public com.baidu.tts.b.a.b f11141a;

    @Override // com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.e eVar) {
        return 0;
    }

    @Override // com.baidu.tts.b.a.b.b
    public int a(com.baidu.tts.m.g gVar) {
        return 0;
    }

    @Override // com.baidu.tts.b.a.b.b
    public TtsError a() {
        return null;
    }

    @Override // com.baidu.tts.b.a.b.b
    public TtsError a(i iVar) throws InterruptedException {
        return null;
    }

    @Override // com.baidu.tts.b.a.b.b
    public void a(com.baidu.tts.b.a.b bVar) {
        this.f11141a = bVar;
    }

    @Override // com.baidu.tts.b.a.b.b
    public <T> void a(T t) {
    }

    @Override // com.baidu.tts.b.a.b.b
    public int b(com.baidu.tts.m.e eVar) {
        return 0;
    }

    @Override // com.baidu.tts.b.a.b.b
    public TtsError b() {
        return null;
    }

    public void a(com.baidu.tts.m.h hVar) {
        com.baidu.tts.b.a.b bVar = this.f11141a;
        if (bVar != null) {
            bVar.c(hVar);
        }
    }
}
