package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122;

import android.os.Handler;
import android.os.Looper;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.g;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import com.apk.Cgoto;
import java.util.Comparator;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: LogThreadCenter.java */
/* loaded from: classes8.dex */
public class d {
    public static final d g = new d();
    public static final bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a h = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a();
    public static final AtomicInteger i = new AtomicInteger(0);
    public static final long j = System.currentTimeMillis();
    public static long k = 0;

    /* renamed from: a  reason: collision with root package name */
    public bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c f11033a;
    public final Comparator<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> b = new a(this);
    public final PriorityBlockingQueue<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> c = new PriorityBlockingQueue<>(8, this.b);
    public volatile boolean d = false;
    public volatile boolean e = false;
    public Handler f;

    /* compiled from: LogThreadCenter.java */
    /* loaded from: classes8.dex */
    public class a implements Comparator<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> {
        public a(d dVar) {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar2) {
            long j;
            long j2;
            long j3;
            long j4;
            if (aVar.e() == aVar2.e()) {
                if (aVar.g() != null) {
                    j = aVar.g().c();
                    j2 = aVar.g().b();
                } else {
                    j = 0;
                    j2 = 0;
                }
                if (aVar2.g() != null) {
                    j4 = aVar2.g().c();
                    j3 = aVar2.g().b();
                } else {
                    j3 = 0;
                    j4 = 0;
                }
                if (j == 0 || j4 == 0) {
                    return 0;
                }
                long j5 = j - j4;
                if (Math.abs(j5) > 2147483647L) {
                    return 0;
                }
                if (j5 == 0) {
                    if (j2 == 0 || j3 == 0) {
                        return 0;
                    }
                    return (int) (j2 - j3);
                }
                return (int) j5;
            }
            return aVar.e() - aVar2.e();
        }
    }

    /* compiled from: LogThreadCenter.java */
    /* loaded from: classes8.dex */
    public class b extends g {
        public final /* synthetic */ int b;
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, int i, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g gVar) {
            super(str);
            this.b = i;
            this.c = gVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder m1016super = Cgoto.m1016super("==> monitor upload index2:");
            m1016super.append(this.b);
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a(m1016super.toString());
            d.this.f11033a.a(this.c.a(d.h.a(this.b)), true, this.b);
            d.h.h0();
        }
    }

    public PriorityBlockingQueue<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> b() {
        return this.c;
    }

    public synchronized void c() {
        try {
            if (this.f11033a == null || !this.f11033a.isAlive()) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b("restart Log");
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c cVar = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c(this.c);
                this.f11033a = cVar;
                cVar.start();
            }
        } finally {
        }
    }

    public void d() {
        c();
        a();
    }

    public void e() {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c cVar = this.f11033a;
        if (cVar == null || !cVar.isAlive()) {
            return;
        }
        Handler handler = this.f;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f11033a.a(false);
        this.f11033a.quitSafely();
        this.f11033a = null;
    }

    public void a(Handler handler) {
        this.f = handler;
    }

    public synchronized void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar, int i2) {
        c();
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b2 = j.l().b();
        if (this.f11033a != null) {
            a(b2);
            this.f11033a.a(aVar, aVar.e() == 4, -1L);
        }
    }

    private void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g gVar) {
        if (gVar.g()) {
            int incrementAndGet = i.incrementAndGet();
            if (incrementAndGet == 1) {
                k = System.currentTimeMillis();
            }
            if (h.j().incrementAndGet() == 100) {
                if (Looper.getMainLooper() == Looper.myLooper()) {
                    Executor a2 = gVar.a();
                    if (a2 == null) {
                        a2 = gVar.b();
                    }
                    if (a2 != null) {
                        a2.execute(new b("report", incrementAndGet, gVar));
                        return;
                    }
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("==> monitor upload index1:" + incrementAndGet);
                this.f11033a.a(gVar.a(h.a(incrementAndGet)), true, (long) incrementAndGet);
                h.h0();
            }
        }
    }

    public void a() {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(h.F(), 1);
        this.f11033a.a(2);
    }
}
