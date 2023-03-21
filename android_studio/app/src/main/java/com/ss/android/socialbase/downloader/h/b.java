package com.ss.android.socialbase.downloader.h;

import com.ss.android.socialbase.downloader.downloader.j;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.network.i;

/* loaded from: classes7.dex */
public class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final String f11890a = b.class.getSimpleName();
    public com.ss.android.socialbase.downloader.model.b b;
    public com.ss.android.socialbase.downloader.model.b c;
    public com.ss.android.socialbase.downloader.downloader.e d;
    public final DownloadTask e;
    public DownloadInfo f;
    public final f g;
    public i h;
    public j i;
    public volatile boolean j;
    public volatile boolean k;
    public boolean l;

    public b(com.ss.android.socialbase.downloader.model.b bVar, DownloadTask downloadTask, f fVar) {
        this.l = false;
        this.c = bVar;
        this.e = downloadTask;
        if (downloadTask != null) {
            this.f = downloadTask.getDownloadInfo();
        }
        this.g = fVar;
        this.i = com.ss.android.socialbase.downloader.downloader.c.x();
        this.c.a(this);
    }

    private String c() {
        return this.f.getConnectionUrl();
    }

    private void d() {
        i iVar = this.h;
        if (iVar != null) {
            iVar.d();
            this.h = null;
        }
    }

    private boolean e() {
        return this.j || this.k;
    }

    public void a(long j, long j2) {
        com.ss.android.socialbase.downloader.downloader.e eVar = this.d;
        if (eVar == null) {
            return;
        }
        eVar.a(j, j2);
    }

    public void b() {
        this.k = true;
        com.ss.android.socialbase.downloader.downloader.e eVar = this.d;
        if (eVar != null) {
            eVar.c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
        r3.b.a(false);
     */
    @Override // java.lang.Runnable
    @android.annotation.SuppressLint({"DefaultLocale"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            r3 = this;
            r0 = 10
            android.os.Process.setThreadPriority(r0)
            com.ss.android.socialbase.downloader.model.b r0 = r3.c
            r3.b = r0
        L9:
            r0 = 0
            com.ss.android.socialbase.downloader.model.b r1 = r3.b     // Catch: java.lang.Throwable -> L5d
            r1.a(r3)     // Catch: java.lang.Throwable -> L5d
            com.ss.android.socialbase.downloader.model.b r1 = r3.b     // Catch: java.lang.Throwable -> L5d
            boolean r1 = r3.a(r1)     // Catch: java.lang.Throwable -> L5d
            if (r1 != 0) goto L1d
            com.ss.android.socialbase.downloader.model.b r1 = r3.b     // Catch: java.lang.Throwable -> L5d
            r1.a(r0)     // Catch: java.lang.Throwable -> L5d
            goto L4d
        L1d:
            com.ss.android.socialbase.downloader.model.b r1 = r3.b     // Catch: java.lang.Throwable -> L5d
            r1.a(r0)     // Catch: java.lang.Throwable -> L5d
            boolean r1 = r3.e()     // Catch: java.lang.Throwable -> L5d
            if (r1 == 0) goto L29
            goto L4d
        L29:
            com.ss.android.socialbase.downloader.h.f r1 = r3.g     // Catch: java.lang.Throwable -> L5d
            com.ss.android.socialbase.downloader.model.b r2 = r3.b     // Catch: java.lang.Throwable -> L5d
            int r2 = r2.s()     // Catch: java.lang.Throwable -> L5d
            com.ss.android.socialbase.downloader.model.b r1 = r1.a(r2)     // Catch: java.lang.Throwable -> L5d
            r3.b = r1     // Catch: java.lang.Throwable -> L5d
            boolean r1 = r3.e()     // Catch: java.lang.Throwable -> L5d
            if (r1 != 0) goto L4d
            com.ss.android.socialbase.downloader.model.b r1 = r3.b     // Catch: java.lang.Throwable -> L5d
            if (r1 != 0) goto L42
            goto L4d
        L42:
            r1 = 50
            java.lang.Thread.sleep(r1)     // Catch: java.lang.Throwable -> L48
            goto L9
        L48:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L5d
            goto L9
        L4d:
            com.ss.android.socialbase.downloader.model.b r1 = r3.b
            if (r1 == 0) goto L54
            r1.a(r0)
        L54:
            r3.d()
            com.ss.android.socialbase.downloader.h.f r0 = r3.g
            r0.a(r3)
            return
        L5d:
            r1 = move-exception
            com.ss.android.socialbase.downloader.model.b r2 = r3.b
            if (r2 == 0) goto L65
            r2.a(r0)
        L65:
            r3.d()
            com.ss.android.socialbase.downloader.h.f r0 = r3.g
            r0.a(r3)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.b.run():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x01e4 A[Catch: all -> 0x02a7, TRY_ENTER, TryCatch #3 {all -> 0x02a7, blocks: (B:135:0x01da, B:139:0x01e4, B:141:0x01ea, B:144:0x01f3, B:146:0x01fb, B:148:0x0201, B:152:0x020c, B:154:0x0210, B:156:0x0218, B:158:0x0229, B:167:0x024f, B:169:0x0255, B:171:0x0262, B:175:0x026a, B:170:0x025c, B:161:0x0236, B:162:0x0242, B:177:0x0275, B:179:0x027d, B:181:0x0285, B:183:0x028d, B:185:0x0295, B:188:0x029e, B:122:0x01bc, B:126:0x01c6, B:129:0x01cd), top: B:197:0x01da, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0255 A[Catch: all -> 0x02a7, TryCatch #3 {all -> 0x02a7, blocks: (B:135:0x01da, B:139:0x01e4, B:141:0x01ea, B:144:0x01f3, B:146:0x01fb, B:148:0x0201, B:152:0x020c, B:154:0x0210, B:156:0x0218, B:158:0x0229, B:167:0x024f, B:169:0x0255, B:171:0x0262, B:175:0x026a, B:170:0x025c, B:161:0x0236, B:162:0x0242, B:177:0x0275, B:179:0x027d, B:181:0x0285, B:183:0x028d, B:185:0x0295, B:188:0x029e, B:122:0x01bc, B:126:0x01c6, B:129:0x01cd), top: B:197:0x01da, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x025c A[Catch: all -> 0x02a7, TryCatch #3 {all -> 0x02a7, blocks: (B:135:0x01da, B:139:0x01e4, B:141:0x01ea, B:144:0x01f3, B:146:0x01fb, B:148:0x0201, B:152:0x020c, B:154:0x0210, B:156:0x0218, B:158:0x0229, B:167:0x024f, B:169:0x0255, B:171:0x0262, B:175:0x026a, B:170:0x025c, B:161:0x0236, B:162:0x0242, B:177:0x0275, B:179:0x027d, B:181:0x0285, B:183:0x028d, B:185:0x0295, B:188:0x029e, B:122:0x01bc, B:126:0x01c6, B:129:0x01cd), top: B:197:0x01da, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x026a A[Catch: all -> 0x02a7, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x02a7, blocks: (B:135:0x01da, B:139:0x01e4, B:141:0x01ea, B:144:0x01f3, B:146:0x01fb, B:148:0x0201, B:152:0x020c, B:154:0x0210, B:156:0x0218, B:158:0x0229, B:167:0x024f, B:169:0x0255, B:171:0x0262, B:175:0x026a, B:170:0x025c, B:161:0x0236, B:162:0x0242, B:177:0x0275, B:179:0x027d, B:181:0x0285, B:183:0x028d, B:185:0x0295, B:188:0x029e, B:122:0x01bc, B:126:0x01c6, B:129:0x01cd), top: B:197:0x01da, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0266 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x01e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0103 A[Catch: all -> 0x01ba, BaseException -> 0x01d6, TRY_ENTER, TryCatch #14 {all -> 0x01ba, blocks: (B:22:0x004f, B:26:0x0059, B:30:0x0064, B:35:0x00b3, B:37:0x00b7, B:45:0x00ce, B:62:0x00f9, B:66:0x0103, B:68:0x0107, B:79:0x0137, B:76:0x012f, B:78:0x0136, B:51:0x00dd, B:53:0x00e1), top: B:211:0x004f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(com.ss.android.socialbase.downloader.model.b r31) {
        /*
            Method dump skipped, instructions count: 684
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.b.a(com.ss.android.socialbase.downloader.model.b):boolean");
    }

    public b(com.ss.android.socialbase.downloader.model.b bVar, DownloadTask downloadTask, i iVar, f fVar) {
        this(bVar, downloadTask, fVar);
        this.h = iVar;
    }

    private void a(com.ss.android.socialbase.downloader.model.b bVar, long j) {
        com.ss.android.socialbase.downloader.model.b e = bVar.d() ? bVar.e() : bVar;
        if (e != null) {
            if (e.h()) {
                this.i.a(e.k(), e.b(), j);
            }
            e.b(j);
            this.i.a(e.k(), e.s(), e.b(), j);
        } else if (bVar.d()) {
            this.i.a(bVar.k(), bVar.s(), j);
        }
    }

    public void a() {
        this.j = true;
        com.ss.android.socialbase.downloader.downloader.e eVar = this.d;
        if (eVar != null) {
            eVar.b();
        }
    }
}
