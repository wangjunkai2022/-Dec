package com.baidu.tts.aop.tts;

import com.baidu.tts.f.n;
import com.baidu.tts.h.a.b;

/* loaded from: classes8.dex */
public class TtsError {

    /* renamed from: a  reason: collision with root package name */
    public Throwable f11118a;
    public int b;
    public String c;
    public b d;

    public int getCode() {
        return this.b;
    }

    public int getDetailCode() {
        b bVar = this.d;
        return bVar != null ? bVar.a(this) : this.b;
    }

    public String getDetailMessage() {
        b bVar = this.d;
        if (bVar != null) {
            return bVar.b(this);
        }
        String str = this.c;
        return str != null ? str : "TtsErrorFlyweight is null";
    }

    public n getErrorEnum() {
        b bVar = this.d;
        if (bVar == null) {
            return null;
        }
        return bVar.a();
    }

    public String getMessage() {
        return this.c;
    }

    public Throwable getThrowable() {
        return this.f11118a;
    }

    public b getTtsErrorFlyweight() {
        return this.d;
    }

    public void setCode(int i) {
        this.b = i;
    }

    public void setMessage(String str) {
        this.c = str;
    }

    public void setThrowable(Throwable th) {
        this.f11118a = th;
    }

    public void setTtsErrorFlyweight(b bVar) {
        this.d = bVar;
    }
}
