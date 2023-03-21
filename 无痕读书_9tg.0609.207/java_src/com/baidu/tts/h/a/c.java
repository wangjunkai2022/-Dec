package com.baidu.tts.h.a;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.f.n;
import java.util.Hashtable;
/* compiled from: TtsErrorPool.java */
/* loaded from: classes8.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static volatile c f11227a;
    public Hashtable<n, b> b = new Hashtable<>();

    public static c a() {
        if (f11227a == null) {
            synchronized (c.class) {
                if (f11227a == null) {
                    f11227a = new c();
                }
            }
        }
        return f11227a;
    }

    public TtsError b(n nVar) {
        b a2 = a(nVar);
        TtsError ttsError = new TtsError();
        ttsError.setTtsErrorFlyweight(a2);
        return ttsError;
    }

    public b a(n nVar) {
        b bVar = this.b.get(nVar);
        if (bVar == null) {
            b bVar2 = new b(nVar);
            this.b.put(nVar, bVar2);
            return bVar2;
        }
        return bVar;
    }

    public TtsError a(n nVar, Throwable th) {
        TtsError b = b(nVar);
        b.setThrowable(th);
        return b;
    }

    public TtsError a(n nVar, int i) {
        return a(nVar, i, null);
    }

    public TtsError a(n nVar, String str) {
        return a(nVar, 0, str);
    }

    public TtsError a(n nVar, int i, String str) {
        return a(nVar, i, str, null);
    }

    public TtsError a(n nVar, int i, String str, Throwable th) {
        TtsError b = b(nVar);
        b.setCode(i);
        b.setMessage(str);
        b.setThrowable(th);
        return b;
    }
}
