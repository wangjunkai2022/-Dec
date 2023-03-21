package com.baidu.tts.f;
/* compiled from: EngineEnum.java */
/* loaded from: classes8.dex */
public enum f {
    ONLINE(0, "online engine"),
    OFFLINE(1, "offline engine"),
    MIX(2, "online and offline mix engine");
    
    public final int d;
    public final String e;

    f(int i, String str) {
        this.d = i;
        this.e = str;
    }

    public int a() {
        return this.d;
    }
}
