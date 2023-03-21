package com.baidu.tts.m;

import com.baidu.tts.b.a.b.e;
import com.baidu.tts.b.a.b.f;
import com.baidu.tts.f.l;
import com.baidu.tts.f.n;
import com.baidu.tts.tools.DataTool;

/* compiled from: AllSynthesizerParams.java */
/* loaded from: classes8.dex */
public class b extends com.baidu.tts.n.a<b> {
    public com.baidu.tts.f.j c;
    public l d = l.FOUR_SECOND;

    /* renamed from: a  reason: collision with root package name */
    public f.b f11245a = new f.b();
    public e.a b = new e.a();

    public f.b a() {
        return this.f11245a;
    }

    public e.a b() {
        return this.b;
    }

    public void c(String str) {
        this.f11245a.s(str);
        this.b.s(str);
    }

    public int d(String str) {
        if (DataTool.isLong(str)) {
            this.f11245a.q(str);
            this.b.q(str);
            return 0;
        }
        return n.TTS_PARAMETER_INVALID.b();
    }

    public void a(String str) {
        this.f11245a.r(str);
        this.b.r(str);
    }

    public void b(String str) {
        this.f11245a.t(str);
        this.b.t(str);
    }

    public com.baidu.tts.f.j c() {
        return this.c;
    }

    public void a(com.baidu.tts.f.j jVar) {
        this.c = jVar;
    }

    public void a(l lVar) {
        this.d = lVar;
    }

    public l d() {
        return this.d;
    }
}
