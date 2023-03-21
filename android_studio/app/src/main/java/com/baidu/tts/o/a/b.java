package com.baidu.tts.o.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.g;
import com.baidu.tts.m.i;

/* compiled from: InitializedState.java */
/* loaded from: classes8.dex */
public class b extends a {
    public b(c cVar) {
        super(cVar);
    }

    @Override // com.baidu.tts.j.b
    public TtsError b() {
        return null;
    }

    @Override // com.baidu.tts.j.b
    public void c() {
        this.f11255a.i();
    }

    @Override // com.baidu.tts.j.b
    public void d() {
        this.f11255a.j();
    }

    @Override // com.baidu.tts.j.b
    public void e() {
        this.f11255a.k();
    }

    @Override // com.baidu.tts.j.b
    public void f() {
        this.f11255a.l();
        a(this.f11255a.a());
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int freeCustomResource(e eVar) {
        return this.f11255a.b(eVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int loadCustomResource(e eVar) {
        return this.f11255a.a(eVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int loadEnglishModel(f fVar) {
        return this.f11255a.a(fVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int loadModel(g gVar) {
        return this.f11255a.a(gVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setAudioAttributes(int i, int i2) {
        return this.f11255a.a(i, i2);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setAudioSampleRate(int i) {
        return this.f11255a.b(i);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setAudioStreamType(int i) {
        return this.f11255a.a(i);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setStereoVolume(float f, float f2) {
        return this.f11255a.a(f, f2);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void speak(i iVar) {
        this.f11255a.a(iVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void synthesize(i iVar) {
        this.f11255a.b(iVar);
    }
}
