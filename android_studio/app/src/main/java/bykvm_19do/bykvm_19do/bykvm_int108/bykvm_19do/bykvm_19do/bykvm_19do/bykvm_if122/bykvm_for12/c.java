package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1.g;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: AdPriorityLogThread.java */
/* loaded from: classes8.dex */
public class c extends HandlerThread implements e, d, Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public volatile boolean f11030a;
    public final Object b;
    public bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.d c;
    public bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.c d;
    public PriorityBlockingQueue<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> e;
    public int f;
    public volatile long g;
    public volatile long h;
    public AtomicInteger i;
    public final AtomicInteger j;
    public Handler k;
    public List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> l;
    public AtomicInteger m;
    public AtomicInteger n;
    public int o;

    /* compiled from: AdPriorityLogThread.java */
    /* loaded from: classes8.dex */
    public class a implements bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.b {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f11031a;
        public final /* synthetic */ int b;
        public final /* synthetic */ long c;

        public a(boolean z, int i, long j) {
            this.f11031a = z;
            this.b = i;
            this.c = j;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.b
        public void a(List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> list) {
            try {
                c.this.j.decrementAndGet();
                if (list == null || list.size() == 0) {
                    return;
                }
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a aVar = list.get(i);
                    if (aVar != null) {
                        c.this.a(this.f11031a, aVar.b(), aVar.a(), this.b, this.c);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* compiled from: AdPriorityLogThread.java */
    /* loaded from: classes8.dex */
    public class b extends g {
        public final /* synthetic */ List b;
        public final /* synthetic */ boolean c;
        public final /* synthetic */ int d;
        public final /* synthetic */ long e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, List list, boolean z, int i, long j) {
            super(str);
            this.b = list;
            this.c = z;
            this.d = i;
            this.e = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b a2;
            try {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.O(), 1);
                if (((bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a) this.b.get(0)).b() == 0) {
                    a2 = j.m().a(this.b);
                    c.this.a(a2, this.b);
                    if (a2 != null) {
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(this.b, a2.c);
                    }
                } else {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        JSONArray jSONArray = new JSONArray();
                        for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar : this.b) {
                            jSONArray.put(aVar.d());
                        }
                        jSONObject.put("stats_list", jSONArray);
                    } catch (Exception e) {
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b("exception:" + e.getMessage());
                    }
                    a2 = j.m().a(jSONObject);
                }
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b bVar = a2;
                c.this.j.decrementAndGet();
                c.this.a(this.c, bVar, this.b, this.d, this.e);
            } catch (Exception e2) {
                StringBuilder m1016super = Cgoto.m1016super("log thread:");
                m1016super.append(e2.getMessage());
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b(m1016super.toString());
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.M(), 1);
                c.this.j.decrementAndGet();
            }
        }
    }

    public c(PriorityBlockingQueue<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> priorityBlockingQueue) {
        super("ad_log");
        this.f11030a = true;
        this.b = new Object();
        this.g = 0L;
        this.h = 0L;
        this.i = new AtomicInteger(0);
        this.j = new AtomicInteger(0);
        this.l = new ArrayList();
        new ArrayList();
        this.m = new AtomicInteger(0);
        this.n = new AtomicInteger(0);
        this.o = 10;
        this.e = priorityBlockingQueue;
        this.c = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.b();
    }

    private void c() {
        if (this.k.hasMessages(11)) {
            this.k.removeMessages(11);
        }
        if (this.l.size() != 0) {
            ArrayList arrayList = new ArrayList(this.l);
            this.l.clear();
            a((List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a>) arrayList, this.f, false);
            b(this.f);
        }
    }

    private void d() {
        if (this.e.size() >= 100) {
            for (int i = 0; i < 100; i++) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a poll = this.e.poll();
                if (poll instanceof bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.b) {
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("ignore tm");
                } else if (poll != null) {
                    a(poll);
                } else {
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("ignore take == null");
                }
            }
        }
    }

    private void e() {
        if (!isAlive()) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("th dead");
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.c();
        } else if (a()) {
        } else {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("monitor  mLogThread ");
            a(6);
        }
    }

    private void f() {
        List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> a2;
        int i;
        if (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.d && ((i = this.f) == 4 || i == 7 || i == 6 || i == 5 || i == 2)) {
            StringBuilder m1016super = Cgoto.m1016super("s b so cancel:");
            m1016super.append(this.f);
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b(m1016super.toString());
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.r(), 1);
            if (this.e.size() != 0) {
                return;
            }
            if (!this.k.hasMessages(2)) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.d = false;
                this.h = 0L;
                this.g = 0L;
                this.m.set(0);
                this.n.set(0);
            } else {
                a(false);
                return;
            }
        }
        boolean a3 = a(this.f, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.d);
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("needUpload: " + a3 + "  message: " + this.f);
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.q(), 1);
        if (!a3 || (a2 = this.c.a(this.f, -1)) == null) {
            return;
        }
        a(a2, this.f);
    }

    private void g() {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("sendServerBusyOrRoutineErrorRetryMessage");
        e();
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.K(), 1);
        a(1);
    }

    public void b() {
        while (a()) {
            try {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.J(), 1);
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a poll = this.e.poll(60000L, TimeUnit.MILLISECONDS);
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("-------flush db poll wait :------" + this.e.size());
                if (poll instanceof bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.b) {
                    this.i.set(0);
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("flush db-------thread message------" + this.e.size());
                    if (this.e.size() == 0) {
                        int j = ((bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.b) poll).j();
                        this.f = j;
                        if (j != 6) {
                            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.e0(), 1);
                            f();
                        }
                    } else if (((bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.b) poll).j() == 1) {
                        this.f = 1;
                        f();
                    } else if (((bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.b) poll).j() == 2) {
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("flush db before size:" + this.e.size());
                        d();
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("flush db dump queue after size :" + this.e.size());
                        this.f = 2;
                        f();
                    }
                } else if (poll == null) {
                    int incrementAndGet = this.i.incrementAndGet();
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.p(), 1);
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b2 = j.l().b();
                    if ((incrementAndGet >= 4 && this.j.get() == 0 && !bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.d && !bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.e) || (b2 != null && b2.d() == 0)) {
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.X(), 1);
                        a(false);
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.e();
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b("exit log thread");
                        return;
                    } else if (incrementAndGet < 4) {
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("------------bm ------------" + incrementAndGet);
                        this.f = 1;
                        f();
                    }
                } else {
                    a(poll);
                    f();
                }
            } catch (Throwable th) {
                th.printStackTrace();
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("AdThread run exception:" + th.getMessage());
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.M(), 1);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        int i = message.what;
        if (i == 1) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("upload opt  HANDLER_MESSAGE_INIT");
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.v(), 1);
            a(true);
            b();
        } else if (i == 2 || i == 3) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("-----------------  server busy handleMessage---------------- ");
            g();
        } else if (i == 11) {
            StringBuilder m1016super = Cgoto.m1016super("upload opt ad Handler 50mills 没有新消息 开始延迟上传: ads :");
            m1016super.append(this.l.size());
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a(m1016super.toString());
            ArrayList arrayList = new ArrayList(this.l);
            this.l.clear();
            a((List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a>) arrayList, this.f, false);
            b(this.f);
        }
        return true;
    }

    @Override // android.os.HandlerThread
    public void onLooperPrepared() {
        super.onLooperPrepared();
        Handler handler = new Handler(getLooper(), this);
        this.k = handler;
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.a(handler);
        this.k.sendEmptyMessage(1);
    }

    public void a(boolean z) {
        this.f11030a = z;
    }

    public boolean a() {
        return this.f11030a;
    }

    public boolean a(int i, boolean z) {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b2 = j.l().b();
        if (b2 != null && b2.a(j.l().d())) {
            return this.c.a(i, z);
        }
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b("AdThread NET IS NOT AVAILABLE!!!");
        return false;
    }

    private void c(int i) {
        if (!a()) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.P(), 1);
            if (this.k.hasMessages(1)) {
                return;
            }
            if (i == 1) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.f(), 1);
            } else if (i == 2) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.w(), 1);
            } else if (i == 3) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.L(), 1);
            }
            this.k.sendEmptyMessage(1);
            return;
        }
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.x(), 1);
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar, boolean z, long j) {
        if (aVar == null) {
            return;
        }
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("ignore result : " + z + ":" + this.f11030a + " adType: " + ((int) aVar.b()));
        if (z) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(aVar);
            a((List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a>) arrayList, this.f, true);
            return;
        }
        this.e.add(aVar);
        c(2);
    }

    public void a(int i) {
        boolean a2 = a(i, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.d);
        if (i == 6 || a2) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.b bVar = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.b();
            bVar.a(i);
            this.e.add(bVar);
            c(3);
        }
    }

    private void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar) {
        this.i.set(0);
        if (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.d) {
            this.f = 5;
        } else if (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.e) {
            this.f = 7;
        } else {
            this.f = 4;
        }
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.o(), 1);
        this.c.a(aVar, this.f);
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.a.b(aVar);
    }

    private void a(List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list, int i) {
        if (list.size() != 0) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(list, this.e.size());
            if (list.size() > 1) {
                c();
                a(list, i, false);
                b(i);
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar = list.get(0);
            if (aVar != null) {
                if (aVar.e() == 1) {
                    c();
                    a(list, i, false);
                    b(i);
                    return;
                } else if (aVar.b() == 0 && aVar.e() == 2) {
                    synchronized (this) {
                        this.l.addAll(list);
                        if (aVar.d() != null) {
                            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("log_thread add :" + aVar.d().optString("label") + " " + ((int) aVar.e()));
                        }
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b2 = j.l().b();
                        if (b2 != null && b2.k() != null) {
                            this.o = b2.k().s();
                        }
                        if (this.l.size() >= this.o) {
                            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("upload opt ad " + this.l.size());
                            if (this.k.hasMessages(11)) {
                                this.k.removeMessages(11);
                            }
                            ArrayList arrayList = new ArrayList(this.l);
                            this.l.clear();
                            a((List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a>) arrayList, i, false);
                            b(i);
                        } else if (this.e.size() == 0) {
                            a(false);
                            if (this.k.hasMessages(11)) {
                                this.k.removeMessages(11);
                            }
                            if (this.k.hasMessages(1)) {
                                this.k.removeMessages(1);
                            }
                            long j = 200;
                            if (b2 != null && b2.k() != null) {
                                j = b2.k().n();
                            }
                            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("testLog opt ad 1  " + this.l.size() + " " + j + " " + this.k.hasMessages(11));
                            this.k.sendEmptyMessageDelayed(11, j);
                        } else {
                            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("upload opt ad 什么都不做 ：" + this.e.size() + "  " + this.f11030a);
                        }
                    }
                    return;
                } else if (aVar.b() == 1) {
                    c();
                    a(list, i, false);
                    b(i);
                    return;
                } else if (aVar.b() == 3) {
                    c();
                    a(list, i, false);
                    b(i);
                    return;
                } else if (aVar.b() == 2) {
                    c();
                    a(list, i, false);
                    b(i);
                    return;
                } else {
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("upload adLogEvent adtype error");
                    return;
                }
            }
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("upload adLogEvent is null");
            return;
        }
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("upload list is empty");
    }

    private void b(int i) {
        long nanoTime;
        StringBuilder sb;
        boolean z;
        if (!this.k.hasMessages(11)) {
            c(1);
        }
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("afterUpload message:" + i);
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.h(), 1);
        if (i == 2) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.e(), 1);
            synchronized (this.b) {
                try {
                    try {
                        long nanoTime2 = System.nanoTime();
                        this.b.wait(5000L);
                        nanoTime = System.nanoTime() - nanoTime2;
                        sb = new StringBuilder();
                        sb.append("afterUpload flush db delta:");
                        sb.append(nanoTime);
                        sb.append(" start:");
                        sb.append(nanoTime2);
                        sb.append(" ");
                    } catch (InterruptedException e) {
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b("AdThread exception:" + e.getMessage());
                        e.printStackTrace();
                    }
                    if (!bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.d && !bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.e) {
                        z = false;
                        sb.append(z);
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a(sb.toString());
                        if (nanoTime < 5000000000L && 5000000000L - nanoTime >= 50000000) {
                            if (!bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.d && !bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.e) {
                                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("afterUpload flush db 等待完成" + nanoTime + "  5000000000");
                                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.g(), 1);
                                a(2);
                                return;
                            }
                            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.S(), 1);
                            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("afterUpload flush db 等待遇到繁忙了");
                            return;
                        }
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("afterUpload flush db 等待超时了");
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.f0(), 1);
                    }
                    z = true;
                    sb.append(z);
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a(sb.toString());
                    if (nanoTime < 5000000000L) {
                        if (!bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.g.d) {
                            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("afterUpload flush db 等待完成" + nanoTime + "  5000000000");
                            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.g(), 1);
                            a(2);
                            return;
                        }
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.S(), 1);
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("afterUpload flush db 等待遇到繁忙了");
                        return;
                    }
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("afterUpload flush db 等待超时了");
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.f0(), 1);
                } finally {
                }
            }
        }
    }

    private void a(List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list, int i, boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.c i2 = j.l().i();
        this.d = i2;
        if (i2 != null) {
            this.j.incrementAndGet();
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.O(), 1);
            try {
                this.d.a(list, new a(z, i, currentTimeMillis));
                return;
            } catch (Exception e) {
                StringBuilder m1016super = Cgoto.m1016super("log thread:");
                m1016super.append(e.getMessage());
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b(m1016super.toString());
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.M(), 1);
                this.j.decrementAndGet();
                return;
            }
        }
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.g b2 = j.l().b();
        if (b2 != null) {
            this.j.incrementAndGet();
            Executor b3 = b2.b();
            if (list.get(0).e() == 1) {
                b3 = b2.a();
            }
            Executor executor = b3;
            if (executor == null) {
                return;
            }
            executor.execute(new b("ad_log_upload", list, z, i, currentTimeMillis));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b bVar, List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list) {
        if (bVar == null || !bVar.f11029a) {
            return;
        }
        List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.e> b2 = bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.b.b();
        if (list == null || b2 == null || b2.size() == 0) {
            return;
        }
        for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar : list) {
            if (aVar.e() == 1) {
                String b3 = bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.a.b(aVar.d());
                String d = bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.a.d(aVar.d());
                for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.e eVar : b2) {
                    if (eVar != null) {
                        eVar.a(b3, d);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b bVar, List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list, int i, long j) {
        if (z || bVar == null) {
            return;
        }
        int i2 = bVar.d ? -1 : bVar.b;
        if (list != null) {
            StringBuilder m1020throw = Cgoto.m1020throw("AdThread code is ", i2, " sz:");
            m1020throw.append(list.size());
            m1020throw.append("  count:");
            m1020throw.append(this.j.get());
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a(m1020throw.toString());
        }
        a(i2, list, i, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0118 A[Catch: all -> 0x014c, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x0007, B:9:0x0019, B:11:0x001f, B:62:0x0118, B:63:0x0122, B:22:0x0038, B:24:0x004d, B:25:0x0052, B:27:0x0054, B:29:0x0061, B:30:0x0066, B:32:0x0068, B:34:0x007b, B:35:0x0080, B:36:0x0085, B:38:0x008b, B:40:0x0091, B:42:0x00a1, B:43:0x00a6, B:45:0x00ae, B:46:0x00b3, B:47:0x00d5, B:49:0x00e5, B:50:0x00ea, B:52:0x00ec, B:54:0x00f9, B:55:0x00fe, B:57:0x0100, B:59:0x010e, B:60:0x0113), top: B:69:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(int r6, java.util.List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> r7, int r8, long r9) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c.a(int, java.util.List, int, long):void");
    }

    public void a(int i, long j) {
        Message obtain = Message.obtain();
        obtain.what = i;
        if (this.k == null) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b("mHandler == null");
        }
        if (i == 2) {
            int incrementAndGet = this.m.incrementAndGet();
            long j2 = (((incrementAndGet - 1) % 4) + 1) * j;
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("sendMonitorMessage:" + i + "  busy:" + incrementAndGet + "  l:" + j2);
            this.k.sendMessageDelayed(obtain, j2);
        } else if (i == 3) {
            int incrementAndGet2 = this.n.incrementAndGet();
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("sendMonitorMessage:" + i + "  error:" + incrementAndGet2);
            this.k.sendMessageDelayed(obtain, ((long) (((incrementAndGet2 + (-1)) % 4) + 1)) * j);
        } else {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b("sendMonitorMessage error state");
        }
    }
}
