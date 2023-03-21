package com.ss.android.socialbase.downloader.downloader;

import android.os.SystemClock;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
/* loaded from: classes7.dex */
public class e {
    public static String b = "ResponseHandler";
    public long A;
    public long B;
    public long C;
    public long D;
    public final DownloadInfo c;
    public final String d;
    public final com.ss.android.socialbase.downloader.model.b e;
    public final com.ss.android.socialbase.downloader.network.i f;
    public j g;
    public com.ss.android.socialbase.downloader.impls.k h;
    public t i;
    public com.ss.android.socialbase.downloader.model.e j;
    public BaseException k;
    public volatile boolean l;
    public volatile boolean m;
    public final com.ss.android.socialbase.downloader.h.f n;
    public long o;
    public long p;
    public volatile long q;
    public volatile long r;
    public final boolean s;
    public final com.ss.android.socialbase.downloader.g.a t;
    public final com.ss.android.socialbase.downloader.a.a u;
    public final boolean v;
    public final long w;
    public final long x;
    public final boolean y;
    public boolean z;

    /* renamed from: a  reason: collision with root package name */
    public boolean f11861a = false;
    public volatile long E = 0;
    public volatile long F = 0;

    public e(DownloadInfo downloadInfo, String str, com.ss.android.socialbase.downloader.network.i iVar, com.ss.android.socialbase.downloader.model.b bVar, com.ss.android.socialbase.downloader.h.f fVar) {
        this.c = downloadInfo;
        this.d = str;
        j x = c.x();
        this.g = x;
        if (x instanceof com.ss.android.socialbase.downloader.impls.d) {
            com.ss.android.socialbase.downloader.impls.d dVar = (com.ss.android.socialbase.downloader.impls.d) x;
            this.h = dVar.a();
            this.i = dVar.f();
        }
        this.f = iVar;
        this.e = bVar;
        this.n = fVar;
        long n = bVar.n();
        this.o = n;
        this.p = n;
        if (bVar.d()) {
            this.r = bVar.q();
        } else {
            this.r = bVar.c(false);
        }
        this.q = bVar.p();
        this.u = com.ss.android.socialbase.downloader.a.a.a();
        com.ss.android.socialbase.downloader.g.a a2 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
        this.t = a2;
        boolean z = a2.a("sync_strategy", 0) == 1;
        this.v = z;
        if (z) {
            this.w = Math.max(this.t.a("sync_interval_ms_fg", 5000), 500L);
            this.x = Math.max(this.t.a("sync_interval_ms_bg", 1000), 500L);
        } else {
            this.w = 0L;
            this.x = 0L;
        }
        this.y = this.t.b("monitor_rw") == 1;
        this.s = com.ss.android.socialbase.downloader.i.a.a(65536);
    }

    private boolean b(long j, long j2) {
        return j > 65536 && j2 > 500;
    }

    private boolean f() {
        return this.l || this.m;
    }

