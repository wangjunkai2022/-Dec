package com.baidu.tts.d;

import com.baidu.tts.client.model.DownloadHandler;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: DownloaderClient.java */
/* loaded from: classes8.dex */
public class d {
    public com.baidu.tts.l.a c;
    public ConcurrentMap<String, DownloadHandler> b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    public c f11197a = c.a();

    private void c() {
        for (DownloadHandler downloadHandler : this.b.values()) {
            downloadHandler.stop();
        }
    }

    public void a() {
        this.f11197a.g();
    }

    public void b() {
        c();
        this.f11197a.e();
    }

    public void a(com.baidu.tts.l.a aVar) {
        this.c = aVar;
        this.f11197a.a(aVar);
    }

    public DownloadHandler a(b bVar) {
        DownloadHandler a2;
        if (bVar == null || !bVar.b() || (a2 = a(bVar.a())) == null) {
            return null;
        }
        a2.reset(bVar);
        return this.f11197a.a(a2);
    }

    public synchronized DownloadHandler a(String str) {
        DownloadHandler downloadHandler;
        try {
            downloadHandler = this.b.get(str);
            if (downloadHandler == null) {
                downloadHandler = new DownloadHandler(this.c);
                this.b.put(str, downloadHandler);
            }
        } catch (Exception unused) {
            return null;
        }
        return downloadHandler;
    }
}
