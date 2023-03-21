package com.baidu.tts.d.b;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.DownloadHandler;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.f.g;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.StringTool;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: ModelFlyweight.java */
/* loaded from: classes8.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public String f11193a;
    public String b;
    public String c;
    public long d = 0;
    public a e = a.a();
    public CopyOnWriteArraySet<DownloadHandler> f = new CopyOnWriteArraySet<>();

    public d(String str) {
        this.f11193a = str;
    }

    private void j() {
        this.e.a(this.b, this.f11193a);
        this.e.a(this.c, this.f11193a);
    }

    public void a(DownloadHandler downloadHandler) {
        CopyOnWriteArraySet<DownloadHandler> copyOnWriteArraySet = this.f;
        if (copyOnWriteArraySet != null) {
            copyOnWriteArraySet.add(downloadHandler);
        }
    }

    public void b(DownloadHandler downloadHandler) {
        boolean isSetEmpty = DataTool.isSetEmpty(this.f);
        LoggerProxy.d("ModelFlyweight", "unregisterListener 1isEmpty=" + isSetEmpty);
        if (isSetEmpty) {
            return;
        }
        this.f.remove(downloadHandler);
        boolean isSetEmpty2 = DataTool.isSetEmpty(this.f);
        LoggerProxy.d("ModelFlyweight", "unregisterListener 2isEmpty=" + isSetEmpty2);
        if (isSetEmpty2) {
            j();
            return;
        }
        Iterator<DownloadHandler> it = this.f.iterator();
        while (it.hasNext()) {
            LoggerProxy.d("ModelFlyweight", "unregisterListener item=" + it.next());
        }
    }

    public long c() {
        d();
        return this.d;
    }

    public void d() {
        if (this.d == 0) {
            e();
        }
    }

    public void e() {
        e a2 = e.a();
        String b = a2.b(this.b).b();
        String b2 = a2.b(this.c).b();
        Long valueOf = Long.valueOf(Long.parseLong(b));
        Long valueOf2 = Long.valueOf(Long.parseLong(b2));
        this.d = valueOf2.longValue() + valueOf.longValue();
    }

    public Set<String> f() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.b);
        hashSet.add(this.c);
        return hashSet;
    }

    public String g() {
        return this.f11193a;
    }

    public long h() {
        return this.e.d(this.c) + this.e.d(this.b);
    }

    public boolean i() {
        return this.e.e(this.b) == 7 && this.e.e(this.c) == 7;
    }

    public void a() {
        this.f.clear();
        j();
    }

    public void c(DownloadHandler downloadHandler) {
        a(downloadHandler);
        downloadHandler.updateStart(this);
    }

    public boolean a(com.baidu.tts.database.a aVar) {
        Map<String, String> e = aVar.e(this.f11193a);
        if (e != null && !e.isEmpty()) {
            this.b = DataTool.getMapValue(e, g.TEXT_DATA_ID.b());
            this.c = DataTool.getMapValue(e, g.SPEECH_DATA_ID.b());
            boolean isEmpty = StringTool.isEmpty(this.b);
            boolean isEmpty2 = StringTool.isEmpty(this.c);
            if (!isEmpty && !isEmpty2) {
                return true;
            }
            aVar.a(this.f11193a);
        }
        return false;
    }

    public Set<String> b() {
        HashSet hashSet = new HashSet();
        e a2 = e.a();
        c b = a2.b(this.b);
        c b2 = a2.b(this.c);
        String a3 = b.a();
        String a4 = b2.a();
        hashSet.add(a3);
        hashSet.add(a4);
        return hashSet;
    }

    public void a(ModelBags modelBags, com.baidu.tts.database.a aVar) {
        aVar.a(modelBags);
        a(aVar);
    }

    public void a(DownloadHandler downloadHandler, TtsError ttsError) {
        downloadHandler.updateFinish(this, ttsError);
        b(downloadHandler);
    }

    public void a(b bVar) {
        CopyOnWriteArraySet<DownloadHandler> copyOnWriteArraySet = this.f;
        if (copyOnWriteArraySet != null) {
            Iterator<DownloadHandler> it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                it.next().updateProgress(this);
            }
        }
    }

    public void b(b bVar) {
        CopyOnWriteArraySet<DownloadHandler> copyOnWriteArraySet;
        boolean i = i();
        LoggerProxy.d("ModelFlyweight", "onFileDownloadSuccess isAllFileDownloadSuccess=" + i);
        if (!i || (copyOnWriteArraySet = this.f) == null) {
            return;
        }
        Iterator<DownloadHandler> it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            a(it.next(), (TtsError) null);
        }
    }

    public void a(b bVar, TtsError ttsError) {
        LoggerProxy.d("ModelFlyweight", "onFileDownloadFailure");
        CopyOnWriteArraySet<DownloadHandler> copyOnWriteArraySet = this.f;
        if (copyOnWriteArraySet != null) {
            Iterator<DownloadHandler> it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                a(it.next(), ttsError);
            }
        }
    }
}
