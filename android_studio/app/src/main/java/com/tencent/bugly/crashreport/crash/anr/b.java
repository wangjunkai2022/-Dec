package com.tencent.bugly.crashreport.crash.anr;

import android.app.ActivityManager;
import android.content.Context;
import android.os.FileObserver;
import android.text.TextUtils;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.ad;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class b {
    public static b m;
    public final Context b;
    public final ActivityManager c;
    public final com.tencent.bugly.crashreport.common.info.a d;
    public final x e;
    public final com.tencent.bugly.crashreport.crash.b f;
    public String h;
    public FileObserver i;
    public ad k;
    public int l;

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f12044a = new AtomicBoolean(false);
    public final Object g = new Object();
    public boolean j = true;
    public long n = 0;

    public b(Context context, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2, x xVar, com.tencent.bugly.crashreport.crash.b bVar) {
        Context a2 = ab.a(context);
        this.b = a2;
        this.c = (ActivityManager) a2.getSystemService("activity");
        this.h = context.getDir("bugly", 0).getAbsolutePath();
        this.d = aVar2;
        this.e = xVar;
        this.f = bVar;
    }

    public static /* synthetic */ void b(b bVar) {
        long currentTimeMillis = (System.currentTimeMillis() + com.tencent.bugly.crashreport.crash.c.g) - ab.b();
        z.a(bVar.h, "bugly_trace_", ".txt", currentTimeMillis);
        z.a(bVar.h, "manual_bugly_trace_", ".txt", currentTimeMillis);
        z.a(bVar.h, "main_stack_record_", ".txt", currentTimeMillis);
        z.a(bVar.h, "main_stack_record_", ".txt.merged", currentTimeMillis);
    }

    private synchronized boolean e() {
        return this.i != null;
    }

    private synchronized boolean f() {
        return this.j;
    }

    private synchronized void g() {
        if (e()) {
            y.d("start when started!", new Object[0]);
        } else if (TextUtils.isEmpty(this.h)) {
        } else {
            synchronized (this.g) {
                if (this.k == null || !this.k.isAlive()) {
                    ad adVar = new ad();
                    this.k = adVar;
                    adVar.a(this.d.j());
                    this.k.a(new ad.a() { // from class: com.tencent.bugly.crashreport.crash.anr.b.3
                        @Override // com.tencent.bugly.proguard.ad.a
                        public final void a(boolean z, long j) {
                            if (z) {
                                if (!b.this.a()) {
                                    y.c("main thread blocked overdue, blockTime:%s", Long.valueOf(j));
                                    if (!com.tencent.bugly.proguard.a.a(b.this.c)) {
                                        y.c("proc is not in anr, wait next check", new Object[0]);
                                        return;
                                    }
                                    long currentTimeMillis = System.currentTimeMillis();
                                    if (!b.this.a(currentTimeMillis) && b.this.b(true)) {
                                        y.c("found anr", new Object[0]);
                                        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
                                        if (nativeCrashHandler != null && nativeCrashHandler.isEnableCatchAnrTrace()) {
                                            y.c("anr trace enable, do dump trace", new Object[0]);
                                            nativeCrashHandler.dumpAnrNativeStack();
                                            return;
                                        }
                                        y.c("anr trace not enable", new Object[0]);
                                        String str = b.this.h;
                                        File file = new File(str, "manual_bugly_trace_" + currentTimeMillis + ".txt");
                                        y.a("create new trace file:%s", file.getAbsoluteFile());
                                        z.a(file, "android trace not enable\n", 101376L, true);
                                        return;
                                    }
                                    return;
                                }
                                y.c("anr is processing, return", new Object[0]);
                            }
                        }
                    });
                    ad adVar2 = this.k;
                    StringBuilder sb = new StringBuilder("Bugly-ThreadMonitor");
                    int i = this.l;
                    this.l = i + 1;
                    sb.append(i);
                    adVar2.setName(sb.toString());
                    this.k.b();
                }
            }
            FileObserver fileObserver = new FileObserver(this.h, 8) { // from class: com.tencent.bugly.crashreport.crash.anr.b.4
                @Override // android.os.FileObserver
                public final void onEvent(int i2, String str) {
                    if (str == null) {
                        return;
                    }
                    y.d("observe file, dir:%s fileName:%s", b.this.h, str);
                    if (!b.a(str)) {
                        y.c("not manual trace file, ignore.", new Object[0]);
                    } else if (!b.this.a()) {
                        y.c("proc is not in anr, just ignore", new Object[0]);
                    } else {
                        long a2 = z.a(str, "manual_bugly_trace_", ".txt");
                        b bVar = b.this;
                        bVar.a(a2, b.this.h + "/" + str);
                        y.c("Finish handling one anr.", new Object[0]);
                    }
                }
            };
            this.i = fileObserver;
            fileObserver.startWatching();
            y.a("startWatchingPrivateAnrDir! dumFilePath is %s", this.h);
            this.e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.5
                @Override // java.lang.Runnable
                public final void run() {
                    b.b(b.this);
                }
            });
        }
    }

    private synchronized void h() {
        if (!e()) {
            y.d("close when closed!", new Object[0]);
            return;
        }
        synchronized (this.g) {
            if (this.k != null) {
                this.k.a();
                this.k = null;
            }
        }
        y.a("stopWatchingPrivateAnrDir", new Object[0]);
        this.i.stopWatching();
        this.i = null;
        y.d("close anr monitor!", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(boolean z) {
        boolean compareAndSet = this.f12044a.compareAndSet(!z, z);
        y.c("tryChangeAnrState to %s, success:%s", Boolean.valueOf(z), Boolean.valueOf(compareAndSet));
        return compareAndSet;
    }

    private synchronized void c() {
        if (e()) {
            y.d("start when started!", new Object[0]);
            return;
        }
        FileObserver fileObserver = new FileObserver("/data/anr/", 8) { // from class: com.tencent.bugly.crashreport.crash.anr.b.1
            @Override // android.os.FileObserver
            public final void onEvent(int i, String str) {
                if (str == null) {
                    return;
                }
                final String str2 = "/data/anr/" + str;
                y.d("watching file %s", str2);
                if (str2.contains("trace")) {
                    b.this.e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.a(b.this, str2);
                        }
                    });
                } else {
                    y.d("not anr file %s", str2);
                }
            }
        };
        this.i = fileObserver;
        fileObserver.startWatching();
        y.a("start anr monitor!", new Object[0]);
        this.e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.2
            @Override // java.lang.Runnable
            public final void run() {
                b.b(b.this);
            }
        });
    }

    private synchronized void d() {
        if (!e()) {
            y.d("close when closed!", new Object[0]);
            return;
        }
        this.i.stopWatching();
        this.i = null;
        y.d("close anr monitor!", new Object[0]);
    }

    public static /* synthetic */ void a(b bVar, String str) {
        if (bVar.b(true)) {
            try {
                y.c("read trace first dump for create time!", new Object[0]);
                TraceFileHelper.a readFirstDumpInfo = TraceFileHelper.readFirstDumpInfo(str, false);
                long j = readFirstDumpInfo != null ? readFirstDumpInfo.c : -1L;
                if (j == -1) {
                    y.d("trace dump fail could not get time!", new Object[0]);
                    j = System.currentTimeMillis();
                }
                if (bVar.a(j)) {
                    return;
                }
                bVar.a(j, str);
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                y.e("handle anr error %s", th.getClass().toString());
            }
        }
    }

    public final synchronized void b() {
        y.d("customer decides whether to open or close.", new Object[0]);
    }

    public static /* synthetic */ boolean a(String str) {
        return str.startsWith("manual_bugly_trace_") && str.endsWith(".txt");
    }

    public static b a(Context context, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2, x xVar, o oVar, com.tencent.bugly.crashreport.crash.b bVar, BuglyStrategy.a aVar3) {
        if (m == null) {
            m = new b(context, aVar, aVar2, xVar, bVar);
        }
        return m;
    }

    private CrashDetailBean a(a aVar) {
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        try {
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.j();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.l();
            crashDetailBean.F = this.d.o();
            crashDetailBean.G = this.d.n();
            crashDetailBean.H = this.d.p();
            crashDetailBean.I = com.tencent.bugly.crashreport.common.info.b.f();
            crashDetailBean.J = com.tencent.bugly.crashreport.common.info.b.g();
            crashDetailBean.K = com.tencent.bugly.crashreport.common.info.b.h();
            if (!com.tencent.bugly.crashreport.common.info.b.o()) {
                crashDetailBean.w = ab.a(com.tencent.bugly.crashreport.crash.c.e, (String) null);
            }
            crashDetailBean.b = 3;
            crashDetailBean.e = this.d.k();
            crashDetailBean.f = this.d.i;
            crashDetailBean.g = this.d.u();
            crashDetailBean.m = this.d.g();
            crashDetailBean.n = "ANR_EXCEPTION";
            crashDetailBean.o = aVar.f;
            crashDetailBean.q = aVar.g;
            HashMap hashMap = new HashMap();
            crashDetailBean.S = hashMap;
            hashMap.put("BUGLY_CR_01", aVar.e);
            int indexOf = crashDetailBean.q != null ? crashDetailBean.q.indexOf("\n") : -1;
            crashDetailBean.p = indexOf > 0 ? crashDetailBean.q.substring(0, indexOf) : "GET_FAIL";
            crashDetailBean.r = aVar.c;
            if (crashDetailBean.q != null) {
                crashDetailBean.u = ab.a(crashDetailBean.q.getBytes());
            }
            crashDetailBean.z = aVar.b;
            crashDetailBean.A = aVar.f12043a;
            crashDetailBean.B = "main(1)";
            crashDetailBean.L = this.d.w();
            crashDetailBean.h = this.d.t();
            crashDetailBean.i = this.d.F();
            crashDetailBean.v = aVar.d;
            crashDetailBean.O = this.d.m;
            crashDetailBean.P = this.d.f12031a;
            crashDetailBean.Q = this.d.a();
            if (!com.tencent.bugly.crashreport.common.info.b.o()) {
                this.f.d(crashDetailBean);
            }
            crashDetailBean.T = this.d.D();
            crashDetailBean.U = this.d.E();
            crashDetailBean.V = this.d.x();
            crashDetailBean.W = this.d.C();
            crashDetailBean.y = aa.a();
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
        }
        return crashDetailBean;
    }

    private synchronized void d(boolean z) {
        if (this.j != z) {
            y.a("user change anr %b", Boolean.valueOf(z));
            this.j = z;
        }
    }

    private synchronized void c(boolean z) {
        if (z) {
            g();
        } else {
            h();
        }
    }

    public static boolean a(String str, String str2, String str3) {
        Map<String, String[]> map;
        TraceFileHelper.a readTargetDumpInfo = TraceFileHelper.readTargetDumpInfo(str3, str, true);
        if (readTargetDumpInfo != null && (map = readTargetDumpInfo.d) != null && !map.isEmpty()) {
            StringBuilder sb = new StringBuilder(1024);
            String[] strArr = readTargetDumpInfo.d.get("main");
            if (strArr != null && strArr.length >= 3) {
                sb.append("\"main\" tid=");
                sb.append(strArr[2]);
                sb.append(" :\n");
                sb.append(strArr[0]);
                sb.append("\n");
                sb.append(strArr[1]);
                sb.append("\n\n");
            }
            for (Map.Entry<String, String[]> entry : readTargetDumpInfo.d.entrySet()) {
                if (!entry.getKey().equals("main") && entry.getValue() != null && entry.getValue().length >= 3) {
                    sb.append("\"");
                    sb.append(entry.getKey());
                    sb.append("\" tid=");
                    sb.append(entry.getValue()[2]);
                    sb.append(" :\n");
                    sb.append(entry.getValue()[0]);
                    sb.append("\n");
                    sb.append(entry.getValue()[1]);
                    sb.append("\n\n");
                }
            }
            return z.a(str2, sb.toString(), sb.length() * 2);
        }
        y.e("not found trace dump for %s", str3);
        return false;
    }

    public final boolean a() {
        return this.f12044a.get();
    }

    public static String a(List<c> list, long j) {
        if (list == null || list.isEmpty()) {
            return "main thread stack not enable";
        }
        StringBuilder sb = new StringBuilder(4096);
        sb.append("\n>>>>> 以下为anr过程中主线程堆栈记录，可根据堆栈出现次数推测在该堆栈阻塞的时间，出现次数越多对anr贡献越大，越可能是造成anr的原因 >>>>>\n");
        sb.append("\n>>>>> Thread Stack Traces Records Start >>>>>\n");
        for (int i = 0; i < list.size(); i++) {
            c cVar = list.get(i);
            sb.append("Thread name:");
            sb.append(cVar.b());
            sb.append("\n");
            long c = cVar.c() - j;
            String str = c <= 0 ? "before " : "after ";
            sb.append("Got ");
            sb.append(str);
            sb.append("anr:");
            sb.append(Math.abs(c));
            sb.append("ms\n");
            sb.append(cVar.a());
            sb.append("\n");
            if ((sb.length() << 1) >= 101376) {
                break;
            }
        }
        sb.append("\n<<<<< Thread Stack Traces Records End <<<<<\n");
        return sb.toString();
    }

    public final void a(boolean z) {
        d(z);
        boolean f = f();
        com.tencent.bugly.crashreport.common.strategy.a a2 = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (a2 != null) {
            f = f && a2.c().e;
        }
        if (f != e()) {
            y.a("anr changed to %b", Boolean.valueOf(f));
            c(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0064 A[Catch: all -> 0x01f8, TryCatch #3 {all -> 0x01f8, blocks: (B:3:0x0007, B:4:0x0017, B:9:0x0029, B:11:0x0049, B:16:0x0053, B:18:0x0064, B:21:0x0075, B:24:0x0080, B:26:0x009d, B:27:0x00a1, B:31:0x00d3, B:33:0x00f2, B:36:0x00ff, B:38:0x0128, B:40:0x0156, B:41:0x0159, B:47:0x0167, B:48:0x0178, B:53:0x0189, B:55:0x018f, B:64:0x01da, B:65:0x01dc, B:56:0x0197, B:58:0x01a4, B:60:0x01b3, B:62:0x01ce, B:63:0x01d5, B:59:0x01ac, B:39:0x0140, B:52:0x0182, B:30:0x00cd, B:19:0x006b, B:66:0x01dd, B:68:0x01e1, B:69:0x01ed, B:5:0x0018, B:7:0x001c, B:8:0x0028, B:42:0x015a, B:44:0x015e, B:45:0x0164), top: B:87:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006b A[Catch: all -> 0x01f8, TryCatch #3 {all -> 0x01f8, blocks: (B:3:0x0007, B:4:0x0017, B:9:0x0029, B:11:0x0049, B:16:0x0053, B:18:0x0064, B:21:0x0075, B:24:0x0080, B:26:0x009d, B:27:0x00a1, B:31:0x00d3, B:33:0x00f2, B:36:0x00ff, B:38:0x0128, B:40:0x0156, B:41:0x0159, B:47:0x0167, B:48:0x0178, B:53:0x0189, B:55:0x018f, B:64:0x01da, B:65:0x01dc, B:56:0x0197, B:58:0x01a4, B:60:0x01b3, B:62:0x01ce, B:63:0x01d5, B:59:0x01ac, B:39:0x0140, B:52:0x0182, B:30:0x00cd, B:19:0x006b, B:66:0x01dd, B:68:0x01e1, B:69:0x01ed, B:5:0x0018, B:7:0x001c, B:8:0x0028, B:42:0x015a, B:44:0x015e, B:45:0x0164), top: B:87:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0075 A[Catch: all -> 0x01f8, TRY_LEAVE, TryCatch #3 {all -> 0x01f8, blocks: (B:3:0x0007, B:4:0x0017, B:9:0x0029, B:11:0x0049, B:16:0x0053, B:18:0x0064, B:21:0x0075, B:24:0x0080, B:26:0x009d, B:27:0x00a1, B:31:0x00d3, B:33:0x00f2, B:36:0x00ff, B:38:0x0128, B:40:0x0156, B:41:0x0159, B:47:0x0167, B:48:0x0178, B:53:0x0189, B:55:0x018f, B:64:0x01da, B:65:0x01dc, B:56:0x0197, B:58:0x01a4, B:60:0x01b3, B:62:0x01ce, B:63:0x01d5, B:59:0x01ac, B:39:0x0140, B:52:0x0182, B:30:0x00cd, B:19:0x006b, B:66:0x01dd, B:68:0x01e1, B:69:0x01ed, B:5:0x0018, B:7:0x001c, B:8:0x0028, B:42:0x015a, B:44:0x015e, B:45:0x0164), top: B:87:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0080 A[Catch: all -> 0x01f8, TRY_ENTER, TryCatch #3 {all -> 0x01f8, blocks: (B:3:0x0007, B:4:0x0017, B:9:0x0029, B:11:0x0049, B:16:0x0053, B:18:0x0064, B:21:0x0075, B:24:0x0080, B:26:0x009d, B:27:0x00a1, B:31:0x00d3, B:33:0x00f2, B:36:0x00ff, B:38:0x0128, B:40:0x0156, B:41:0x0159, B:47:0x0167, B:48:0x0178, B:53:0x0189, B:55:0x018f, B:64:0x01da, B:65:0x01dc, B:56:0x0197, B:58:0x01a4, B:60:0x01b3, B:62:0x01ce, B:63:0x01d5, B:59:0x01ac, B:39:0x0140, B:52:0x0182, B:30:0x00cd, B:19:0x006b, B:66:0x01dd, B:68:0x01e1, B:69:0x01ed, B:5:0x0018, B:7:0x001c, B:8:0x0028, B:42:0x015a, B:44:0x015e, B:45:0x0164), top: B:87:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x018f A[Catch: all -> 0x01f8, TryCatch #3 {all -> 0x01f8, blocks: (B:3:0x0007, B:4:0x0017, B:9:0x0029, B:11:0x0049, B:16:0x0053, B:18:0x0064, B:21:0x0075, B:24:0x0080, B:26:0x009d, B:27:0x00a1, B:31:0x00d3, B:33:0x00f2, B:36:0x00ff, B:38:0x0128, B:40:0x0156, B:41:0x0159, B:47:0x0167, B:48:0x0178, B:53:0x0189, B:55:0x018f, B:64:0x01da, B:65:0x01dc, B:56:0x0197, B:58:0x01a4, B:60:0x01b3, B:62:0x01ce, B:63:0x01d5, B:59:0x01ac, B:39:0x0140, B:52:0x0182, B:30:0x00cd, B:19:0x006b, B:66:0x01dd, B:68:0x01e1, B:69:0x01ed, B:5:0x0018, B:7:0x001c, B:8:0x0028, B:42:0x015a, B:44:0x015e, B:45:0x0164), top: B:87:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0197 A[Catch: all -> 0x01f8, TryCatch #3 {all -> 0x01f8, blocks: (B:3:0x0007, B:4:0x0017, B:9:0x0029, B:11:0x0049, B:16:0x0053, B:18:0x0064, B:21:0x0075, B:24:0x0080, B:26:0x009d, B:27:0x00a1, B:31:0x00d3, B:33:0x00f2, B:36:0x00ff, B:38:0x0128, B:40:0x0156, B:41:0x0159, B:47:0x0167, B:48:0x0178, B:53:0x0189, B:55:0x018f, B:64:0x01da, B:65:0x01dc, B:56:0x0197, B:58:0x01a4, B:60:0x01b3, B:62:0x01ce, B:63:0x01d5, B:59:0x01ac, B:39:0x0140, B:52:0x0182, B:30:0x00cd, B:19:0x006b, B:66:0x01dd, B:68:0x01e1, B:69:0x01ed, B:5:0x0018, B:7:0x001c, B:8:0x0028, B:42:0x015a, B:44:0x015e, B:45:0x0164), top: B:87:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01dd A[Catch: all -> 0x01f2, TRY_ENTER, TryCatch #3 {all -> 0x01f8, blocks: (B:3:0x0007, B:4:0x0017, B:9:0x0029, B:11:0x0049, B:16:0x0053, B:18:0x0064, B:21:0x0075, B:24:0x0080, B:26:0x009d, B:27:0x00a1, B:31:0x00d3, B:33:0x00f2, B:36:0x00ff, B:38:0x0128, B:40:0x0156, B:41:0x0159, B:47:0x0167, B:48:0x0178, B:53:0x0189, B:55:0x018f, B:64:0x01da, B:65:0x01dc, B:56:0x0197, B:58:0x01a4, B:60:0x01b3, B:62:0x01ce, B:63:0x01d5, B:59:0x01ac, B:39:0x0140, B:52:0x0182, B:30:0x00cd, B:19:0x006b, B:66:0x01dd, B:68:0x01e1, B:69:0x01ed, B:5:0x0018, B:7:0x001c, B:8:0x0028, B:42:0x015a, B:44:0x015e, B:45:0x0164), top: B:87:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(long r19, java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.anr.b.a(long, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(long j) {
        if (Math.abs(j - this.n) < FragmentStateAdapter.GRACE_WINDOW_TIME_MS) {
            y.d("should not process ANR too Fre in %dms", 10000);
            return true;
        }
        this.n = j;
        return false;
    }
}
