package com.baidu.tts.o.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.b.b.b.b;
import com.baidu.tts.f.n;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.g;
import com.baidu.tts.m.i;
/* compiled from: UninitialState.java */
/* loaded from: classes8.dex */
public class d extends a {
    public d(c cVar) {
        super(cVar);
    }

    @Override // com.baidu.tts.j.b
    public TtsError b() {
        TtsError h = this.f11255a.h();
        if (h != null) {
            n errorEnum = h.getErrorEnum();
            if (errorEnum != null) {
                if (n.a.MIX_ERROR.equals(errorEnum.a())) {
                    a(this.f11255a.g());
                }
            }
        } else {
            a(this.f11255a.g());
        }
        return h;
    }

    @Override // com.baidu.tts.j.b
    public void c() {
        this.f11255a.p();
    }

    @Override // com.baidu.tts.j.b
    public void d() {
        this.f11255a.p();
    }

    @Override // com.baidu.tts.j.b
    public void e() {
        this.f11255a.p();
    }

    @Override // com.baidu.tts.j.b
    public void f() {
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int freeCustomResource(e eVar) {
        return this.f11255a.p();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int loadCustomResource(e eVar) {
        return this.f11255a.p();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int loadEnglishModel(f fVar) {
        return this.f11255a.p();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int loadModel(g gVar) {
        return this.f11255a.p();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setAudioAttributes(int i, int i2) {
        b.a e = this.f11255a.getTtsParams().e();
        e.b(i);
        e.c(i2);
        return 0;
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setAudioSampleRate(int i) {
        this.f11255a.getTtsParams().e().a(i);
        return 0;
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setAudioStreamType(int i) {
        this.f11255a.getTtsParams().e().d(i);
        return 0;
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setStereoVolume(float f, float f2) {
        b.a e = this.f11255a.getTtsParams().e();
        e.a(f);
        e.b(f2);
        return 0;
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void speak(i iVar) {
        this.f11255a.p();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void synthesize(i iVar) {
        this.f11255a.p();
    }
}
