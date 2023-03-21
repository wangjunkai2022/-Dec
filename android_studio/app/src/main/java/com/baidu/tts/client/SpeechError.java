package com.baidu.tts.client;

import com.apk.Cgoto;

/* loaded from: classes8.dex */
public class SpeechError {
    public int code;
    public String description;

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("(");
        m1016super.append(this.code);
        m1016super.append(")");
        m1016super.append(this.description);
        return m1016super.toString();
    }
}
