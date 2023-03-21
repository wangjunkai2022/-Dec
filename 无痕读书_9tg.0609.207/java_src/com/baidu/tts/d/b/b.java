package com.baidu.tts.d.b;

import com.apk.Cgoto;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.g;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.MD5;
import com.baidu.tts.tools.StringTool;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: FsFileInfoFlyweight.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public String f11191a;
    public long b;
    public String c;
    public String f;
    public com.baidu.tts.d.a.e g;
    public volatile int d = 0;
    public volatile int e = 9;
    public CopyOnWriteArraySet<String> h = new CopyOnWriteArraySet<>();

    public b(String str) {
        this.f11191a = str;
    }

    private void j() {
        if (this.g != null) {
            LoggerProxy.d("FsFileInfoFlyweight", "unregisterObserver stop");
            this.g.a();
            this.g = null;
            if (this.d == 4 || this.d == 5) {
                this.d = 8;
                this.e = 8;
                a.a().b().a(this.f11191a, this.e);
            }
        }
    }

    public void a(String str) {
        CopyOnWriteArraySet<String> copyOnWriteArraySet = this.h;
        if (copyOnWriteArraySet != null) {
            copyOnWriteArraySet.add(str);
        }
    }

    public void b(String str) {
        boolean isSetEmpty = DataTool.isSetEmpty(this.h);
        LoggerProxy.d("FsFileInfoFlyweight", "unregisterObserver 1isEmpty=" + isSetEmpty);
        if (isSetEmpty) {
            return;
        }
        this.h.remove(str);
        boolean isSetEmpty2 = DataTool.isSetEmpty(this.h);
        LoggerProxy.d("FsFileInfoFlyweight", "unregisterObserver 2isEmpty=" + isSetEmpty2);
        if (isSetEmpty2) {
            j();
        }
    }

    public String c() {
        return this.f;
    }

    public int d() {
        return this.d;
    }

    public boolean e() {
        if (this.d != 7 && this.d != 4 && this.d != 5) {
            if (this.b >= Long.parseLong(e.a().b(this.f).b())) {
                return true;
            }
        }
        return false;
    }

    public boolean f() {
        return new File(this.f11191a).delete();
    }

    public void g() {
        StringBuilder m1016super = Cgoto.m1016super("queueForDownload fileId=");
        m1016super.append(this.f);
        m1016super.append("--filestate=");
        m1016super.append(this.d);
        LoggerProxy.d("FsFileInfoFlyweight", m1016super.toString());
        this.d = 4;
    }

    public void h() {
        this.d = 5;
        this.e = 6;
        a.a().b().a(this.f11191a, this.e);
    }

    public void i() {
        LoggerProxy.d("FsFileInfoFlyweight", "onDownloadSuccess");
        this.d = 7;
        this.e = 7;
        a a2 = a.a();
        a2.b().a(this.f11191a, this.e);
        CopyOnWriteArraySet<String> copyOnWriteArraySet = this.h;
        if (copyOnWriteArraySet != null) {
            Iterator<String> it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                String next = it.next();
                a2.b(next).b(this);
                this.h.remove(next);
            }
        }
    }

    public void c(String str) {
        this.f = str;
    }

    public long a() {
        return this.b;
    }

    public void a(com.baidu.tts.d.a.e eVar) {
        this.g = eVar;
    }

    public boolean a(com.baidu.tts.database.a aVar) {
        c b = e.a().b(this.f);
        if (this.d == 0) {
            a(b);
            b(aVar);
        } else if (this.d == 8 || this.d == 7) {
            a(b);
        }
        if (this.d == 7 && this.e != 7) {
            this.e = 7;
            aVar.a(this.f11191a, this.e);
        }
        StringBuilder m1016super = Cgoto.m1016super("fileId=");
        m1016super.append(this.f);
        m1016super.append("--filestate=");
        m1016super.append(this.d);
        m1016super.append("--dbstate=");
        m1016super.append(this.e);
        LoggerProxy.d("FsFileInfoFlyweight", m1016super.toString());
        return (this.d == 4 || this.d == 5 || this.d == 7) ? false : true;
    }

    public String b() {
        return this.f11191a;
    }

    public int b(com.baidu.tts.database.a aVar) {
        String mapValue = DataTool.getMapValue(aVar.c(this.f11191a), g.STATE.b());
        if (StringTool.isEmpty(mapValue)) {
            this.e = 9;
        } else {
            this.e = Integer.parseInt(mapValue);
        }
        return this.e;
    }

    public int a(c cVar) {
        File file = new File(this.f11191a);
        if (file.exists()) {
            this.b = file.length();
            if (this.b == Long.parseLong(cVar.b())) {
                this.c = MD5.getInstance().getBigFileMd5(file);
                if (cVar.c().equalsIgnoreCase(this.c)) {
                    this.d = 7;
                } else {
                    this.d = 3;
                }
            } else {
                this.d = 2;
            }
        } else {
            this.d = 1;
        }
        return this.d;
    }

    public void a(long j, long j2) {
        a a2 = a.a();
        this.b = j;
        CopyOnWriteArraySet<String> copyOnWriteArraySet = this.h;
        if (copyOnWriteArraySet != null) {
            Iterator<String> it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                a2.b(it.next()).a(this);
            }
        }
    }

    public void a(TtsError ttsError) {
        LoggerProxy.d("FsFileInfoFlyweight", "onDownloadFailure");
        this.d = 8;
        this.e = 8;
        a a2 = a.a();
        a2.b().a(this.f11191a, this.e);
        CopyOnWriteArraySet<String> copyOnWriteArraySet = this.h;
        if (copyOnWriteArraySet != null) {
            Iterator<String> it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                String next = it.next();
                a2.b(next).a(this, ttsError);
                this.h.remove(next);
            }
        }
    }
}
