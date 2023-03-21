package com.baidu.tts.d.b;

import com.baidu.tts.client.model.DownloadHandler;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: TracePool.java */
/* loaded from: classes8.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static volatile e f11194a;
    public ConcurrentHashMap<String, d> b = new ConcurrentHashMap<>();
    public ConcurrentHashMap<String, c> c = new ConcurrentHashMap<>();
    public ConcurrentHashMap<String, b> d = new ConcurrentHashMap<>();

    public static e a() {
        if (f11194a == null) {
            synchronized (e.class) {
                if (f11194a == null) {
                    f11194a = new e();
                }
            }
        }
        return f11194a;
    }

    public c b(String str) {
        try {
            c cVar = new c(str);
            c putIfAbsent = this.c.putIfAbsent(str, cVar);
            return putIfAbsent == null ? cVar : putIfAbsent;
        } catch (Exception unused) {
            return null;
        }
    }

    public b c(String str) {
        try {
            b bVar = new b(str);
            b putIfAbsent = this.d.putIfAbsent(str, bVar);
            return putIfAbsent == null ? bVar : putIfAbsent;
        } catch (Exception unused) {
            return null;
        }
    }

    public b d(String str) {
        c b = b(str);
        if (b != null) {
            return c(b.a());
        }
        return null;
    }

    public long e(String str) {
        return d(str).a();
    }

    public int f(String str) {
        return d(str).d();
    }

    public void b() {
        for (d dVar : this.b.values()) {
            dVar.a();
        }
    }

    public d a(String str) {
        try {
            d dVar = new d(str);
            d putIfAbsent = this.b.putIfAbsent(str, dVar);
            return putIfAbsent == null ? dVar : putIfAbsent;
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(DownloadHandler downloadHandler) {
        a(downloadHandler.getModelId()).b(downloadHandler);
    }

    public void a(String str, String str2) {
        b d = d(str);
        if (d != null) {
            d.b(str2);
        }
    }
}
