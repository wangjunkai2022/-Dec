package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1;

import android.os.SystemClock;
import androidx.appcompat.widget.ActivityChooserView;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h;
import com.apk.Cgoto;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Http2Connection.java */
/* loaded from: classes8.dex */
public final class g implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f10743a;
    public final i b;
    public final String d;
    public int e;
    public int f;
    public boolean g;
    public final ExecutorService h;
    public Map<Integer, l> i;
    public final m j;
    public long l;
    public final Socket p;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.j q;
    public final j r;
    public static final /* synthetic */ boolean u = !g.class.desiredAssertionStatus();
    public static final ExecutorService t = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a("OkHttp Http2Connection", true));
    public final Map<Integer, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i> c = new LinkedHashMap();
    public long k = 0;
    public n m = new n();
    public final n n = new n();
    public boolean o = false;
    public final Set<Integer> s = new LinkedHashSet();

    /* compiled from: Http2Connection.java */
    /* loaded from: classes8.dex */
    public class a extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
        public final /* synthetic */ int b;
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Object[] objArr, int i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) {
            super(str, objArr);
            this.b = i;
            this.c = bVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
        public void b() {
            try {
                g.this.b(this.b, this.c);
            } catch (IOException unused) {
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes8.dex */
    public class b extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
        public final /* synthetic */ int b;
        public final /* synthetic */ long c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, Object[] objArr, int i, long j) {
            super(str, objArr);
            this.b = i;
            this.c = j;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
        public void b() {
            try {
                g.this.q.a(this.b, this.c);
            } catch (IOException unused) {
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes8.dex */
    public class c extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
        public final /* synthetic */ boolean b;
        public final /* synthetic */ int c;
        public final /* synthetic */ int d;
        public final /* synthetic */ l e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, Object[] objArr, boolean z, int i, int i2, l lVar) {
            super(str, objArr);
            this.b = z;
            this.c = i;
            this.d = i2;
            this.e = lVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
        public void b() {
            try {
                g.this.a(this.b, this.c, this.d, this.e);
            } catch (IOException unused) {
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes8.dex */
    public class d extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
        public final /* synthetic */ int b;
        public final /* synthetic */ List c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, Object[] objArr, int i, List list) {
            super(str, objArr);
            this.b = i;
            this.c = list;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
        public void b() {
            if (g.this.j.a(this.b, this.c)) {
                try {
                    g.this.q.a(this.b, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.CANCEL);
                    synchronized (g.this) {
                        g.this.s.remove(Integer.valueOf(this.b));
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes8.dex */
    public class e extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
        public final /* synthetic */ int b;
        public final /* synthetic */ List c;
        public final /* synthetic */ boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, Object[] objArr, int i, List list, boolean z) {
            super(str, objArr);
            this.b = i;
            this.c = list;
            this.d = z;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
        public void b() {
            boolean a2 = g.this.j.a(this.b, this.c, this.d);
            if (a2) {
                try {
                    g.this.q.a(this.b, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (a2 || this.d) {
                synchronized (g.this) {
                    g.this.s.remove(Integer.valueOf(this.b));
                }
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes8.dex */
    public class f extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
        public final /* synthetic */ int b;
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c c;
        public final /* synthetic */ int d;
        public final /* synthetic */ boolean e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, Object[] objArr, int i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, int i2, boolean z) {
            super(str, objArr);
            this.b = i;
            this.c = cVar;
            this.d = i2;
            this.e = z;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
        public void b() {
            try {
                boolean a2 = g.this.j.a(this.b, this.c, this.d, this.e);
                if (a2) {
                    g.this.q.a(this.b, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.CANCEL);
                }
                if (a2 || this.e) {
                    synchronized (g.this) {
                        g.this.s.remove(Integer.valueOf(this.b));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g$g  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0027g extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
        public final /* synthetic */ int b;
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0027g(String str, Object[] objArr, int i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) {
            super(str, objArr);
            this.b = i;
            this.c = bVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
        public void b() {
            g.this.j.a(this.b, this.c);
            synchronized (g.this) {
                g.this.s.remove(Integer.valueOf(this.b));
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes8.dex */
    public static abstract class i {

        /* renamed from: a  reason: collision with root package name */
        public static final i f10745a = new a();

        /* compiled from: Http2Connection.java */
        /* loaded from: classes8.dex */
        public static class a extends i {
            @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g.i
            public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i iVar) throws IOException {
                iVar.a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.REFUSED_STREAM);
            }
        }

        public void a(g gVar) {
        }

        public abstract void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i iVar) throws IOException;
    }

    public g(h hVar) {
        this.j = hVar.f;
        boolean z = hVar.g;
        this.f10743a = z;
        this.b = hVar.e;
        int i2 = z ? 1 : 2;
        this.f = i2;
        if (hVar.g) {
            this.f = i2 + 2;
        }
        if (hVar.g) {
            this.m.a(7, 16777216);
        }
        this.d = hVar.b;
        this.h = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a("OkHttp %s Push Observer", this.d), true));
        this.n.a(7, 65535);
        this.n.a(5, 16384);
        this.l = this.n.c();
        this.p = hVar.f10744a;
        this.q = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.j(hVar.d, this.f10743a);
        this.r = new j(new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h(hVar.c, this.f10743a));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037 A[Catch: all -> 0x0069, TryCatch #1 {, blocks: (B:4:0x0005, B:21:0x0043, B:25:0x0052, B:22:0x0049, B:24:0x004d, B:29:0x005b, B:30:0x0062, B:5:0x0006, B:7:0x000a, B:9:0x001f, B:11:0x0027, B:16:0x0031, B:18:0x0037, B:19:0x0040, B:31:0x0063, B:32:0x0068), top: B:39:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i b(int r11, java.util.List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> r12, boolean r13) throws java.io.IOException {
        /*
            r10 = this;
            r6 = r13 ^ 1
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.j r7 = r10.q
            monitor-enter(r7)
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L6c
            boolean r0 = r10.g     // Catch: java.lang.Throwable -> L69
            if (r0 != 0) goto L63
            int r8 = r10.f     // Catch: java.lang.Throwable -> L69
            int r0 = r10.f     // Catch: java.lang.Throwable -> L69
            int r0 = r0 + 2
            r10.f = r0     // Catch: java.lang.Throwable -> L69
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i r9 = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i     // Catch: java.lang.Throwable -> L69
            r4 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L69
            if (r13 == 0) goto L30
            long r0 = r10.l     // Catch: java.lang.Throwable -> L69
            r2 = 0
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 == 0) goto L30
            long r0 = r9.b     // Catch: java.lang.Throwable -> L69
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 != 0) goto L2e
            goto L30
        L2e:
            r13 = 0
            goto L31
        L30:
            r13 = 1
        L31:
            boolean r0 = r9.g()     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L40
            java.util.Map<java.lang.Integer, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i> r0 = r10.c     // Catch: java.lang.Throwable -> L69
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L69
            r0.put(r1, r9)     // Catch: java.lang.Throwable -> L69
        L40:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L69
            if (r11 != 0) goto L49
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.j r0 = r10.q     // Catch: java.lang.Throwable -> L6c
            r0.a(r6, r8, r11, r12)     // Catch: java.lang.Throwable -> L6c
            goto L52
        L49:
            boolean r0 = r10.f10743a     // Catch: java.lang.Throwable -> L6c
            if (r0 != 0) goto L5b
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.j r0 = r10.q     // Catch: java.lang.Throwable -> L6c
            r0.a(r11, r8, r12)     // Catch: java.lang.Throwable -> L6c
        L52:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L6c
            if (r13 == 0) goto L5a
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.j r11 = r10.q
            r11.flush()
        L5a:
            return r9
        L5b:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L6c
            java.lang.String r12 = "client streams shouldn't have associated stream IDs"
            r11.<init>(r12)     // Catch: java.lang.Throwable -> L6c
            throw r11     // Catch: java.lang.Throwable -> L6c
        L63:
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.a r11 = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.a     // Catch: java.lang.Throwable -> L69
            r11.<init>()     // Catch: java.lang.Throwable -> L69
            throw r11     // Catch: java.lang.Throwable -> L69
        L69:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L69
            throw r11     // Catch: java.lang.Throwable -> L6c
        L6c:
            r11 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L6c
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.g.b(int, java.util.List, boolean):bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i");
    }

    public synchronized bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i a(int i2) {
        return this.c.get(Integer.valueOf(i2));
    }

    public boolean b(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    public void c(int i2, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) {
        t.execute(new a("OkHttp %s stream %d", new Object[]{this.d, Integer.valueOf(i2)}, i2, bVar));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.NO_ERROR, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.CANCEL);
    }

    public synchronized bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i d(int i2) {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i remove;
        remove = this.c.remove(Integer.valueOf(i2));
        notifyAll();
        return remove;
    }

    public void f(long j2) {
        this.l += j2;
        if (j2 > 0) {
            notifyAll();
        }
    }

    public void flush() throws IOException {
        this.q.flush();
    }

    public synchronized boolean i() {
        return this.g;
    }

    public synchronized int j() {
        return this.n.b(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public void k() throws IOException {
        a(true);
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i a(List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> list, boolean z) throws IOException {
        return b(0, list, z);
    }

    public synchronized l c(int i2) {
        Map<Integer, l> map;
        map = this.i;
        return map != null ? map.remove(Integer.valueOf(i2)) : null;
    }

    public void a(int i2, boolean z, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j2) throws IOException {
        int min;
        long j3;
        if (j2 == 0) {
            this.q.a(z, i2, cVar, 0);
            return;
        }
        while (j2 > 0) {
            synchronized (this) {
                while (this.l <= 0) {
                    try {
                        if (this.c.containsKey(Integer.valueOf(i2))) {
                            wait();
                        } else {
                            throw new IOException("stream closed");
                        }
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                min = Math.min((int) Math.min(j2, this.l), this.q.j());
                j3 = min;
                this.l -= j3;
            }
            j2 -= j3;
            this.q.a(z && j2 == 0, i2, cVar, min);
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes8.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        public Socket f10744a;
        public String b;
        public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e c;
        public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d d;
        public i e = i.f10745a;
        public m f = m.f10755a;
        public boolean g;

        public h(boolean z) {
            this.g = z;
        }

        public h a(Socket socket, String str, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e eVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d dVar) {
            this.f10744a = socket;
            this.b = str;
            this.c = eVar;
            this.d = dVar;
            return this;
        }

        public h a(i iVar) {
            this.e = iVar;
            return this;
        }

        public g a() {
            return new g(this);
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes8.dex */
    public class j extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b implements h.b {
        public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h b;

        /* compiled from: Http2Connection.java */
        /* loaded from: classes8.dex */
        public class a extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
            public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, Object[] objArr, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i iVar) {
                super(str, objArr);
                this.b = iVar;
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
            public void b() {
                try {
                    g.this.b.a(this.b);
                } catch (IOException e) {
                    bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_try19.e b = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_try19.e.b();
                    StringBuilder m1016super = Cgoto.m1016super("Http2Connection.Listener failure for ");
                    m1016super.append(g.this.d);
                    b.a(4, m1016super.toString(), e);
                    try {
                        this.b.a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        /* compiled from: Http2Connection.java */
        /* loaded from: classes8.dex */
        public class b extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
            public b(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
            public void b() {
                g gVar = g.this;
                gVar.b.a(gVar);
            }
        }

        /* compiled from: Http2Connection.java */
        /* loaded from: classes8.dex */
        public class c extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b {
            public final /* synthetic */ n b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(String str, Object[] objArr, n nVar) {
                super(str, objArr);
                this.b = nVar;
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
            public void b() {
                try {
                    g.this.q.a(this.b);
                } catch (IOException unused) {
                }
            }
        }

        public j(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h hVar) {
            super("OkHttp %s", g.this.d);
            this.b = hVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h.b
        public void a() {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h.b
        public void a(int i, int i2, int i3, boolean z) {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h.b
        public void a(boolean z, int i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e eVar, int i2) throws IOException {
            if (g.this.b(i)) {
                g.this.a(i, eVar, i2, z);
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i a2 = g.this.a(i);
            if (a2 == null) {
                g.this.c(i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.PROTOCOL_ERROR);
                eVar.skip(i2);
                return;
            }
            a2.a(eVar, i2);
            if (z) {
                a2.i();
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.b
        public void b() {
            Throwable th;
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar;
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar2 = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.INTERNAL_ERROR;
            try {
                try {
                    this.b.a(this);
                    while (this.b.a(false, (h.b) this)) {
                    }
                    try {
                        try {
                            g.this.a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.NO_ERROR, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.CANCEL);
                        } catch (IOException unused) {
                            bVar = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.PROTOCOL_ERROR;
                            g.this.a(bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.PROTOCOL_ERROR);
                            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this.b);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            g.this.a(bVar, bVar2);
                        } catch (IOException unused2) {
                        }
                        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this.b);
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
            } catch (Throwable th3) {
                th = th3;
                bVar = bVar2;
                g.this.a(bVar, bVar2);
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this.b);
                throw th;
            }
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this.b);
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h.b
        public void a(boolean z, int i, int i2, List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> list) {
            if (g.this.b(i)) {
                g.this.a(i, list, z);
                return;
            }
            synchronized (g.this) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i a2 = g.this.a(i);
                if (a2 == null) {
                    if (g.this.g) {
                        return;
                    }
                    if (i <= g.this.e) {
                        return;
                    }
                    if (i % 2 == g.this.f % 2) {
                        return;
                    }
                    bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i iVar = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i(i, g.this, false, z, list);
                    g.this.e = i;
                    g.this.c.put(Integer.valueOf(i), iVar);
                    g.t.execute(new a("OkHttp %s stream %d", new Object[]{g.this.d, Integer.valueOf(i)}, iVar));
                    return;
                }
                a2.a(list);
                if (z) {
                    a2.i();
                }
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h.b
        public void a(int i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) {
            if (g.this.b(i)) {
                g.this.a(i, bVar);
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i d = g.this.d(i);
            if (d != null) {
                d.c(bVar);
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h.b
        public void a(boolean z, n nVar) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i[] iVarArr;
            long j;
            int i;
            synchronized (g.this) {
                int c2 = g.this.n.c();
                if (z) {
                    g.this.n.a();
                }
                g.this.n.a(nVar);
                a(nVar);
                int c3 = g.this.n.c();
                iVarArr = null;
                if (c3 == -1 || c3 == c2) {
                    j = 0;
                } else {
                    j = c3 - c2;
                    if (!g.this.o) {
                        g.this.f(j);
                        g.this.o = true;
                    }
                    if (!g.this.c.isEmpty()) {
                        iVarArr = (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i[]) g.this.c.values().toArray(new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i[g.this.c.size()]);
                    }
                }
                g.t.execute(new b("OkHttp %s settings", g.this.d));
            }
            if (iVarArr == null || j == 0) {
                return;
            }
            for (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i iVar : iVarArr) {
                synchronized (iVar) {
                    iVar.a(j);
                }
            }
        }

        private void a(n nVar) {
            g.t.execute(new c("OkHttp %s ACK Settings", new Object[]{g.this.d}, nVar));
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h.b
        public void a(boolean z, int i, int i2) {
            if (z) {
                l c2 = g.this.c(i);
                if (c2 != null) {
                    c2.b();
                    return;
                }
                return;
            }
            g.this.b(true, i, i2, null);
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h.b
        public void a(int i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f fVar) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i[] iVarArr;
            fVar.e();
            synchronized (g.this) {
                iVarArr = (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i[]) g.this.c.values().toArray(new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i[g.this.c.size()]);
                g.this.g = true;
            }
            for (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i iVar : iVarArr) {
                if (iVar.c() > i && iVar.f()) {
                    iVar.c(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.REFUSED_STREAM);
                    g.this.d(iVar.c());
                }
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h.b
        public void a(int i, long j) {
            if (i == 0) {
                synchronized (g.this) {
                    g.this.l += j;
                    g.this.notifyAll();
                }
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i a2 = g.this.a(i);
            if (a2 != null) {
                synchronized (a2) {
                    a2.a(j);
                }
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.h.b
        public void a(int i, int i2, List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> list) {
            g.this.a(i2, list);
        }
    }

    public void a(int i2, long j2) {
        t.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.d, Integer.valueOf(i2)}, i2, j2));
    }

    public void a(boolean z, int i2, int i3, l lVar) throws IOException {
        synchronized (this.q) {
            if (lVar != null) {
                lVar.c();
            }
            this.q.a(z, i2, i3);
        }
    }

    public void b(int i2, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) throws IOException {
        this.q.a(i2, bVar);
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) throws IOException {
        synchronized (this.q) {
            synchronized (this) {
                if (this.g) {
                    return;
                }
                this.g = true;
                this.q.a(this.e, bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.f10764a);
            }
        }
    }

    public void b(boolean z, int i2, int i3, l lVar) {
        t.execute(new c("OkHttp %s ping %08x%08x", new Object[]{this.d, Integer.valueOf(i2), Integer.valueOf(i3)}, z, i2, i3, lVar));
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar2) throws IOException {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i[] iVarArr;
        if (!u && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        l[] lVarArr = null;
        try {
            a(bVar);
            e = null;
        } catch (IOException e2) {
            e = e2;
        }
        synchronized (this) {
            if (this.c.isEmpty()) {
                iVarArr = null;
            } else {
                iVarArr = (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i[]) this.c.values().toArray(new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i[this.c.size()]);
                this.c.clear();
            }
            if (this.i != null) {
                this.i = null;
                lVarArr = (l[]) this.i.values().toArray(new l[this.i.size()]);
            }
        }
        if (iVarArr != null) {
            for (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.i iVar : iVarArr) {
                try {
                    iVar.a(bVar2);
                } catch (IOException e3) {
                    if (e != null) {
                        e = e3;
                    }
                }
            }
        }
        if (lVarArr != null) {
            for (l lVar : lVarArr) {
                lVar.a();
            }
        }
        try {
            this.q.close();
        } catch (IOException e4) {
            if (e == null) {
                e = e4;
            }
        }
        try {
            this.p.close();
        } catch (IOException e5) {
            e = e5;
        }
        if (e != null) {
            throw e;
        }
    }

    public void a(boolean z) throws IOException {
        if (z) {
            this.q.i();
            this.q.b(this.m);
            int c2 = this.m.c();
            if (c2 != 65535) {
                this.q.a(0, c2 - 65535);
            }
        }
        Thread thread = new Thread(this.r);
        StringBuilder m1016super = Cgoto.m1016super("gm_t_http2_connection");
        m1016super.append(SystemClock.uptimeMillis());
        thread.setName(m1016super.toString());
        thread.start();
    }

    public void a(int i2, List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> list) {
        synchronized (this) {
            if (this.s.contains(Integer.valueOf(i2))) {
                c(i2, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.PROTOCOL_ERROR);
                return;
            }
            this.s.add(Integer.valueOf(i2));
            this.h.execute(new d("OkHttp %s Push Request[%s]", new Object[]{this.d, Integer.valueOf(i2)}, i2, list));
        }
    }

    public void a(int i2, List<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.c> list, boolean z) {
        this.h.execute(new e("OkHttp %s Push Headers[%s]", new Object[]{this.d, Integer.valueOf(i2)}, i2, list, z));
    }

    public void a(int i2, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e eVar, int i3, boolean z) throws IOException {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c();
        long j2 = i3;
        eVar.a(j2);
        eVar.a(cVar, j2);
        if (cVar.o() == j2) {
            this.h.execute(new f("OkHttp %s Push Data[%s]", new Object[]{this.d, Integer.valueOf(i2)}, i2, cVar, i3, z));
            return;
        }
        throw new IOException(cVar.o() + " != " + i3);
    }

    public void a(int i2, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar) {
        this.h.execute(new C0027g("OkHttp %s Push Reset[%s]", new Object[]{this.d, Integer.valueOf(i2)}, i2, bVar));
    }
}
