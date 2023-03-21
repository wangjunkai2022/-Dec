package com.baidu.tts.f;
/* compiled from: SampleRateEnum.java */
/* loaded from: classes8.dex */
public enum k {
    HZ8K(8000, "8k"),
    HZ16K(16000, "16k"),
    HZ24K(24000, "24k"),
    HZ48K(48000, "48k");
    
    public final int e;
    public final String f;

    k(int i, String str) {
        this.e = i;
        this.f = str;
    }

    public int a() {
        return this.e;
    }
}
