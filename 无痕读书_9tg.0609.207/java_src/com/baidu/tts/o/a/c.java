package com.baidu.tts.o.a;

import android.content.Context;
import com.baidu.tts.aop.tts.ITts;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.aop.ttslistener.TtsListener;
import com.baidu.tts.auth.AuthInfo;
import com.baidu.tts.f.f;
import com.baidu.tts.f.m;
import com.baidu.tts.f.n;
import com.baidu.tts.m.e;
import com.baidu.tts.m.g;
import com.baidu.tts.m.h;
import com.baidu.tts.m.i;
import com.baidu.tts.m.j;
/* compiled from: Tts.java */
/* loaded from: classes8.dex */
public class c implements ITts {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ boolean f11256a = !c.class.desiredAssertionStatus();
    public TtsListener c;
    public m d;
    public com.baidu.tts.a.c.c e;
    public j b = new j();
    public d g = new d(this);
    public b h = new b(this);
    public volatile a f = this.g;

    /* compiled from: Tts.java */
    /* renamed from: com.baidu.tts.o.a.c$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f11257a;

        static {
            int[] iArr = new int[m.values().length];
            f11257a = iArr;
            try {
                m mVar = m.ONLINE;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f11257a;
                m mVar2 = m.OFFLINE;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f11257a;
                m mVar3 = m.MIX;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public void a(a aVar) {
        this.f = aVar;
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public AuthInfo auth(m mVar) {
        return this.f.auth(mVar);
    }

    @Override // com.baidu.tts.j.b
    public TtsError b() {
        return this.f.b();
    }

    @Override // com.baidu.tts.j.b
    public void c() {
        this.f.c();
    }

    @Override // com.baidu.tts.j.b
    public void d() {
        this.f.d();
    }

    @Override // com.baidu.tts.j.b
    public void e() {
        this.f.e();
    }

    @Override // com.baidu.tts.j.b
    public void f() {
        this.f.f();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int freeCustomResource(e eVar) {
        return this.f.freeCustomResource(eVar);
    }

    public b g() {
        return this.h;
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public m getMode() {
        return this.f.getMode();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public TtsListener getTtsListener() {
        return this.f.getTtsListener();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public j getTtsParams() {
        return this.f.getTtsParams();
    }

    public TtsError h() {
        Cloneable c;
        if (this.d == null) {
            this.d = m.ONLINE;
        }
        if (this.b == null) {
            this.b = new j();
        }
        TtsError b = com.baidu.tts.h.b.b.a().b();
        if (f11256a || b == null) {
            int i = AnonymousClass1.f11257a[this.d.ordinal()];
            com.baidu.tts.b.a.a.d dVar = null;
            if (i == 1) {
                dVar = com.baidu.tts.b.a.a.a().a(f.ONLINE);
                c = this.b.c();
            } else if (i == 2) {
                dVar = com.baidu.tts.b.a.a.a().a(f.OFFLINE);
                c = this.b.d();
            } else if (i != 3) {
                c = null;
            } else {
                dVar = com.baidu.tts.b.a.a.a().a(f.MIX);
                c = this.b.a();
            }
            if (dVar != null && c != null) {
                dVar.a((com.baidu.tts.b.a.a.d) c);
                com.baidu.tts.b.b.a.f fVar = new com.baidu.tts.b.b.a.f();
                fVar.a((com.baidu.tts.b.b.a.f) this.b.b());
                this.e = new com.baidu.tts.a.c.c();
                this.e.a(new com.baidu.tts.a.c.b(dVar, fVar, this.b));
                TtsListener ttsListener = this.c;
                if (ttsListener != null) {
                    this.e.a(ttsListener);
                }
                return this.e.a();
            }
            return com.baidu.tts.h.a.c.a().b(n.TTS_UNINITIAL);
        }
        throw new AssertionError();
    }

    public void i() {
        this.e.b();
    }

    public void j() {
        this.e.c();
    }

    public void k() {
        this.e.d();
    }

    public void l() {
        this.e.e();
        com.baidu.tts.auth.a.a().b();
        com.baidu.tts.h.b.b.a().f();
        this.b = new j();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int loadCustomResource(e eVar) {
        return this.f.loadCustomResource(eVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int loadEnglishModel(com.baidu.tts.m.f fVar) {
        return this.f.loadEnglishModel(fVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int loadModel(g gVar) {
        return this.f.loadModel(gVar);
    }

    public TtsListener m() {
        return this.c;
    }

    public m n() {
        return this.d;
    }

    public j o() {
        return this.b;
    }

    public int p() {
        if (this.c != null) {
            a(com.baidu.tts.h.a.c.a().b(n.TTS_UNINITIAL));
            return -1;
        }
        throw new IllegalStateException(n.TTS_UNINITIAL.c());
    }

    public boolean q() {
        return this.h == this.f;
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setAudioAttributes(int i, int i2) {
        return this.f.setAudioAttributes(i, i2);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setAudioSampleRate(int i) {
        return this.f.setAudioSampleRate(i);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setAudioStreamType(int i) {
        return this.f.setAudioStreamType(i);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void setContext(Context context) {
        this.f.setContext(context);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void setMode(m mVar) {
        this.f.setMode(mVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setParam(com.baidu.tts.f.g gVar, String str) {
        return this.f.setParam(gVar, str);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setStereoVolume(float f, float f2) {
        return this.f.setStereoVolume(f, f2);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void setTtsListener(TtsListener ttsListener) {
        this.f.setTtsListener(ttsListener);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void speak(i iVar) {
        this.f.speak(iVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void synthesize(i iVar) {
        this.f.synthesize(iVar);
    }

    public d a() {
        return this.g;
    }

    public AuthInfo b(m mVar) {
        return com.baidu.tts.auth.a.a().a(mVar, this.b);
    }

    public void a(TtsListener ttsListener) {
        if (ttsListener == null || ttsListener == this.c) {
            return;
        }
        this.c = ttsListener;
        com.baidu.tts.a.c.c cVar = this.e;
        if (cVar != null) {
            cVar.a(ttsListener);
        }
    }

    public void b(i iVar) {
        this.e.b(iVar);
    }

    public int b(e eVar) {
        return this.e.b(eVar);
    }

    public int b(int i) {
        try {
            return this.e.f().a().b(i);
        } catch (Exception unused) {
            return -1;
        }
    }

    public void a(Context context) {
        com.baidu.tts.h.b.b.a().a(context);
    }

    public void a(m mVar) {
        this.d = mVar;
    }

    public int a(com.baidu.tts.f.g gVar, String str) {
        j jVar = this.b;
        if (jVar != null) {
            return jVar.a(gVar, str);
        }
        return 0;
    }

    public void a(i iVar) {
        this.e.a(iVar);
    }

    public int a(e eVar) {
        return this.e.a(eVar);
    }

    public int a(g gVar) {
        return this.e.a(gVar);
    }

    public int a(com.baidu.tts.m.f fVar) {
        return this.e.a(fVar);
    }

    public int a(float f, float f2) {
        return this.e.a(f, f2);
    }

    public int a(int i) {
        try {
            return this.e.f().a().a(i);
        } catch (Exception unused) {
            return -1;
        }
    }

    public int a(int i, int i2) {
        try {
            return this.e.f().a().a(i, i2);
        } catch (Exception unused) {
            return -1;
        }
    }

    public void a(TtsError ttsError) {
        a(h.b(ttsError));
    }

    public void a(h hVar) {
        TtsListener ttsListener = this.c;
        if (ttsListener != null) {
            ttsListener.onError(hVar);
        }
    }
}
