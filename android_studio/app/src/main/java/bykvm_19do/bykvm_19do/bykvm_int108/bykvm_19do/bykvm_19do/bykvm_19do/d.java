package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;

/* compiled from: EventMultiUtils.java */
/* loaded from: classes8.dex */
public class d implements f {

    /* renamed from: a  reason: collision with root package name */
    public static final d f11039a = new d();

    /* compiled from: EventMultiUtils.java */
    /* loaded from: classes8.dex */
    public class a extends bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.g {
        public a(d dVar, String str) {
            super(str);
        }

        @Override // java.lang.Runnable
        public void run() {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("TTExecutor start");
            if (j.l().b().e() == 0) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a.c();
            } else if (j.l().b().e() == 1) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b.b();
            }
        }
    }

    /* compiled from: EventMultiUtils.java */
    /* loaded from: classes8.dex */
    public class b extends bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.g {
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(d dVar, String str, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar) {
            super(str);
            this.b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("sub thread dispatch");
            if (j.l().b().e() == 0) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a.a(this.b);
            } else if (j.l().b().e() == 1) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b.a(this.b);
            }
        }
    }

    private void b(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.a aVar, Context context) {
        c.a(context, "context == null");
        c.a(aVar, "AdLogConfig == null");
        c.a(aVar.a(), "AdLogDepend ==null");
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.a aVar, Context context) {
        b(aVar, context);
        j.l().a(context);
        j.l().a(aVar.g());
        j.l().b(aVar.d());
        j.l().c(aVar.e());
        j.l().a(aVar.b());
        j.l().d(aVar.f());
        j.l().a(aVar.c() == null ? bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.e.b : aVar.c());
        j.l().a(aVar.h());
        j.l().a(aVar.a());
    }

    public void b() {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("EventMultiUtils start");
        if (j.l().j()) {
            if (k.b(j.l().d())) {
                j.l().k();
                return;
            } else {
                j.l().b().a().execute(new a(this, "start"));
                return;
            }
        }
        j.l().k();
    }

    private void b(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar) {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("dispatchEvent 1");
        if (aVar == null) {
            return;
        }
        if (j.l().j()) {
            boolean b2 = k.b(j.l().d());
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("dispatchEvent 2 mainProcess:" + b2);
            if (b2) {
                j.l().a(aVar);
                return;
            } else {
                j.l().b().a().execute(new b(this, "dispatchEvent", aVar));
                return;
            }
        }
        j.l().a(aVar);
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar) {
        b(aVar);
    }

    public void a() {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("flushMemoryAndDB");
        j.l().a();
    }
}
