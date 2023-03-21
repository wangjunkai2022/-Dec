package com.baidu.tts.f;

/* compiled from: TtsEnum.java */
/* loaded from: classes8.dex */
public enum m {
    ONLINE(0, "just online"),
    OFFLINE(1, "just offline"),
    MIX(2, "if online cannot use switch from online to offline");
    
    public final int d;
    public final String e;

    m(int i, String str) {
        this.d = i;
        this.e = str;
    }

    public int a() {
        return this.d;
    }

    public String b() {
        return this.e;
    }
}
