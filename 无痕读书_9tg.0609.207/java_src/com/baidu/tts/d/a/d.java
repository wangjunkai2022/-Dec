package com.baidu.tts.d.a;
/* compiled from: DownloadingState.java */
/* loaded from: classes8.dex */
public class d extends a {
    public d(b bVar) {
        super(bVar);
    }

    @Override // com.baidu.tts.d.a.a
    public e a(c cVar) {
        return this.f11182a.b(cVar);
    }

    @Override // com.baidu.tts.d.a.a, com.baidu.tts.j.b
    public void d() {
        a(this.f11182a.r());
    }

    @Override // com.baidu.tts.d.a.a, com.baidu.tts.j.b
    public void e() {
        this.f11182a.t();
        a(this.f11182a.p());
    }

    @Override // com.baidu.tts.d.a.a, com.baidu.tts.j.b
    public void f() {
        e();
        if (this.f11182a.a() != this) {
            this.f11182a.f();
        }
    }
}
