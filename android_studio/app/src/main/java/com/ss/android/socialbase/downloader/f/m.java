package com.ss.android.socialbase.downloader.f;

import android.text.TextUtils;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;

/* loaded from: classes7.dex */
public class m implements Runnable {
    public Thread A;
    public volatile boolean B;
    public int C;
    public int D;
    public int E;
    public long F;
    public int G;
    public boolean H;
    public BaseException I;
    public boolean J;
    public boolean K;
    public com.ss.android.socialbase.downloader.i.e L;

    /* renamed from: a  reason: collision with root package name */
    public volatile i f11885a;
    public q b;
    public final int c;
    public volatile long d;
    public volatile long e;
    public volatile long f;
    public volatile long g;
    public String h;
    public String i;
    public String j;
    public final f k;
    public final c l;
    public final DownloadInfo m;
    public final com.ss.android.socialbase.downloader.g.a n;
    public com.ss.android.socialbase.downloader.network.i o;
    public com.ss.android.socialbase.downloader.model.d p;
    public long r;
    public volatile long s;
    public volatile long t;
    public volatile long v;
    public Future w;
    public volatile boolean x;
    public volatile boolean y;
    public volatile boolean z;
    public final List<i> q = new ArrayList();
    public volatile long u = -1;

    public m(DownloadInfo downloadInfo, k kVar, c cVar, q qVar, int i) {
        this.m = downloadInfo;
        this.k = kVar;
        this.l = cVar;
        this.n = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
        this.b = qVar;
        this.c = i;
    }

    private boolean a(i iVar) throws BaseException {
        k();
        while (true) {
            try {
                b(iVar);
                d(iVar);
                return true;
            } catch (j e) {
                this.I = e;
                throw e;
            } catch (Throwable th) {
                try {
                    com.ss.android.socialbase.downloader.c.a.e("SegmentReader", "download: e = " + th + ", threadIndex = " + this.c + ", reconnect = " + this.y + ", closed = " + this.x);
                    if (this.x) {
                        return false;
                    }
                    if (this.y) {
                        this.y = false;
                        Thread.interrupted();
                        if (this.z) {
                            this.z = false;
                            throw new j(5, "download");
                        }
                    } else {
                        th.printStackTrace();
                        BaseException e2 = null;
                        if (th instanceof BaseException) {
                            e2 = th;
                        } else {
                            try {
                                com.ss.android.socialbase.downloader.i.f.a((Throwable) th, "download");
                            } catch (BaseException e3) {
                                e2 = e3;
                            }
                        }
                        if (e2 == null || !a(iVar, e2)) {
                            return false;
                        }
                    }
                } finally {
                    i();
                }
            }
        }
        return false;
    }

