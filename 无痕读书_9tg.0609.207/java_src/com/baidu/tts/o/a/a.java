package com.baidu.tts.o.a;

import android.content.Context;
import com.baidu.tts.aop.tts.ITts;
import com.baidu.tts.aop.ttslistener.TtsListener;
import com.baidu.tts.auth.AuthInfo;
import com.baidu.tts.f.g;
import com.baidu.tts.f.m;
import com.baidu.tts.m.j;
/* compiled from: ATtsState.java */
/* loaded from: classes8.dex */
public abstract class a implements ITts {

    /* renamed from: a  reason: collision with root package name */
    public c f11255a;

    public a(c cVar) {
        this.f11255a = cVar;
    }

    public void a(a aVar) {
        this.f11255a.a(aVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public AuthInfo auth(m mVar) {
        return this.f11255a.b(mVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public m getMode() {
        return this.f11255a.n();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public TtsListener getTtsListener() {
        return this.f11255a.m();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public j getTtsParams() {
        return this.f11255a.o();
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void setContext(Context context) {
        this.f11255a.a(context);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void setMode(m mVar) {
        this.f11255a.a(mVar);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public int setParam(g gVar, String str) {
        return this.f11255a.a(gVar, str);
    }

    @Override // com.baidu.tts.aop.tts.ITts
    public void setTtsListener(TtsListener ttsListener) {
        this.f11255a.a(ttsListener);
    }
}
