package com.ss.android.socialbase.downloader.f;

import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes7.dex */
public class g {
    public final DownloadInfo c;
    public final com.ss.android.socialbase.downloader.g.a e;
    public final com.ss.android.socialbase.downloader.h.f f;
    public final c g;
    public BaseException h;
    public final boolean m;
    public final long n;
    public final long o;
    public final boolean p;
    public long q;

    /* renamed from: a  reason: collision with root package name */
    public final List<l> f11877a = new LinkedList();
    public final List<l> b = new ArrayList();
    public volatile boolean i = false;
    public volatile boolean j = false;
    public volatile boolean k = false;
    public volatile long r = 0;
    public volatile long s = 0;
    public final com.ss.android.socialbase.downloader.downloader.j d = com.ss.android.socialbase.downloader.downloader.c.x();
    public final com.ss.android.socialbase.downloader.a.a l = com.ss.android.socialbase.downloader.a.a.a();

    public g(DownloadInfo downloadInfo, com.ss.android.socialbase.downloader.h.f fVar, c cVar) {
        this.c = downloadInfo;
        this.f = fVar;
        this.g = cVar;
        com.ss.android.socialbase.downloader.g.a a2 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
        this.e = a2;
        boolean z = a2.a("sync_strategy", 0) == 1;
        this.m = z;
        if (z) {
            this.n = Math.max(this.e.a("sync_interval_ms_fg", 5000), 500L);
            this.o = Math.max(this.e.a("sync_interval_ms_bg", 1000), 500L);
        } else {
            this.n = 0L;
            this.o = 0L;
        }
        this.p = this.e.b("monitor_rw") == 1;
    }

    private boolean a(long j, long j2) {
        return j > 65536 && j2 > 500;
    }

    private void b(List<l> list) throws IOException {
        for (l lVar : list) {
            lVar.c();
        }
    }

    private void c() throws IOException {
        boolean z = this.p;
        long nanoTime = z ? System.nanoTime() : 0L;
        DownloadInfo downloadInfo = this.c;
        com.ss.android.socialbase.downloader.downloader.j jVar = this.d;
        List<l> list = this.f11877a;
        List<l> list2 = this.b;
        Map<Long, i> l = jVar.l(downloadInfo.getId());
        if (l == null) {
            l = new HashMap<>(4);
        }
        synchronized (this) {
            a(list);
            b(list);
            a(list, l);
            if (list2.size() > 0) {
                c(list2);
                list.removeAll(list2);
                list2.clear();
            }
        }
        if (1 != 0) {
            downloadInfo.updateRealDownloadTime(true);
            jVar.a(downloadInfo.getId(), l);
            jVar.a(downloadInfo);
            this.r = downloadInfo.getCurBytes();
        }
        if (z) {
            this.q += System.nanoTime() - nanoTime;
        }
    }

    public void a(l lVar) {
        synchronized (this) {
            this.f11877a.add(lVar);
        }
    }

    public void b() {
        this.j = true;
        this.i = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:208:0x02a4, code lost:
        r3.b(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ba, code lost:
        if (r13 <= 0) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00bd, code lost:
        r3.b(r13);
     */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01f5 A[Catch: all -> 0x03d9, TryCatch #28 {all -> 0x03d9, blocks: (B:158:0x01f1, B:160:0x01f5, B:163:0x01fb, B:165:0x0201, B:166:0x0204, B:167:0x021a, B:204:0x029e, B:205:0x02a0, B:244:0x0327, B:246:0x0331, B:248:0x0335, B:285:0x03b7, B:287:0x03bd, B:288:0x03c0, B:289:0x03d8), top: B:359:0x0027, inners: #24 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0201 A[Catch: all -> 0x03d9, TryCatch #28 {all -> 0x03d9, blocks: (B:158:0x01f1, B:160:0x01f5, B:163:0x01fb, B:165:0x0201, B:166:0x0204, B:167:0x021a, B:204:0x029e, B:205:0x02a0, B:244:0x0327, B:246:0x0331, B:248:0x0335, B:285:0x03b7, B:287:0x03bd, B:288:0x03c0, B:289:0x03d8), top: B:359:0x0027, inners: #24 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0331 A[Catch: all -> 0x03d9, TryCatch #28 {all -> 0x03d9, blocks: (B:158:0x01f1, B:160:0x01f5, B:163:0x01fb, B:165:0x0201, B:166:0x0204, B:167:0x021a, B:204:0x029e, B:205:0x02a0, B:244:0x0327, B:246:0x0331, B:248:0x0335, B:285:0x03b7, B:287:0x03bd, B:288:0x03c0, B:289:0x03d8), top: B:359:0x0027, inners: #24 }] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x03bd A[Catch: all -> 0x03d9, TryCatch #28 {all -> 0x03d9, blocks: (B:158:0x01f1, B:160:0x01f5, B:163:0x01fb, B:165:0x0201, B:166:0x0204, B:167:0x021a, B:204:0x029e, B:205:0x02a0, B:244:0x0327, B:246:0x0331, B:248:0x0335, B:285:0x03b7, B:287:0x03bd, B:288:0x03c0, B:289:0x03d8), top: B:359:0x0027, inners: #24 }] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x022b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x02ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0364 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:345:0x00e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0417 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:370:0x03f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:376:0x024a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x02cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.ss.android.socialbase.downloader.f.d r31) throws com.ss.android.socialbase.downloader.exception.BaseException {
        /*
            Method dump skipped, instructions count: 1133
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.f.g.a(com.ss.android.socialbase.downloader.f.d):void");
    }

    private void c(List<l> list) {
        for (l lVar : list) {
            lVar.d();
        }
    }

    private void a(long j, boolean z) throws IOException {
        long j2 = j - this.s;
        if (this.m) {
            if (j2 > (this.l.b() ? this.n : this.o)) {
                c();
                this.s = j;
                return;
            }
            return;
        }
        long curBytes = this.c.getCurBytes() - this.r;
        if (z || a(curBytes, j2)) {
            c();
            this.s = j;
        }
    }

    private void a(e eVar) {
        synchronized (this) {
            this.b.add((l) eVar);
        }
    }

    private void a(List<l> list) throws IOException {
        for (l lVar : list) {
            lVar.b();
        }
    }

    private void a(List<l> list, Map<Long, i> map) {
        for (l lVar : list) {
            i e = lVar.e();
            i iVar = map.get(Long.valueOf(e.c()));
            if (iVar == null) {
                map.put(Long.valueOf(e.c()), new i(e));
            } else {
                iVar.a(e.d());
                iVar.c(e.f());
            }
        }
    }

    public void a() {
        this.k = true;
        this.i = true;
    }
}
