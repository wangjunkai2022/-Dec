package com.baidu.tts.client;

import com.baidu.tts.f.m;
/* loaded from: classes8.dex */
public enum TtsMode {
    ONLINE(m.ONLINE),
    MIX(m.MIX);
    

    /* renamed from: a  reason: collision with root package name */
    public final m f11167a;

    TtsMode(m mVar) {
        this.f11167a = mVar;
    }

    public String getDescription() {
        return this.f11167a.b();
    }

    public int getMode() {
        return this.f11167a.a();
    }

    public m getTtsEnum() {
        return this.f11167a;
    }
}
