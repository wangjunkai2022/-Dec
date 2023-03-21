package com.baidu.tts.h.b;

import android.content.Context;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.f.g;
import java.lang.ref.WeakReference;
import java.util.Hashtable;
/* compiled from: PersistentPool.java */
/* loaded from: classes8.dex */
public class b implements com.baidu.tts.j.b {

    /* renamed from: a  reason: collision with root package name */
    public static volatile b f11229a;
    public Hashtable<WeakReference<Context>, a> b = new Hashtable<>();
    public WeakReference<Context> c;
    public Hashtable<String, Object> d;

    public b() {
        Hashtable<String, Object> hashtable = new Hashtable<>();
        this.d = hashtable;
        hashtable.put(g.CTP.a(), "10");
        this.d.put(g.VERSION.a(), SpeechSynthesizer.VersionName);
    }

    public static b a() {
        if (f11229a == null) {
            synchronized (b.class) {
                if (f11229a == null) {
                    f11229a = new b();
                }
            }
        }
        return f11229a;
    }

    @Override // com.baidu.tts.j.b
    public TtsError b() {
        return null;
    }

    @Override // com.baidu.tts.j.b
    public void c() {
    }

    @Override // com.baidu.tts.j.b
    public void d() {
    }

    @Override // com.baidu.tts.j.b
    public void e() {
    }

    @Override // com.baidu.tts.j.b
    public void f() {
        Hashtable<WeakReference<Context>, a> hashtable = this.b;
        if (hashtable != null) {
            hashtable.clear();
        }
        this.c = null;
    }

    public a g() {
        return a(this.c);
    }

    public Context h() {
        return this.c.get();
    }

    public String i() {
        try {
            a g = g();
            if (g == null) {
                return null;
            }
            return g.a();
        } catch (Exception unused) {
            return null;
        }
    }

    public String j() {
        return a(g.VERSION.a());
    }

    public a a(WeakReference<Context> weakReference) {
        if (weakReference == null) {
            return null;
        }
        a aVar = this.b.get(weakReference);
        if (aVar == null) {
            a aVar2 = new a(weakReference);
            this.b.put(weakReference, aVar2);
            return aVar2;
        }
        return aVar;
    }

    public void a(Context context) {
        this.c = new WeakReference<>(context);
    }

    public String a(String str) {
        try {
            return (String) this.d.get(str);
        } catch (Exception unused) {
            return null;
        }
    }
}
