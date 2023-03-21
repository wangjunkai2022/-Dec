package com.baidu.tts.d.b;

import com.baidu.tts.client.model.DownloadHandler;
/* compiled from: DownloadTrace.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile a f11190a;
    public e b = e.a();
    public com.baidu.tts.database.a c;

    public static a a() {
        if (f11190a == null) {
            synchronized (a.class) {
                if (f11190a == null) {
                    f11190a = new a();
                }
            }
        }
        return f11190a;
    }

    public com.baidu.tts.database.a b() {
        return this.c;
    }

    public c c(String str) {
        return this.b.b(str);
    }

    public long d(String str) {
        return this.b.e(str);
    }

    public int e(String str) {
        return this.b.f(str);
    }

    public d b(String str) {
        return this.b.a(str);
    }

    public void c() {
        this.b.b();
    }

    public void a(com.baidu.tts.database.a aVar) {
        this.c = aVar;
    }

    public b a(String str) {
        return this.b.c(str);
    }

    public void a(DownloadHandler downloadHandler) {
        this.b.a(downloadHandler);
    }

    public void a(String str, String str2) {
        this.b.a(str, str2);
    }
}