    private void g() {
        ExecutorService l;
        if (this.f == null || (l = c.l()) == null) {
            return;
        }
        l.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.e.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.f.d();
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void h() {
        boolean z;
        long nanoTime = this.y ? System.nanoTime() : 0L;
        try {
            this.j.a();
            z = true;
        } catch (Exception unused) {
            z = false;
        }
        if (z) {
            this.c.updateRealDownloadTime(true);
            boolean z2 = this.c.getChunkCount() > 1;
            m a2 = com.ss.android.socialbase.downloader.impls.l.a(com.ss.android.socialbase.downloader.i.f.b());
            if (z2) {
                a(this.i);
                if (a2 != null) {
                    a2.c(this.c);
                } else {
                    this.i.a(this.c.getId(), this.c.getCurBytes());
                }
            } else if (a2 != null) {
                a2.c(this.c);
            } else {
                this.i.a(this.e.k(), this.o);
            }
            this.E = this.o;
        }
        if (this.y) {
            this.C += System.nanoTime() - nanoTime;
        }
    }

    public void b() {
        if (this.l) {
            return;
        }
        this.l = true;
        g();
    }

    public void c() {
        if (this.m) {
            return;
        }
        synchronized (this.n) {
            this.m = true;
        }
        g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02e3 A[Catch: all -> 0x04dd, TRY_ENTER, TryCatch #26 {all -> 0x04dd, blocks: (B:176:0x02e3, B:177:0x02ea, B:206:0x0363, B:208:0x0369, B:209:0x036c, B:250:0x0458, B:251:0x045a, B:255:0x0461, B:257:0x0481, B:285:0x04d1, B:287:0x04d7, B:288:0x04da, B:289:0x04dc), top: B:333:0x002b, inners: #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0363 A[Catch: all -> 0x04dd, TRY_ENTER, TryCatch #26 {all -> 0x04dd, blocks: (B:176:0x02e3, B:177:0x02ea, B:206:0x0363, B:208:0x0369, B:209:0x036c, B:250:0x0458, B:251:0x045a, B:255:0x0461, B:257:0x0481, B:285:0x04d1, B:287:0x04d7, B:288:0x04da, B:289:0x04dc), top: B:333:0x002b, inners: #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x03ea A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0481 A[Catch: all -> 0x04dd, TRY_LEAVE, TryCatch #26 {all -> 0x04dd, blocks: (B:176:0x02e3, B:177:0x02ea, B:206:0x0363, B:208:0x0369, B:209:0x036c, B:250:0x0458, B:251:0x045a, B:255:0x0461, B:257:0x0481, B:285:0x04d1, B:287:0x04d7, B:288:0x04da, B:289:0x04dc), top: B:333:0x002b, inners: #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04d7 A[Catch: all -> 0x04dd, TryCatch #26 {all -> 0x04dd, blocks: (B:176:0x02e3, B:177:0x02ea, B:206:0x0363, B:208:0x0369, B:209:0x036c, B:250:0x0458, B:251:0x045a, B:255:0x0461, B:257:0x0481, B:285:0x04d1, B:287:0x04d7, B:288:0x04da, B:289:0x04dc), top: B:333:0x002b, inners: #28 }] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v3, types: [int] */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [int] */
    /* JADX WARN: Type inference failed for: r6v7, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d() throws com.ss.android.socialbase.downloader.exception.BaseException {
        /*
            Method dump skipped, instructions count: 1382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.downloader.e.d():void");
    }

    public long e() {
        return this.E;
    }

    public long a() {
        return this.o;
    }

    public void a(long j, long j2, long j3) {
        this.o = j;
        this.p = j;
        this.q = j2;
        this.r = j3;
    }

    public void a(long j, long j2) {
        this.q = j;
        this.r = j2;
    }

    private com.ss.android.socialbase.downloader.e.b a(InputStream inputStream) {
        int H = c.H();
        if (this.t.a("rw_concurrent", 0) == 1 && this.c.getChunkCount() == 1 && this.c.getTotalBytes() > 20971520) {
            try {
                com.ss.android.socialbase.downloader.e.a aVar = new com.ss.android.socialbase.downloader.e.a(inputStream, H, this.t.a("rw_concurrent_max_buffer_count", 4));
                this.z = true;
                return aVar;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        com.ss.android.socialbase.downloader.e.c cVar = new com.ss.android.socialbase.downloader.e.c(inputStream, H);
        this.z = false;
        return cVar;
    }

    private void a(boolean z) {
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = uptimeMillis - this.F;
        if (this.v) {
            if (j > (this.u.b() ? this.w : this.x)) {
                h();
                this.F = uptimeMillis;
                return;
            }
            return;
        }
        long j2 = this.o - this.E;
        if (z || b(j2, j)) {
            h();
            this.F = uptimeMillis;
        }
    }

    private void a(j jVar) {
        com.ss.android.socialbase.downloader.model.b bVar;
        com.ss.android.socialbase.downloader.model.b bVar2;
        if (jVar == null) {
            return;
        }
        m mVar = null;
        boolean z = jVar instanceof com.ss.android.socialbase.downloader.b.e;
        if (z && (mVar = com.ss.android.socialbase.downloader.impls.l.a(com.ss.android.socialbase.downloader.i.f.b())) == null) {
            return;
        }
        m mVar2 = mVar;
        if (this.e.d()) {
            bVar = this.e.e();
        } else {
            bVar = this.e;
        }
        com.ss.android.socialbase.downloader.model.b bVar3 = bVar;
        if (bVar3 != null) {
            bVar3.b(this.o);
            if (z && mVar2 != null) {
                mVar2.a(bVar3.k(), bVar3.s(), bVar3.b(), this.o);
                bVar2 = bVar3;
            } else {
                bVar2 = bVar3;
                jVar.a(bVar3.k(), bVar3.s(), bVar3.b(), this.o);
            }
            if (bVar2.h()) {
                boolean z2 = false;
                if (bVar2.i()) {
                    long j = bVar2.j();
                    if (j > this.o) {
                        if (z && mVar2 != null) {
                            mVar2.a(bVar2.k(), bVar2.b(), j);
                        } else {
                            jVar.a(bVar2.k(), bVar2.b(), j);
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    return;
                }
                if (z && mVar2 != null) {
                    mVar2.a(bVar2.k(), bVar2.b(), this.o);
                } else {
                    jVar.a(bVar2.k(), bVar2.b(), this.o);
                }
            }
        } else if (this.e.d()) {
            if (z && mVar2 != null) {
                mVar2.a(this.e.k(), this.e.s(), this.o);
            } else {
                jVar.a(this.e.k(), this.e.s(), this.o);
            }
        }
    }
}