    private void b(i iVar) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        c(iVar);
        this.k.a(this, iVar, this.b, this.p);
        this.b.c();
    }

    private void c(i iVar) throws BaseException {
        try {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.e = 0L;
                this.d = currentTimeMillis;
                this.r = iVar.e();
                this.t = iVar.f();
                if (this.t > 0 && this.r > this.t) {
                    throw new j(6, "createConn, " + iVar);
                }
                this.L = new com.ss.android.socialbase.downloader.i.e();
                List<com.ss.android.socialbase.downloader.model.c> a2 = com.ss.android.socialbase.downloader.i.f.a(this.m.getExtraHeaders(), this.m.geteTag(), this.r, this.t);
                a2.add(new com.ss.android.socialbase.downloader.model.c("Segment-Index", String.valueOf(iVar.g())));
                a2.add(new com.ss.android.socialbase.downloader.model.c("Thread-Index", String.valueOf(this.c)));
                com.ss.android.socialbase.downloader.i.f.a(a2, this.m);
                com.ss.android.socialbase.downloader.i.f.b(a2, this.m);
                String str = this.b.f11887a;
                if (this.H && !TextUtils.isEmpty(str) && str.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS)) {
                    str = str.replaceFirst(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS, SpeechSynthesizer.REQUEST_PROTOCOL_HTTP);
                }
                String str2 = this.b.b;
                com.ss.android.socialbase.downloader.c.a.c("SegmentReader", "createConnectionBegin: url = " + str + ", ip = " + str2 + ", segment = " + iVar + ", threadIndex = " + this.c);
                this.h = str;
                this.i = str2;
                com.ss.android.socialbase.downloader.network.i a3 = com.ss.android.socialbase.downloader.downloader.c.a(this.m.isNeedDefaultHttpServiceBackUp(), this.m.getMaxBytes(), str, str2, a2, 0, currentTimeMillis - this.F > TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS && this.n.b("monitor_download_connect") > 0, this.m);
                if (a3 != null) {
                    this.o = a3;
                    this.p = new com.ss.android.socialbase.downloader.model.d(str, a3);
                    if (!this.x) {
                        if (a3 instanceof com.ss.android.socialbase.downloader.network.a) {
                            this.j = ((com.ss.android.socialbase.downloader.network.a) a3).e();
                        }
                        this.e = System.currentTimeMillis();
                        return;
                    }
                    throw new p("createConn");
                }
                throw new BaseException(1022, new IOException("download can't continue, chunk connection is null"));
            } catch (BaseException e) {
                throw e;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0129, code lost:
        r7 = r11 + 1;
        r11 = r13 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0133, code lost:
        if (r11 <= 0) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0135, code lost:
        com.ss.android.socialbase.downloader.c.a.e("SegmentReader", "loopAndRead: redundant = " + r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x014b, code lost:
        r31.u = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x014e, code lost:
        r13 = r7;
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0152, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x015b, code lost:
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0163, code lost:
        throw new com.ss.android.socialbase.downloader.f.p("loopAndRead");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01bf, code lost:
        r6 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x03a5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x0159 -> B:76:0x015a). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void d(com.ss.android.socialbase.downloader.f.i r32) throws com.ss.android.socialbase.downloader.exception.BaseException {
        /*
            Method dump skipped, instructions count: 995
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.f.m.d(com.ss.android.socialbase.downloader.f.i):void");
    }

    private void i() {
        this.F = this.d;
        this.d = -1L;
        this.e = -1L;
        this.f = -1L;
        this.g = -1L;
        j();
    }

    private void j() {
        com.ss.android.socialbase.downloader.network.i iVar = this.o;
        if (iVar != null) {
            try {
                com.ss.android.socialbase.downloader.c.a.c("SegmentReader", "closeConnection: thread = " + this.c);
                iVar.d();
                iVar.c();
            } catch (Throwable unused) {
            }
        }
    }

    private void k() {
        this.H = false;
        l();
    }

    private void l() {
        this.D = this.b.d ? this.m.getRetryCount() : this.m.getBackUpUrlRetryCount();
        this.E = 0;
    }

    private long m() {
        long j = this.s;
        this.s = 0L;
        return j <= 0 ? RecyclerView.FOREVER_NS : j;
    }

    public void e() {
        StringBuilder m1016super = Cgoto.m1016super("close: threadIndex = ");
        m1016super.append(this.c);
        com.ss.android.socialbase.downloader.c.a.c("SegmentReader", m1016super.toString());
        synchronized (this) {
            this.x = true;
            this.B = true;
        }
        j();
        Future future = this.w;
        if (future != null) {
            this.w = null;
            try {
                future.cancel(true);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void f() {
        a(false);
    }

    public boolean g() {
        return this.J;
    }

    public long h() {
        return this.r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007b, code lost:
        r6.f11885a = null;
        r2 = r6.k;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 256
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.f.m.run():void");
    }

    public long b() {
        long c;
        synchronized (this.k) {
            c = this.v + c();
        }
        return c;
    }

    public void b(boolean z) {
        this.J = z;
    }

    public void b(long j) {
        long j2 = this.u;
        com.ss.android.socialbase.downloader.i.e eVar = this.L;
        if (j2 < 0 || eVar == null) {
            return;
        }
        eVar.a(j2, j);
    }

    public boolean a(q qVar) {
        int i = this.G;
        if (i >= 30) {
            return false;
        }
        this.G = i + 1;
        q qVar2 = this.b;
        if (qVar2 != null) {
            qVar2.b(this);
        }
        qVar.a(this);
        this.b = qVar;
        l();
        return true;
    }

    private boolean a(i iVar, BaseException baseException) {
        com.ss.android.socialbase.downloader.c.a.e("SegmentReader", "handleDownloadFailed:  e = " + baseException + ", curRetryCount = " + this.E + ", retryCount = " + this.D);
        this.I = baseException;
        this.b.b();
        this.k.a(this, this.b, iVar, baseException, this.E, this.D);
        int i = this.E;
        if (i < this.D) {
            this.E = i + 1;
            return true;
        } else if (a(baseException)) {
            return true;
        } else {
            this.k.a(this, this.b, iVar, baseException);
            return false;
        }
    }

    public long c() {
        synchronized (this.k) {
            long j = this.u;
            long j2 = this.r;
            if (j2 < 0 || j <= j2) {
                return 0L;
            }
            return j - j2;
        }
    }

    private boolean a(BaseException baseException) {
        if (com.ss.android.socialbase.downloader.i.f.c(baseException)) {
            String str = this.b.f11887a;
            if (TextUtils.isEmpty(str) || !str.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS) || !this.m.isNeedHttpsToHttpRetry() || this.H) {
                return false;
            }
            this.H = true;
            l();
            return true;
        }
        return false;
    }

    public void c(boolean z) {
        this.K = z;
    }

    private a a(c cVar, InputStream inputStream) throws InterruptedException, BaseException, IOException {
        int i;
        a b = cVar.b();
        try {
            i = inputStream.read(b.f11875a);
            try {
                if (i != -1) {
                    b.c = i;
                    if (i == -1) {
                        cVar.a(b);
                    }
                    return b;
                }
                throw new BaseException(1073, "probe");
            } catch (Throwable th) {
                th = th;
                if (i == -1) {
                    cVar.a(b);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            i = -1;
        }
    }

    public boolean a(long j) {
        long j2 = this.t;
        if (j > 0 || j2 <= 0) {
            if (j <= j2 || j2 <= 0) {
                this.s = j;
                this.B = true;
                return true;
            }
            return false;
        }
        return false;
    }

    public void a() {
        q qVar = this.b;
        try {
            synchronized (this.k) {
                long c = c();
                if (c > 0) {
                    this.v += c;
                    qVar.a(c);
                }
                this.u = -1L;
            }
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z) {
        StringBuilder m1016super = Cgoto.m1016super("reconnect: threadIndex = ");
        m1016super.append(this.c);
        com.ss.android.socialbase.downloader.c.a.c("SegmentReader", m1016super.toString());
        synchronized (this) {
            this.z = z;
            this.y = true;
            this.B = true;
        }
        j();
        Thread thread = this.A;
        if (thread != null) {
            try {
                thread.interrupt();
            } catch (Throwable unused) {
            }
        }
    }

    public void a(Future future) {
        this.w = future;
    }

    public long a(long j, long j2) {
        com.ss.android.socialbase.downloader.i.e eVar = this.L;
        if (eVar == null) {
            return -1L;
        }
        return eVar.b(j, j2);
    }

    public long d() {
        return this.u;
    }
}
