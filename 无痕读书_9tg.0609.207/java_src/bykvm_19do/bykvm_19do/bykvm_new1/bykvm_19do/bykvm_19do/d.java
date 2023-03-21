package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_19do;

import java.io.File;
/* compiled from: ANRThread.java */
/* loaded from: classes8.dex */
public class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final c f11046a;
    public volatile boolean b = false;
    public Runnable c = new a();

    /* compiled from: ANRThread.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.b = false;
        }
    }

    public d(c cVar) {
        this.f11046a = cVar;
        a();
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.g.a(2L);
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.f.e().a(4500L, this.c);
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.f.e().a(5000L, this, 40, 5000L);
    }

    private boolean b() {
        File file = new File("/data/anr/traces.txt");
        return file.exists() && file.canRead();
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        int i;
        if (this.b) {
            return;
        }
        if (b()) {
            i = 200;
            str = "/data/anr/traces.txt";
        } else {
            str = null;
            i = 100;
        }
        if (this.f11046a.a(i, str, 25)) {
            this.b = true;
        }
    }

    private long a() {
        File file = new File("/data/anr/traces.txt");
        if (file.exists()) {
            return file.lastModified();
        }
        return 0L;
    }
}
