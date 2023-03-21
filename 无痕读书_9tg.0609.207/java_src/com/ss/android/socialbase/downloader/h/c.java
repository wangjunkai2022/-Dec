package com.ss.android.socialbase.downloader.h;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import com.apk.Cgoto;
import com.ss.android.socialbase.downloader.depend.q;
import com.ss.android.socialbase.downloader.depend.r;
import com.ss.android.socialbase.downloader.depend.w;
import com.ss.android.socialbase.downloader.depend.x;
import com.ss.android.socialbase.downloader.downloader.j;
import com.ss.android.socialbase.downloader.downloader.s;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.f.k;
import com.ss.android.socialbase.downloader.f.n;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.model.b;
import com.ss.android.socialbase.downloader.network.i;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLHandshakeException;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class c implements f, Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final String f11891a = c.class.getSimpleName();
    public r A;
    public String E;
    public long G;
    public long H;
    public final com.ss.android.socialbase.downloader.g.a I;
    public Future b;
    public final DownloadTask c;
    public AtomicInteger e;
    public volatile com.ss.android.socialbase.downloader.downloader.e g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public final AtomicBoolean m;
    public final j o;
    public DownloadInfo p;
    public com.ss.android.socialbase.downloader.downloader.h q;
    public final com.ss.android.socialbase.downloader.downloader.h r;
    public com.ss.android.socialbase.downloader.downloader.g s;
    public final com.ss.android.socialbase.downloader.downloader.g t;
    public s u;
    public final com.ss.android.socialbase.downloader.downloader.f v;
    public volatile BaseException w;
    public i x;
    public com.ss.android.socialbase.downloader.network.g y;
    public w z;
    public volatile boolean d = false;
    public final ArrayList<b> f = new ArrayList<>();
    public volatile com.ss.android.socialbase.downloader.constants.h n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_NONE;
    public volatile int B = 5;
    public boolean C = false;
    public boolean D = false;
    public boolean F = false;
    public int J = 0;
    public volatile k K = null;

    public c(DownloadTask downloadTask, Handler handler) {
        this.c = downloadTask;
        if (downloadTask != null) {
            this.p = downloadTask.getDownloadInfo();
            this.q = downloadTask.getChunkStrategy();
            this.s = downloadTask.getChunkAdjustCalculator();
            this.z = downloadTask.getForbiddenHandler();
            this.A = downloadTask.getDiskSpaceHandler();
            this.u = a(downloadTask);
            this.I = com.ss.android.socialbase.downloader.g.a.a(this.p.getId());
        } else {
            this.I = com.ss.android.socialbase.downloader.g.a.c();
        }
        h();
        this.o = com.ss.android.socialbase.downloader.downloader.c.x();
        this.r = com.ss.android.socialbase.downloader.downloader.c.I();
        this.t = com.ss.android.socialbase.downloader.downloader.c.K();
        this.v = new com.ss.android.socialbase.downloader.downloader.f(downloadTask, handler);
        this.m = new AtomicBoolean(true);
    }

    private long A() {
        return this.u.a(this.p.getCurRetryTimeInTotal(), this.p.getTotalRetryCount());
    }

    private void B() throws com.ss.android.socialbase.downloader.exception.i, BaseException {
        com.ss.android.socialbase.downloader.impls.a C;
        int id = this.p.getId();
        int a2 = com.ss.android.socialbase.downloader.downloader.c.a(this.p);
        if (this.p.isDownloaded() && !this.p.isExpiredRedownload() && !this.F) {
            throw new BaseException((int) PointerIconCompat.TYPE_VERTICAL_TEXT, "file has downloaded");
        }
        DownloadInfo b = this.o.b(a2);
        if (b == null || (C = com.ss.android.socialbase.downloader.downloader.c.C()) == null || b.getId() == id || !b.equalsTask(this.p)) {
            return;
        }
        if (!C.a(b.getId())) {
            List<com.ss.android.socialbase.downloader.model.b> c = this.o.c(a2);
            com.ss.android.socialbase.downloader.i.f.a(this.p);
            this.o.f(a2);
            if (b.isBreakpointAvailable()) {
                this.p.copyFromCacheData(b, false);
                this.o.a(this.p);
                if (c != null) {
                    for (com.ss.android.socialbase.downloader.model.b bVar : c) {
                        bVar.b(id);
                        this.o.a(bVar);
                    }
                }
                throw new com.ss.android.socialbase.downloader.exception.i("retry task because id generator changed");
            }
            return;
        }
        this.o.f(id);
        throw new BaseException((int) InputDeviceCompat.SOURCE_GAMEPAD, "another same task is downloading");
    }

    private boolean C() {
        DownloadInfo downloadInfo = this.p;
        if (downloadInfo == null || downloadInfo.isExpiredRedownload()) {
            return false;
        }
        return (!this.i || this.p.getChunkCount() > 1) && !this.p.isChunkDowngradeRetryUsed() && this.j && !this.l;
    }

    private void D() throws BaseException {
        long j;
        int a2;
        try {
            j = com.ss.android.socialbase.downloader.i.f.d(this.p.getTempPath());
        } catch (BaseException unused) {
            j = 0;
        }
        String str = f11891a;
        StringBuilder m1016super = Cgoto.m1016super("checkSpaceOverflowInProgress: available = ");
        m1016super.append(com.ss.android.socialbase.downloader.i.f.a(j));
        m1016super.append("MB");
        com.ss.android.socialbase.downloader.c.a.c(str, m1016super.toString());
        if (j > 0) {
            long totalBytes = this.p.getTotalBytes() - this.p.getCurBytes();
            if (j < totalBytes && (a2 = com.ss.android.socialbase.downloader.g.a.a(this.p.getId()).a("space_fill_min_keep_mb", 100)) > 0) {
                long j2 = j - (a2 * DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL);
                String str2 = f11891a;
                StringBuilder m1020throw = Cgoto.m1020throw("checkSpaceOverflowInProgress: minKeep  = ", a2, "MB, canDownload = ");
                m1020throw.append(com.ss.android.socialbase.downloader.i.f.a(j2));
                m1020throw.append("MB");
                com.ss.android.socialbase.downloader.c.a.c(str2, m1020throw.toString());
                if (j2 > 0) {
                    this.G = j2 + DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL + this.p.getCurBytes();
                    return;
                } else {
                    this.G = 0L;
                    throw new com.ss.android.socialbase.downloader.exception.d(j, totalBytes);
                }
            }
        }
        this.G = 0L;
    }

    private void E() throws com.ss.android.socialbase.downloader.exception.f {
        if (this.p.isOnlyWifi() && !com.ss.android.socialbase.downloader.i.f.a(com.ss.android.socialbase.downloader.downloader.c.N(), "android.permission.ACCESS_NETWORK_STATE")) {
            throw new com.ss.android.socialbase.downloader.exception.f(PointerIconCompat.TYPE_ZOOM_OUT, String.format("download task need permission:%s", "android.permission.ACCESS_NETWORK_STATE"));
        }
        if (this.p.isDownloadWithWifiValid()) {
            if (!this.p.isPauseReserveWithWifiValid()) {
                throw new com.ss.android.socialbase.downloader.exception.e();
            }
            return;
        }
        throw new com.ss.android.socialbase.downloader.exception.c();
    }

    private void F() throws BaseException {
        if (!TextUtils.isEmpty(this.p.getSavePath())) {
            if (!TextUtils.isEmpty(this.p.getName())) {
                File file = new File(this.p.getSavePath());
                if (!file.exists()) {
                    boolean mkdirs = file.mkdirs();
                    if (mkdirs || file.exists()) {
                        return;
                    }
                    int i = 0;
                    if (com.ss.android.socialbase.downloader.g.a.a(this.p.getId()).a("opt_mkdir_failed", 0) == 1) {
                        while (!mkdirs) {
                            int i2 = i + 1;
                            if (i >= 3) {
                                break;
                            }
                            try {
                                Thread.sleep(10L);
                                mkdirs = file.mkdirs();
                                i = i2;
                            } catch (InterruptedException unused) {
                            }
                        }
                        if (mkdirs || file.exists()) {
                            return;
                        }
                        if (com.ss.android.socialbase.downloader.i.f.d(this.p.getSavePath()) < 16384) {
                            StringBuilder m1016super = Cgoto.m1016super("download savePath directory can not created:");
                            m1016super.append(this.p.getSavePath());
                            throw new BaseException(1006, m1016super.toString());
                        }
                        StringBuilder m1016super2 = Cgoto.m1016super("download savePath directory can not created:");
                        m1016super2.append(this.p.getSavePath());
                        throw new BaseException(1030, m1016super2.toString());
                    }
                    StringBuilder m1016super3 = Cgoto.m1016super("download savePath directory can not created:");
                    m1016super3.append(this.p.getSavePath());
                    throw new BaseException(1030, m1016super3.toString());
                } else if (file.isDirectory()) {
                    return;
                } else {
                    if (com.ss.android.socialbase.downloader.i.d.b(this.p)) {
                        file.delete();
                        if (file.mkdirs() || file.exists()) {
                            return;
                        }
                        StringBuilder m1016super4 = Cgoto.m1016super("download savePath is not directory:path=");
                        m1016super4.append(this.p.getSavePath());
                        throw new BaseException(1031, m1016super4.toString());
                    }
                    StringBuilder m1016super5 = Cgoto.m1016super("download savePath is not a directory:");
                    m1016super5.append(this.p.getSavePath());
                    throw new BaseException(1031, m1016super5.toString());
                }
            }
            throw new BaseException(1029, "download name can not be empty");
        }
        throw new BaseException(1028, "download savePath can not be empty");
    }

    private void G() {
        long f = com.ss.android.socialbase.downloader.i.f.f(this.p);
        long curBytes = this.p.getCurBytes();
        if (f != curBytes) {
            String str = f11891a;
            com.ss.android.socialbase.downloader.c.a.d(str, "checkTaskCanResume: offset = " + f + ", curBytes = " + curBytes);
        }
        this.p.setCurBytes(f);
        boolean z = f > 0;
        this.i = z;
        if (z || this.F) {
            return;
        }
        com.ss.android.socialbase.downloader.c.a.c(f11891a, "checkTaskCanResume: deleteAllDownloadFiles");
        this.o.d(this.p.getId());
        this.o.m(this.p.getId());
        com.ss.android.socialbase.downloader.i.f.a(this.p);
    }

    private void H() {
        String str = f11891a;
        StringBuilder m1016super = Cgoto.m1016super("clearCurrentDownloadData::");
        m1016super.append(Log.getStackTraceString(new Throwable()));
        com.ss.android.socialbase.downloader.c.a.d(str, m1016super.toString());
        try {
            this.o.d(this.p.getId());
            this.o.m(this.p.getId());
            com.ss.android.socialbase.downloader.i.f.a(this.p);
            this.i = false;
            this.p.resetDataForEtagEndure("");
            this.o.a(this.p);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void I() {
        try {
            Iterator it = ((ArrayList) this.f.clone()).iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (bVar != null) {
                    bVar.b();
                }
            }
        } catch (Throwable th) {
            String str = f11891a;
            StringBuilder m1016super = Cgoto.m1016super("cancelAllChunkRunnable: ");
            m1016super.append(th.toString());
            com.ss.android.socialbase.downloader.c.a.c(str, m1016super.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        com.ss.android.socialbase.downloader.impls.a C;
        if (v() || (C = com.ss.android.socialbase.downloader.downloader.c.C()) == null) {
            return;
        }
        C.l(this.p.getId());
    }

    private boolean K() {
        return false;
    }

    private void h() {
        DownloadInfo downloadInfo = this.p;
        if (downloadInfo == null) {
            return;
        }
        int retryCount = downloadInfo.getRetryCount() - this.p.getCurRetryTime();
        if (retryCount < 0) {
            retryCount = 0;
        }
        AtomicInteger atomicInteger = this.e;
        if (atomicInteger == null) {
            this.e = new AtomicInteger(retryCount);
        } else {
            atomicInteger.set(retryCount);
        }
    }

    private boolean i() {
        int status = this.p.getStatus();
        if (status == 1 || this.p.canSkipStatusHandler()) {
            return true;
        }
        if (status == -2 || status == -4) {
            return false;
        }
        b(new BaseException(1000, Cgoto.m1003implements("The download Task can't start, because its status is not prepare:", status)));
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f5, code lost:
        if (r9.I.a("fix_file_exist_update_download_info") != false) goto L80;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ab A[Catch: all -> 0x00ea, TryCatch #7 {all -> 0x00ea, blocks: (B:56:0x00a7, B:58:0x00ab, B:60:0x00af, B:73:0x00e9), top: B:86:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void j() throws com.ss.android.socialbase.downloader.exception.a {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.j():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005a A[LOOP:0: B:24:0x005a->B:55:0x005a, LOOP_START] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void k() {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.k():void");
    }

    private void l() {
        boolean z;
        List<com.ss.android.socialbase.downloader.model.b> c;
        try {
            this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_NONE;
            this.p.updateStartDownloadTime();
            this.p.resetRealStartDownloadTime();
            long currentTimeMillis = System.currentTimeMillis();
            this.p.setFirstSpeedTime(-1L);
            try {
                j();
                z = false;
            } catch (com.ss.android.socialbase.downloader.exception.a e) {
                String str = f11891a;
                com.ss.android.socialbase.downloader.c.a.b(str, "file exist " + e.a());
                this.E = e.a();
                z = true;
            }
            if (!this.C) {
                this.v.b();
            }
            this.C = false;
            if (v()) {
                return;
            }
            if (!TextUtils.isEmpty(this.E) && z) {
                if (this.p.isExpiredRedownload()) {
                    this.F = com.ss.android.socialbase.downloader.i.f.d(this.p);
                }
                if (!this.F) {
                    m();
                    return;
                }
            }
            while (!v()) {
                try {
                    try {
                        try {
                            F();
                            B();
                            E();
                            c = this.o.c(this.p.getId());
                            G();
                        } catch (com.ss.android.socialbase.downloader.exception.a unused) {
                            m();
                        }
                    } catch (BaseException e2) {
                        String str2 = f11891a;
                        com.ss.android.socialbase.downloader.c.a.d(str2, "downloadInner: baseException = " + e2);
                        if (this.n != com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                            if (e2.getErrorCode() != 1025 && e2.getErrorCode() != 1009) {
                                if (a(e2)) {
                                    if (com.ss.android.socialbase.downloader.i.f.a(e2)) {
                                        H();
                                    }
                                    if (a(e2, 0L) != com.ss.android.socialbase.downloader.exception.h.RETURN) {
                                        s();
                                    } else {
                                        s();
                                        return;
                                    }
                                } else {
                                    b(e2);
                                }
                            }
                            this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_RIGHT_NOW;
                            s();
                            return;
                        }
                    }
                } catch (com.ss.android.socialbase.downloader.exception.i e3) {
                    String str3 = f11891a;
                    com.ss.android.socialbase.downloader.c.a.d(str3, "downloadInner: retry throwable for " + e3.a());
                    if (this.n != com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                        if (this.e != null && this.e.get() > 0) {
                            this.p.updateCurRetryTime(this.e.decrementAndGet());
                            this.p.setStatus(5);
                        } else if (this.e != null) {
                            if (this.p.trySwitchToNextBackupUrl()) {
                                this.p.setStatus(5);
                                this.e.set(this.p.getRetryCount());
                                this.p.updateCurRetryTime(this.e.get());
                            } else {
                                b(new BaseException((int) PointerIconCompat.TYPE_ZOOM_IN, String.format("retry for Throwable, but retry Time %s all used, last error is %s", String.valueOf(this.p.getRetryCount()), e3.a())));
                            }
                        } else {
                            b(new BaseException(1043, "retry for Throwable, but retain retry time is NULL, last error is" + e3.a()));
                        }
                        s();
                    }
                } catch (Throwable th) {
                    String str4 = f11891a;
                    com.ss.android.socialbase.downloader.c.a.d(str4, "downloadInner: throwable =  " + th);
                    if (this.n != com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                        b(new BaseException(1045, th));
                    }
                }
                if (n()) {
                    com.ss.android.socialbase.downloader.c.a.c(f11891a, "downloadSegments return");
                    s();
                    return;
                }
                String connectionUrl = this.p.getConnectionUrl();
                if (v()) {
                    s();
                    return;
                }
                long e4 = this.i ? com.ss.android.socialbase.downloader.i.f.e(this.p) : 0L;
                com.ss.android.socialbase.downloader.model.b a2 = a(this.p, e4);
                List<com.ss.android.socialbase.downloader.model.c> a3 = a(a2);
                com.ss.android.socialbase.downloader.i.f.a(a3, this.p);
                com.ss.android.socialbase.downloader.i.f.b(a3, this.p);
                this.p.setPreconnectLevel(0);
                long currentTimeMillis2 = System.currentTimeMillis();
                try {
                    a(connectionUrl, a3, e4);
                    this.p.increaseAllConnectTime(System.currentTimeMillis() - currentTimeMillis2);
                    if (v()) {
                        s();
                        return;
                    }
                    long totalBytes = this.p.getTotalBytes();
                    a(totalBytes);
                    int a4 = a(totalBytes, c);
                    if (v()) {
                        s();
                        return;
                    } else if (a4 > 0) {
                        boolean z2 = a4 == 1;
                        this.h = z2;
                        if (z2) {
                            if (this.x == null) {
                                try {
                                    currentTimeMillis2 = System.currentTimeMillis();
                                    a(connectionUrl, a3);
                                    this.p.increaseAllConnectTime(System.currentTimeMillis() - currentTimeMillis2);
                                } finally {
                                }
                            }
                            if (v()) {
                                s();
                                return;
                            }
                            this.p.setFirstSpeedTime(System.currentTimeMillis() - currentTimeMillis);
                            o();
                            a(a2, connectionUrl, this.x);
                        } else {
                            if (!this.p.isNeedReuseFirstConnection()) {
                                r();
                            }
                            if (v()) {
                                s();
                                return;
                            }
                            o();
                            this.p.setFirstSpeedTime(System.currentTimeMillis() - currentTimeMillis);
                            if (this.i) {
                                a(a4, c);
                            } else {
                                a(totalBytes, a4);
                            }
                        }
                        s();
                        return;
                    } else {
                        throw new BaseException(1032, "chunkCount is 0");
                    }
                } finally {
                }
            }
        } finally {
            p();
        }
    }

    private void m() {
        com.ss.android.socialbase.downloader.c.a.b(f11891a, "finishWithFileExist");
        if (com.ss.android.socialbase.downloader.g.a.c().b("fix_end_for_file_exist_error", true)) {
            if (this.E.equals(this.p.getName())) {
                this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_RIGHT_NOW;
            } else {
                this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_FOR_FILE_EXIST;
            }
        } else if (this.E.equals(this.p.getTargetFilePath())) {
            this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_RIGHT_NOW;
        } else {
            this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_FOR_FILE_EXIST;
        }
    }

    private boolean n() throws BaseException, InterruptedException {
        if (!this.p.isExpiredRedownload() && this.p.getChunkCount() == 1 && this.p.getThrottleNetSpeed() <= 0) {
            JSONObject d = com.ss.android.socialbase.downloader.g.a.a(this.p.getId()).d("segment_config");
            List<com.ss.android.socialbase.downloader.f.i> n = this.o.n(this.p.getId());
            if (this.p.getCurBytes() > 0) {
                if (n == null || n.isEmpty()) {
                    return false;
                }
                if (d == null) {
                    d = new JSONObject();
                }
            }
            if (d == null) {
                return false;
            }
            this.K = new k(this.p, n.a(d), this);
            if (v()) {
                com.ss.android.socialbase.downloader.c.a.c(f11891a, "downloadSegments: is stopped by user");
                if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) {
                    this.K.a();
                } else {
                    this.K.b();
                }
                return true;
            }
            return this.K.a(n);
        }
        return false;
    }

    private void o() {
        if (com.ss.android.socialbase.downloader.g.a.a(this.p.getId()).a("reset_retain_retry_times", 0) != 1 || this.J >= 3) {
            return;
        }
        this.e.set(this.p.isBackUpUrlUsed() ? this.p.getBackUpUrlRetryCount() : this.p.getRetryCount());
        this.J++;
    }

    private void p() {
        boolean z;
        boolean z2;
        String str = f11891a;
        StringBuilder m1016super = Cgoto.m1016super("endDownloadRunnable::runStatus=");
        m1016super.append(this.n);
        com.ss.android.socialbase.downloader.c.a.b(str, m1016super.toString());
        boolean z3 = (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE || this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) ? false : true;
        try {
            z = w();
            z2 = false;
        } catch (Exception e) {
            if (e instanceof BaseException) {
                this.v.a((BaseException) e);
            } else {
                this.v.a(new BaseException(1046, e));
            }
            z = true;
            z2 = true;
        }
        if (!z && !z2) {
            this.C = true;
            com.ss.android.socialbase.downloader.c.a.b(f11891a, "jump to restart");
            return;
        }
        this.m.set(false);
        if (z3) {
            try {
                com.ss.android.socialbase.downloader.impls.a C = com.ss.android.socialbase.downloader.downloader.c.C();
                if (C != null) {
                    C.a(this);
                }
            } catch (Throwable th) {
                th.printStackTrace();
                x monitorDepend = this.c.getMonitorDepend();
                DownloadInfo downloadInfo = this.p;
                BaseException baseException = new BaseException((int) PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, com.ss.android.socialbase.downloader.i.f.b(th, "removeDownloadRunnable"));
                DownloadInfo downloadInfo2 = this.p;
                com.ss.android.socialbase.downloader.d.a.a(monitorDepend, downloadInfo, baseException, downloadInfo2 != null ? downloadInfo2.getStatus() : 0);
            }
        }
    }

    private void q() {
        com.ss.android.socialbase.downloader.network.g gVar = this.y;
        if (gVar != null) {
            gVar.c();
            this.y = null;
        }
    }

    private void r() {
        i iVar = this.x;
        if (iVar != null) {
            iVar.d();
            this.x = null;
        }
    }

    private void s() {
        q();
        r();
    }

    private void t() throws BaseException {
        if (this.g != null) {
            if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) {
                this.p.setStatus(-4);
                this.g.c();
            } else if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                this.p.setStatus(-2);
                this.g.b();
            } else {
                this.g.d();
            }
        }
    }

    private boolean u() {
        return this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED || this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE;
    }

    private boolean v() {
        if (u() || this.p.getStatus() == -2) {
            if (u()) {
                return true;
            }
            if (this.p.getStatus() == -2) {
                this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE;
                return true;
            } else if (this.p.getStatus() == -4) {
                this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED;
                return true;
            } else {
                return true;
            }
        }
        return false;
    }

    private boolean w() {
        if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_ERROR) {
            this.v.a(this.w);
        } else if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) {
            this.v.c();
        } else if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
            this.v.d();
        } else if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_RIGHT_NOW) {
            try {
                this.v.g();
            } catch (BaseException e) {
                this.v.a(e);
            }
        } else if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_END_FOR_FILE_EXIST) {
            try {
                this.v.a(this.E);
            } catch (BaseException e2) {
                this.v.a(e2);
            }
        } else if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET) {
            this.v.a(this.w, false);
            return false;
        } else if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER) {
            return true;
        } else {
            if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY && !x()) {
                com.ss.android.socialbase.downloader.c.a.b(f11891a, "doTaskStatusHandle retryDelay");
                z();
                return this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY;
            }
            try {
                if (!y()) {
                    return false;
                }
                this.v.f();
                com.ss.android.socialbase.downloader.impls.r.a().d();
            } catch (Throwable th) {
                b(new BaseException((int) PointerIconCompat.TYPE_TEXT, com.ss.android.socialbase.downloader.i.f.b(th, "doTaskStatusHandle onComplete")));
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean x() {
        /*
            r7 = this;
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r7.p
            int r0 = r0.getChunkCount()
            r1 = 0
            r2 = 1
            if (r0 > r2) goto L28
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r7.p
            long r3 = r0.getCurBytes()
            r5 = 0
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 <= 0) goto L27
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r7.p
            long r3 = r0.getCurBytes()
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r7.p
            long r5 = r0.getTotalBytes()
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 != 0) goto L27
            return r2
        L27:
            return r1
        L28:
            com.ss.android.socialbase.downloader.downloader.j r0 = r7.o
            com.ss.android.socialbase.downloader.model.DownloadInfo r3 = r7.p
            int r3 = r3.getId()
            java.util.List r0 = r0.c(r3)
            if (r0 == 0) goto L57
            int r3 = r0.size()
            if (r3 > r2) goto L3d
            goto L57
        L3d:
            java.util.Iterator r0 = r0.iterator()
        L41:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L56
            java.lang.Object r3 = r0.next()
            com.ss.android.socialbase.downloader.model.b r3 = (com.ss.android.socialbase.downloader.model.b) r3
            if (r3 == 0) goto L55
            boolean r3 = r3.i()
            if (r3 != 0) goto L41
        L55:
            return r1
        L56:
            return r2
        L57:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.x():boolean");
    }

    private boolean y() {
        if (this.p.isChunked()) {
            DownloadInfo downloadInfo = this.p;
            downloadInfo.setTotalBytes(downloadInfo.getCurBytes());
        }
        String str = f11891a;
        StringBuilder m1016super = Cgoto.m1016super("checkCompletedByteValid: downloadInfo.getCurBytes() = ");
        m1016super.append(this.p.getCurBytes());
        m1016super.append(",  downloadInfo.getTotalBytes() = ");
        m1016super.append(this.p.getTotalBytes());
        com.ss.android.socialbase.downloader.c.a.c(str, m1016super.toString());
        if (this.p.getCurBytes() > 0) {
            if (this.p.isIgnoreDataVerify()) {
                return true;
            }
            if (this.p.getTotalBytes() > 0 && this.p.getCurBytes() == this.p.getTotalBytes()) {
                return true;
            }
        }
        this.p.setByteInvalidRetryStatus(com.ss.android.socialbase.downloader.constants.b.BYTE_INVALID_RETRY_STATUS_RESTART);
        this.p.reset();
        this.o.a(this.p);
        this.o.d(this.p.getId());
        this.o.m(this.p.getId());
        com.ss.android.socialbase.downloader.i.f.a(this.p);
        return false;
    }

    private void z() {
        this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_NONE;
    }

    public void b() {
        this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED;
        if (this.K != null) {
            this.K.a();
        }
        if (this.g != null) {
            this.g.c();
        }
        if (this.K == null && this.g == null) {
            s();
            this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED;
            p();
        }
        I();
    }

    public DownloadTask c() {
        return this.c;
    }

    public boolean d() {
        return this.m.get();
    }

    public int e() {
        DownloadInfo downloadInfo = this.p;
        if (downloadInfo != null) {
            return downloadInfo.getId();
        }
        return 0;
    }

    public void f() {
        this.H = System.currentTimeMillis();
        this.v.a();
    }

    public Future g() {
        return this.b;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.ss.android.socialbase.downloader.downloader.c.a(this.c, 3);
        try {
            com.ss.android.socialbase.downloader.network.b.a().b();
            k();
            com.ss.android.socialbase.downloader.network.b.a().c();
            com.ss.android.socialbase.downloader.downloader.c.b(this.c, 3);
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.network.b.a().c();
            throw th;
        }
    }

    private boolean d(BaseException baseException) {
        AtomicInteger atomicInteger = this.e;
        boolean z = true;
        if (atomicInteger != null) {
            if (atomicInteger.get() <= 0 || (baseException != null && baseException.getErrorCode() == 1070)) {
                if (this.p.trySwitchToNextBackupUrl()) {
                    this.e.set(this.p.getBackUpUrlRetryCount());
                    this.p.updateCurRetryTime(this.e.get());
                } else if (baseException != null && ((baseException.getErrorCode() == 1011 || (baseException.getCause() != null && (baseException.getCause() instanceof SSLHandshakeException))) && this.p.canReplaceHttpForRetry())) {
                    this.e.set(this.p.getRetryCount());
                    this.p.updateCurRetryTime(this.e.get());
                    this.p.setHttpsToHttpRetryUsed(true);
                } else {
                    b(new BaseException(baseException.getErrorCode(), String.format("retry for exception, but current retry time : %s , retry Time %s all used, last error is %s", String.valueOf(this.e), String.valueOf(this.p.getRetryCount()), baseException.getErrorMessage())));
                    return true;
                }
                z = false;
            }
            if (this.n != com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY && z) {
                this.p.updateCurRetryTime(this.e.decrementAndGet());
            }
            return false;
        }
        StringBuilder m1016super = Cgoto.m1016super("retry for exception, but retain retry time is null, last error is :");
        m1016super.append(baseException.getErrorMessage());
        b(new BaseException(1043, m1016super.toString()));
        return true;
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public void c(BaseException baseException) {
        DownloadInfo downloadInfo = this.p;
        if (downloadInfo != null) {
            downloadInfo.setChunkDowngradeRetryUsed(true);
        }
        a(baseException, false);
    }

    public void a() {
        this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE;
        if (this.K != null) {
            this.K.b();
        }
        if (this.g != null) {
            this.g.b();
        }
        if (this.K == null && this.g == null) {
            s();
            this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE;
            p();
        }
        try {
            Iterator it = ((ArrayList) this.f.clone()).iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (bVar != null) {
                    bVar.a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void c(long j) {
        i iVar = this.x;
        if (iVar != null && (iVar instanceof com.ss.android.socialbase.downloader.network.a)) {
            try {
                ((com.ss.android.socialbase.downloader.network.a) iVar).a(j);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void b(String str, List<com.ss.android.socialbase.downloader.model.c> list, long j) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        com.ss.android.socialbase.downloader.network.a.c a2;
        boolean z = true;
        if (this.p.getChunkCount() == 1 && (a2 = com.ss.android.socialbase.downloader.network.a.a.a().a(str, list)) != null) {
            this.y = a2;
            this.p.setPreconnectLevel(1);
        }
        if (this.y == null && !this.D && this.p.isHeadConnectionAvailable()) {
            try {
                int b = this.I.b("net_lib_strategy");
                if (this.I.a("monitor_download_connect", 0) <= 0) {
                    z = false;
                }
                this.y = com.ss.android.socialbase.downloader.downloader.c.a(str, list, b, z, this.p);
            } catch (Throwable th) {
                this.p.setHeadConnectionException(com.ss.android.socialbase.downloader.i.f.j(th));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
        if (r9 <= 0) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(long r7, java.util.List<com.ss.android.socialbase.downloader.model.b> r9) {
        /*
            r6 = this;
            boolean r0 = r6.C()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L5e
            boolean r0 = r6.i
            if (r0 == 0) goto L1a
            if (r9 == 0) goto L13
            int r9 = r9.size()
            goto L5c
        L13:
            com.ss.android.socialbase.downloader.model.DownloadInfo r9 = r6.p
            int r9 = r9.getChunkCount()
            goto L5c
        L1a:
            com.ss.android.socialbase.downloader.downloader.h r9 = r6.q
            if (r9 == 0) goto L23
            int r9 = r9.a(r7)
            goto L29
        L23:
            com.ss.android.socialbase.downloader.downloader.h r9 = r6.r
            int r9 = r9.a(r7)
        L29:
            com.ss.android.socialbase.downloader.network.k r0 = com.ss.android.socialbase.downloader.network.k.a()
            com.ss.android.socialbase.downloader.network.l r0 = r0.b()
            java.lang.String r3 = com.ss.android.socialbase.downloader.h.c.f11891a
            java.lang.Object[] r4 = new java.lang.Object[r2]
            java.lang.String r5 = r0.name()
            r4[r1] = r5
            java.lang.String r5 = "NetworkQuality is : %s"
            java.lang.String r4 = java.lang.String.format(r5, r4)
            com.ss.android.socialbase.downloader.c.a.b(r3, r4)
            com.ss.android.socialbase.downloader.model.DownloadInfo r3 = r6.p
            java.lang.String r4 = r0.name()
            r3.setNetworkQuality(r4)
            com.ss.android.socialbase.downloader.downloader.g r3 = r6.s
            if (r3 == 0) goto L56
            int r9 = r3.a(r9, r0)
            goto L5c
        L56:
            com.ss.android.socialbase.downloader.downloader.g r3 = r6.t
            int r9 = r3.a(r9, r0)
        L5c:
            if (r9 > 0) goto L5f
        L5e:
            r9 = 1
        L5f:
            boolean r0 = com.ss.android.socialbase.downloader.c.a.a()
            if (r0 == 0) goto L88
            java.lang.String r0 = com.ss.android.socialbase.downloader.h.c.f11891a
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r4 = java.lang.String.valueOf(r9)
            r3[r1] = r4
            com.ss.android.socialbase.downloader.model.DownloadInfo r1 = r6.p
            java.lang.String r1 = r1.getName()
            r3[r2] = r1
            r1 = 2
            java.lang.String r7 = java.lang.String.valueOf(r7)
            r3[r1] = r7
            java.lang.String r7 = "chunk count : %s for %s contentLen:%s"
            java.lang.String r7 = java.lang.String.format(r7, r3)
            com.ss.android.socialbase.downloader.c.a.b(r0, r7)
        L88:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.a(long, java.util.List):int");
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public boolean b(long j) throws BaseException {
        if (this.G > 0 && this.p.getCurBytes() > this.G) {
            D();
        }
        return this.v.a(j);
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public void b(BaseException baseException) {
        String str = f11891a;
        StringBuilder m1016super = Cgoto.m1016super("onError:");
        m1016super.append(baseException.getMessage());
        com.ss.android.socialbase.downloader.c.a.b(str, m1016super.toString());
        this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_ERROR;
        this.w = baseException;
        I();
    }

    private void a(String str, List<com.ss.android.socialbase.downloader.model.c> list, long j) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        b(str, list, j);
        com.ss.android.socialbase.downloader.network.g gVar = this.y;
        if (gVar != null) {
            try {
                a(str, gVar, j);
            } catch (Throwable unused) {
                this.D = true;
            }
        }
        if (this.y == null || this.D) {
            a(str, list);
            a(str, this.x, j);
        }
    }

    private void a(String str, List<com.ss.android.socialbase.downloader.model.c> list) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        i iVar;
        if (this.x != null) {
            return;
        }
        com.ss.android.socialbase.downloader.network.a.d b = this.p.getChunkCount() == 1 ? com.ss.android.socialbase.downloader.network.a.a.a().b(str, list) : null;
        try {
            if (b != null) {
                a(this.x);
                this.p.setPreconnectLevel(2);
                this.x = b;
            } else {
                try {
                    iVar = com.ss.android.socialbase.downloader.downloader.c.a(this.p.isNeedDefaultHttpServiceBackUp(), this.p.getMaxBytes(), str, null, list, this.I.b("net_lib_strategy"), this.I.a("monitor_download_connect", 0) > 0, this.p);
                    this.x = iVar;
                } catch (BaseException e) {
                    throw e;
                } catch (Throwable th) {
                    if (this.p.isExpiredRedownload() && com.ss.android.socialbase.downloader.i.f.g(th) && com.ss.android.socialbase.downloader.i.f.c(list)) {
                        com.ss.android.socialbase.downloader.c.a.b(f11891a, "dcache=execepiton responseCode=304 lastModified not changed, use local file.. old cacheControl=" + this.p.getCacheControl());
                        long i = com.ss.android.socialbase.downloader.i.f.i(this.p.getCacheControl());
                        if (i <= 0) {
                            i = com.ss.android.socialbase.downloader.g.a.a(this.p.getId()).a("default_304_max_age", 300);
                        }
                        this.p.setCacheExpiredTime((i * 1000) + System.currentTimeMillis());
                        throw new com.ss.android.socialbase.downloader.exception.a(this.E);
                    }
                    if (com.ss.android.socialbase.downloader.i.f.f(th)) {
                        a("", "http code 416");
                    } else if (com.ss.android.socialbase.downloader.i.f.e(th)) {
                        a("", "http code 412");
                    } else {
                        com.ss.android.socialbase.downloader.i.f.a(th, "CreateFirstConnection");
                    }
                    iVar = this.x;
                }
                a(iVar);
            }
            if (this.x == null) {
                throw new BaseException(1022, new IOException("download can't continue, firstConnection is null"));
            }
        } catch (Throwable th2) {
            a(this.x);
            throw th2;
        }
    }

    public static com.ss.android.socialbase.downloader.model.b a(DownloadInfo downloadInfo, long j) {
        return new b.a(downloadInfo.getId()).a(-1).a(0L).e(j).b(j).c(0L).d(downloadInfo.getTotalBytes() - j).a();
    }

    private List<com.ss.android.socialbase.downloader.model.c> a(com.ss.android.socialbase.downloader.model.b bVar) {
        List<com.ss.android.socialbase.downloader.model.c> a2 = com.ss.android.socialbase.downloader.i.f.a(this.p.getExtraHeaders(), this.p.geteTag(), bVar);
        if (this.p.isExpiredRedownload() && this.F && this.p.getLastModified() != null) {
            a2.add(new com.ss.android.socialbase.downloader.model.c("if-modified-since", this.p.getLastModified()));
            a2.add(new com.ss.android.socialbase.downloader.model.c("download-tc21-1-15", "download-tc21-1-15"));
            String str = f11891a;
            StringBuilder m1016super = Cgoto.m1016super("dcache::add head IF_MODIFIED_SINCE=");
            m1016super.append(this.p.getLastModified());
            com.ss.android.socialbase.downloader.c.a.b(str, m1016super.toString());
        }
        return a2;
    }

    private void a(int i, List<com.ss.android.socialbase.downloader.model.b> list) throws BaseException {
        if (list.size() == i) {
            a(list, this.p.getTotalBytes());
            return;
        }
        throw new BaseException(1033, new IllegalArgumentException());
    }

    private void a(long j, int i) throws BaseException {
        long j2 = j / i;
        int id = this.p.getId();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        long j3 = 0;
        while (i2 < i) {
            com.ss.android.socialbase.downloader.model.b a2 = new b.a(id).a(i2).a(j3).e(j3).b(j3).c(i2 == i + (-1) ? 0L : (j3 + j2) - 1).a();
            arrayList.add(a2);
            this.o.a(a2);
            j3 += j2;
            i2++;
        }
        this.p.setChunkCount(i);
        this.o.a(id, i);
        a(arrayList, j);
    }

    private void a(List<com.ss.android.socialbase.downloader.model.b> list, long j) throws BaseException {
        long p;
        for (com.ss.android.socialbase.downloader.model.b bVar : list) {
            if (bVar != null) {
                if (bVar.p() == 0) {
                    p = j - bVar.n();
                } else {
                    p = (bVar.p() - bVar.n()) + 1;
                }
                if (p > 0) {
                    bVar.a(p);
                    if (this.p.isNeedReuseFirstConnection() && this.x != null && (!this.p.isHeadConnectionAvailable() || this.D)) {
                        if (bVar.s() == 0) {
                            this.f.add(new b(bVar, this.c, this.x, this));
                        } else if (bVar.s() > 0) {
                            this.f.add(new b(bVar, this.c, this));
                        }
                    } else {
                        this.f.add(new b(bVar, this.c, this));
                    }
                }
            }
        }
        if (com.ss.android.socialbase.downloader.i.a.a(64)) {
            ArrayList arrayList = new ArrayList(this.f.size());
            Iterator<b> it = this.f.iterator();
            while (it.hasNext()) {
                b next = it.next();
                if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) {
                    next.b();
                } else if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                    next.a();
                } else {
                    arrayList.add(next);
                }
            }
            try {
                List<Future> d = com.ss.android.socialbase.downloader.impls.e.d(arrayList);
                for (Runnable runnable = (Runnable) arrayList.remove(0); runnable != null; runnable = com.ss.android.socialbase.downloader.impls.e.e(d)) {
                    if (v()) {
                        return;
                    }
                    runnable.run();
                }
                if (d == null || d.isEmpty()) {
                    return;
                }
                for (Future future : d) {
                    if (future != null && !future.isDone()) {
                        try {
                            future.get();
                        } catch (Throwable unused) {
                        }
                    }
                }
                return;
            } catch (Throwable unused2) {
                return;
            }
        }
        ArrayList arrayList2 = new ArrayList(this.f.size());
        Iterator<b> it2 = this.f.iterator();
        while (it2.hasNext()) {
            b next2 = it2.next();
            if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_CANCELED) {
                next2.b();
            } else if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_PAUSE) {
                next2.a();
            } else {
                arrayList2.add(Executors.callable(next2));
            }
        }
        if (v()) {
            return;
        }
        try {
            com.ss.android.socialbase.downloader.impls.e.c(arrayList2);
        } catch (InterruptedException e) {
            throw new BaseException((int) PointerIconCompat.TYPE_GRAB, e);
        }
    }

    private void a(com.ss.android.socialbase.downloader.model.b bVar, String str, i iVar) throws BaseException {
        bVar.a(this.p.getTotalBytes() - bVar.n());
        this.p.setChunkCount(1);
        this.o.a(this.p.getId(), 1);
        this.g = new com.ss.android.socialbase.downloader.downloader.e(this.p, str, iVar, bVar, this);
        t();
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public void a(long j) throws BaseException {
        long j2;
        String tempPath = this.p.getTempPath();
        String tempName = this.p.getTempName();
        if (com.ss.android.socialbase.downloader.i.f.b(j)) {
            return;
        }
        com.ss.android.socialbase.downloader.model.e a2 = com.ss.android.socialbase.downloader.i.f.a(this.p, tempPath, tempName, -1);
        try {
            long length = new File(tempPath, tempName).length();
            long j3 = j - length;
            long d = com.ss.android.socialbase.downloader.i.f.d(tempPath);
            com.ss.android.socialbase.downloader.g.a a3 = com.ss.android.socialbase.downloader.g.a.a(this.p.getId());
            if (a3.a("space_fill_part_download", 0) == 1) {
                this.G = 0L;
                if (j3 <= 0) {
                    j3 = this.p.getTotalBytes() - this.p.getCurBytes();
                }
                if (d < j3) {
                    String str = f11891a;
                    com.ss.android.socialbase.downloader.c.a.d(str, "checkSpaceOverflow: contentLength = " + com.ss.android.socialbase.downloader.i.f.a(j) + "MB, downloaded = " + com.ss.android.socialbase.downloader.i.f.a(length) + "MB, required = " + com.ss.android.socialbase.downloader.i.f.a(j3) + "MB, available = " + com.ss.android.socialbase.downloader.i.f.a(d) + "MB");
                    int i = (d > 0L ? 1 : (d == 0L ? 0 : -1));
                    if (i > 0) {
                        int a4 = a3.a("space_fill_min_keep_mb", 100);
                        if (a4 > 0) {
                            j2 = d - (a4 * DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL);
                            String str2 = f11891a;
                            com.ss.android.socialbase.downloader.c.a.d(str2, "checkSpaceOverflow: minKeep = " + a4 + "MB, canDownload = " + com.ss.android.socialbase.downloader.i.f.a(j2) + "MB");
                            if (j2 > 0) {
                                this.G = this.p.getCurBytes() + j2;
                            } else {
                                throw new com.ss.android.socialbase.downloader.exception.d(d, j3);
                            }
                        } else {
                            j2 = d;
                        }
                        if (length < j) {
                            if (j2 + length > j) {
                            }
                            a2.b(j);
                            com.ss.android.socialbase.downloader.i.f.a(a2);
                        }
                    } else if (a3.a("download_when_space_negative", 0) != 1) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("availableSpace ");
                        sb.append(i == 0 ? "=" : "<");
                        sb.append(" 0");
                        throw new BaseException(1052, sb.toString());
                    } else {
                        a2.b(j);
                        com.ss.android.socialbase.downloader.i.f.a(a2);
                    }
                }
            } else {
                int i2 = (d > 0L ? 1 : (d == 0L ? 0 : -1));
                if (i2 <= 0) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("availableSpace ");
                    sb2.append(i2 == 0 ? "=" : "<");
                    sb2.append(" 0");
                    throw new BaseException(1052, sb2.toString());
                } else if (d < j3) {
                    throw new com.ss.android.socialbase.downloader.exception.d(d, j3);
                }
            }
            a2.b(j);
            com.ss.android.socialbase.downloader.i.f.a(a2);
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.i.f.a(a2);
            throw th;
        }
    }

    private boolean a(int i, String str, String str2) {
        if (i == 412) {
            return true;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.equals(str2) || !(this.k || this.j)) {
            return (i == 201 || i == 416) && this.p.getCurBytes() > 0;
        }
        return true;
    }

    private void a(String str, String str2) throws com.ss.android.socialbase.downloader.exception.i {
        this.o.d(this.p.getId());
        this.o.m(this.p.getId());
        com.ss.android.socialbase.downloader.i.f.a(this.p);
        this.i = false;
        this.p.resetDataForEtagEndure(str);
        this.o.a(this.p);
        throw new com.ss.android.socialbase.downloader.exception.i(str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x013b, code lost:
        com.ss.android.socialbase.downloader.i.f.a(r19.p);
     */
    @Override // com.ss.android.socialbase.downloader.h.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r20, com.ss.android.socialbase.downloader.network.g r21, long r22) throws com.ss.android.socialbase.downloader.exception.BaseException, com.ss.android.socialbase.downloader.exception.i {
        /*
            Method dump skipped, instructions count: 811
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.a(java.lang.String, com.ss.android.socialbase.downloader.network.g, long):void");
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public void a(b bVar) {
        if (this.h) {
            return;
        }
        synchronized (this) {
            this.f.remove(bVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public boolean a(BaseException baseException) {
        if (this.K == null || !com.ss.android.socialbase.downloader.i.f.i(baseException) || this.e.get() >= this.p.getRetryCount()) {
            if (com.ss.android.socialbase.downloader.i.f.b(baseException)) {
                if (this.h && !this.d) {
                    com.ss.android.socialbase.downloader.i.f.a(this.p);
                    this.d = true;
                }
                return true;
            }
            AtomicInteger atomicInteger = this.e;
            if ((atomicInteger == null || atomicInteger.get() <= 0) && !this.p.hasNextBackupUrl()) {
                if (baseException == null) {
                    return false;
                }
                if ((baseException.getErrorCode() != 1011 && (baseException.getCause() == null || !(baseException.getCause() instanceof SSLHandshakeException))) || !this.p.canReplaceHttpForRetry()) {
                    return false;
                }
            }
            return !(baseException instanceof com.ss.android.socialbase.downloader.exception.f);
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public void a(BaseException baseException, boolean z) {
        com.ss.android.socialbase.downloader.c.a.b(f11891a, "onAllChunkRetryWithReset");
        this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET;
        this.w = baseException;
        I();
        if (z ? d(baseException) : false) {
            return;
        }
        H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.p.setForbiddenBackupUrls(list, this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER);
        com.ss.android.socialbase.downloader.impls.a C = com.ss.android.socialbase.downloader.downloader.c.C();
        if (C != null) {
            C.l(this.p.getId());
        }
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public com.ss.android.socialbase.downloader.exception.h a(com.ss.android.socialbase.downloader.model.b bVar, BaseException baseException, long j) {
        if (u()) {
            return com.ss.android.socialbase.downloader.exception.h.RETURN;
        }
        if (baseException != null && (baseException.getErrorCode() == 1047 || com.ss.android.socialbase.downloader.i.f.h(baseException))) {
            return a(baseException, j);
        }
        this.w = baseException;
        this.p.increaseCurBytes(-j);
        this.o.a(this.p);
        if (d(baseException)) {
            return com.ss.android.socialbase.downloader.exception.h.RETURN;
        }
        this.v.a(bVar, baseException, this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY);
        if (this.n != com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY && this.p.isNeedRetryDelay()) {
            long A = A();
            if (A > 0) {
                String str = f11891a;
                com.ss.android.socialbase.downloader.c.a.c(str, "onSingleChunkRetry with delay time " + A);
                try {
                    Thread.sleep(A);
                } catch (Throwable th) {
                    String str2 = f11891a;
                    StringBuilder m1016super = Cgoto.m1016super("onSingleChunkRetry:");
                    m1016super.append(th.getMessage());
                    com.ss.android.socialbase.downloader.c.a.d(str2, m1016super.toString());
                }
            }
        }
        return com.ss.android.socialbase.downloader.exception.h.CONTINUE;
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public com.ss.android.socialbase.downloader.exception.h a(BaseException baseException, long j) {
        long totalBytes;
        long j2;
        boolean z;
        this.w = baseException;
        this.p.increaseCurBytes(-j);
        this.o.a(this.p);
        if (u()) {
            return com.ss.android.socialbase.downloader.exception.h.RETURN;
        }
        if (baseException != null && baseException.getErrorCode() == 1047) {
            if (this.z != null && !this.p.isForbiddenRetryed()) {
                com.ss.android.socialbase.downloader.depend.b bVar = new com.ss.android.socialbase.downloader.depend.b() { // from class: com.ss.android.socialbase.downloader.h.c.1
                    @Override // com.ss.android.socialbase.downloader.depend.b, com.ss.android.socialbase.downloader.depend.v
                    public void a(List<String> list) {
                        super.a(list);
                        c.this.a(list);
                    }
                };
                boolean a2 = this.z.a(bVar);
                this.p.setForbiddenRetryed();
                if (a2) {
                    if (!bVar.a()) {
                        I();
                        this.v.h();
                        this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER;
                        return com.ss.android.socialbase.downloader.exception.h.RETURN;
                    }
                    z = true;
                }
            } else if (d(baseException)) {
                return com.ss.android.socialbase.downloader.exception.h.RETURN;
            }
            z = false;
        } else if (com.ss.android.socialbase.downloader.i.f.h(baseException)) {
            if (this.A == null) {
                b(baseException);
                return com.ss.android.socialbase.downloader.exception.h.RETURN;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            q qVar = new q() { // from class: com.ss.android.socialbase.downloader.h.c.2
                @Override // com.ss.android.socialbase.downloader.depend.q
                public void a() {
                    synchronized (c.this) {
                        atomicBoolean.set(true);
                        c.this.J();
                    }
                }
            };
            if (baseException instanceof com.ss.android.socialbase.downloader.exception.d) {
                com.ss.android.socialbase.downloader.exception.d dVar = (com.ss.android.socialbase.downloader.exception.d) baseException;
                j2 = dVar.a();
                totalBytes = dVar.b();
            } else {
                totalBytes = this.p.getTotalBytes();
                j2 = -1;
            }
            synchronized (this) {
                if (this.A.a(j2, totalBytes, qVar)) {
                    if (!com.ss.android.socialbase.downloader.g.a.a(this.p.getId()).b("not_delete_when_clean_space", false)) {
                        y();
                    }
                    if (!atomicBoolean.get()) {
                        if (this.n != com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER) {
                            this.n = com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER;
                            I();
                            this.v.h();
                        }
                        return com.ss.android.socialbase.downloader.exception.h.RETURN;
                    }
                    if (d(baseException)) {
                        return com.ss.android.socialbase.downloader.exception.h.RETURN;
                    }
                    z = true;
                } else if (this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_WAITING_ASYNC_HANDLER) {
                    return com.ss.android.socialbase.downloader.exception.h.RETURN;
                } else {
                    b(baseException);
                    return com.ss.android.socialbase.downloader.exception.h.RETURN;
                }
            }
        } else {
            if (d(baseException)) {
                return com.ss.android.socialbase.downloader.exception.h.RETURN;
            }
            z = false;
        }
        if (!z && K()) {
            I();
        }
        this.v.a(baseException, this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY);
        return this.n == com.ss.android.socialbase.downloader.constants.h.RUN_STATUS_RETRY_DELAY ? com.ss.android.socialbase.downloader.exception.h.RETURN : com.ss.android.socialbase.downloader.exception.h.CONTINUE;
    }

    @Override // com.ss.android.socialbase.downloader.h.f
    public synchronized com.ss.android.socialbase.downloader.model.b a(int i) {
        com.ss.android.socialbase.downloader.model.b a2;
        if (this.p.getChunkCount() < 2) {
            return null;
        }
        List<com.ss.android.socialbase.downloader.model.b> c = this.o.c(this.p.getId());
        if (c != null && !c.isEmpty()) {
            for (int i2 = 0; i2 < c.size(); i2++) {
                com.ss.android.socialbase.downloader.model.b bVar = c.get(i2);
                if (bVar != null && (a2 = a(bVar, i)) != null) {
                    return a2;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001d  */
    @Override // com.ss.android.socialbase.downloader.h.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.ss.android.socialbase.downloader.network.g r2) {
        /*
            r1 = this;
            if (r2 == 0) goto L1a
            int r2 = r2.b()     // Catch: java.lang.Throwable -> L16
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r1.p     // Catch: java.lang.Throwable -> L16
            r0.setHttpStatusCode(r2)     // Catch: java.lang.Throwable -> L16
            com.ss.android.socialbase.downloader.model.DownloadInfo r0 = r1.p     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = com.ss.android.socialbase.downloader.i.b.a(r2)     // Catch: java.lang.Throwable -> L16
            r0.setHttpStatusMessage(r2)     // Catch: java.lang.Throwable -> L16
            r2 = 1
            goto L1b
        L16:
            r2 = move-exception
            r2.printStackTrace()
        L1a:
            r2 = 0
        L1b:
            if (r2 != 0) goto L2a
            com.ss.android.socialbase.downloader.model.DownloadInfo r2 = r1.p
            r0 = -1
            r2.setHttpStatusCode(r0)
            com.ss.android.socialbase.downloader.model.DownloadInfo r2 = r1.p
            java.lang.String r0 = ""
            r2.setHttpStatusMessage(r0)
        L2a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.a(com.ss.android.socialbase.downloader.network.g):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
        if (r9.f() != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.ss.android.socialbase.downloader.model.b a(com.ss.android.socialbase.downloader.model.b r9, int r10) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.h.c.a(com.ss.android.socialbase.downloader.model.b, int):com.ss.android.socialbase.downloader.model.b");
    }

    private s a(DownloadTask downloadTask) {
        s retryDelayTimeCalculator = downloadTask.getRetryDelayTimeCalculator();
        if (retryDelayTimeCalculator != null) {
            return retryDelayTimeCalculator;
        }
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            String retryDelayTimeArray = downloadInfo.getRetryDelayTimeArray();
            if (!TextUtils.isEmpty(retryDelayTimeArray)) {
                return new com.ss.android.socialbase.downloader.impls.q(retryDelayTimeArray);
            }
        }
        return com.ss.android.socialbase.downloader.downloader.c.L();
    }

    public void a(Future future) {
        this.b = future;
    }
}
