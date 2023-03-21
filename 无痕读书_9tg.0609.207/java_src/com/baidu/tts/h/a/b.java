package com.baidu.tts.h.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.f.n;
/* compiled from: TtsErrorFlyweight.java */
/* loaded from: classes8.dex */
public class b extends a {
    public b(n nVar) {
        super(nVar);
    }

    public int a(TtsError ttsError) {
        return this.f11226a.b();
    }

    public String b(TtsError ttsError) {
        int code = ttsError.getCode();
        String message = ttsError.getMessage();
        Throwable throwable = ttsError.getThrowable();
        String str = "(" + this.f11226a.b() + ")" + this.f11226a.c();
        if (message != null) {
            str = str + "[(" + code + ")" + message + "]";
        } else if (code != 0) {
            str = str + "[(" + code + ")]";
        }
        if (throwable != null) {
            return str + "[(cause)" + throwable.toString() + "]";
        }
        return str;
    }
}
