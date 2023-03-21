package com.ss.android.socialbase.downloader.downloader;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.apk.lg0;
import com.apk.mg0;
import com.apk.nd0;
import com.apk.ng0;
import com.apk.uc0;
import com.apk.xg0;
import com.apk.yg0;
import com.ss.android.socialbase.downloader.depend.aa;
import com.ss.android.socialbase.downloader.depend.ab;
import com.ss.android.socialbase.downloader.depend.af;
import com.ss.android.socialbase.downloader.depend.ak;
import com.ss.android.socialbase.downloader.downloader.u;
import com.ss.android.socialbase.downloader.impls.DownloadHandleService;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.network.IDownloadHttpService;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class c {
    public static volatile com.ss.android.socialbase.downloader.d.b A;
    public static volatile aa B;
    public static volatile com.ss.android.socialbase.downloader.network.f F;
    public static volatile com.ss.android.socialbase.downloader.network.f G;
    public static volatile u H;
    public static int K;
    public static final int N;
    public static final int O;
    public static int P;
    public static boolean Q;
    public static final List<com.ss.android.socialbase.downloader.depend.k> R;
    public static final List<ab> S;
    public static int T;
    public static boolean U;
    public static boolean V;
    public static r W;
    public static com.ss.android.socialbase.downloader.d.c X;
    public static volatile boolean Y;

    /* renamed from: a  reason: collision with root package name */
    public static volatile Context f11858a;
    public static volatile j b;
    public static volatile k c;
    public static volatile h d;
    public static volatile af e;
    public static volatile com.ss.android.socialbase.downloader.impls.a f;
    public static volatile o g;
    public static volatile o h;
    public static volatile a i;
    public static volatile IDownloadHttpService j;
    public static volatile com.ss.android.socialbase.downloader.network.h k;
    public static volatile IDownloadHttpService l;
    public static volatile com.ss.android.socialbase.downloader.network.h m;
    public static volatile l n;
    public static volatile ExecutorService o;
    public static volatile ExecutorService p;
    public static volatile ExecutorService q;
    public static volatile ExecutorService r;
    public static volatile ExecutorService s;
    public static volatile ExecutorService t;
    public static volatile ExecutorService u;
    public static volatile ExecutorService v;
    public static volatile g w;
    public static volatile DownloadReceiver x;
    public static volatile s y;
    public static volatile q z;
    public static volatile List<ak> C = new ArrayList();
    public static volatile boolean D = false;
    public static volatile xg0 E = null;
    public static final List<com.ss.android.socialbase.downloader.depend.m> I = new ArrayList();
    public static boolean J = false;
    public static final int L = Runtime.getRuntime().availableProcessors() + 1;
    public static final int M = (Runtime.getRuntime().availableProcessors() * 2) + 1;

    /* loaded from: classes7.dex */
    public interface a {

        /* renamed from: com.ss.android.socialbase.downloader.downloader.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public interface InterfaceC0169a {
            void a();
        }

        o a();

        t a(InterfaceC0169a interfaceC0169a);

        m b();
    }

    static {
        int i2 = L;
        N = i2;
        O = i2;
        P = 8192;
        R = new ArrayList();
        S = new ArrayList();
        U = true;
        V = false;
        Y = false;
    }

    public static List<com.ss.android.socialbase.downloader.depend.m> A() {
        return I;
    }

    public static k B() {
        if (c == null) {
            synchronized (c.class) {
                if (c == null) {
                    c = new com.ss.android.socialbase.downloader.impls.i();
                }
            }
        }
        return c;
    }

    public static com.ss.android.socialbase.downloader.impls.a C() {
        if (f == null) {
            synchronized (c.class) {
                if (f == null) {
                    f = new com.ss.android.socialbase.downloader.impls.e();
                }
            }
        }
        return f;
    }

    public static int D() {
        return T;
    }

    @NonNull
    public static JSONObject E() {
        if (B != null && B.a() != null) {
            return B.a();
        }
        return com.ss.android.socialbase.downloader.constants.e.i;
    }

    public static void F() {
        if (TextUtils.isEmpty(com.ss.android.socialbase.downloader.constants.e.c)) {
            com.ss.android.socialbase.downloader.constants.e.c = "oppo";
            com.ss.android.socialbase.downloader.constants.e.b = com.ss.android.socialbase.downloader.constants.e.c.toUpperCase();
        }
    }

    public static boolean G() {
        return U;
    }

    public static synchronized int H() {
        int i2;
        synchronized (c.class) {
            i2 = P;
        }
        return i2;
    }

    public static h I() {
        if (d == null) {
            synchronized (c.class) {
                if (d == null) {
                    d = new com.ss.android.socialbase.downloader.impls.c();
                }
            }
        }
        return d;
    }

    public static af J() {
        return e;
    }

    public static g K() {
        if (w == null) {
            synchronized (c.class) {
                if (w == null) {
                    w = new com.ss.android.socialbase.downloader.impls.b();
                }
            }
        }
        return w;
    }

    public static s L() {
        if (y == null) {
            synchronized (c.class) {
                if (y == null) {
                    y = new com.ss.android.socialbase.downloader.impls.j();
                }
            }
        }
        return y;
    }

    public static u M() {
        if (H == null) {
            synchronized (c.class) {
                if (H == null) {
                    H = new u.a();
                }
            }
        }
        return H;
    }

    public static synchronized Context N() {
        Context context;
        synchronized (c.class) {
            context = f11858a;
        }
        return context;
    }

    public static synchronized boolean O() {
        boolean z2;
        synchronized (c.class) {
            z2 = Q;
        }
        return z2;
    }

    @NonNull
    public static com.ss.android.socialbase.downloader.d.c P() {
        if (X == null) {
            X = new com.ss.android.socialbase.downloader.d.c() { // from class: com.ss.android.socialbase.downloader.downloader.c.3
                @Override // com.ss.android.socialbase.downloader.d.c
                public void a(int i2, String str, JSONObject jSONObject) {
                }

                @Override // com.ss.android.socialbase.downloader.d.c
                public void b(int i2, String str, JSONObject jSONObject) {
                }
            };
        }
        return X;
    }

    public static r Q() {
        return W;
    }

    public static boolean R() {
        return Y;
    }

    public static boolean S() {
        StringBuilder m1016super = Cgoto.m1016super("supportMultiProc::=");
        m1016super.append(i != null);
        com.ss.android.socialbase.downloader.c.a.a("wjd", m1016super.toString());
        return i != null;
    }

    public static a T() {
        return i;
    }

    public static void U() {
        if (x == null) {
            x = new DownloadReceiver();
        }
        if (J) {
            return;
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            f11858a.registerReceiver(x, intentFilter);
            J = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static synchronized void a(DownloaderBuilder downloaderBuilder) {
        synchronized (c.class) {
            if (Y) {
                com.ss.android.socialbase.downloader.c.a.e("DownloadComponentManager", "component has init");
                return;
            }
            boolean z2 = D;
            c(downloaderBuilder);
            if (b == null) {
                b = new com.ss.android.socialbase.downloader.impls.d();
            }
            if (g == null) {
                g = new com.ss.android.socialbase.downloader.impls.h();
            }
            if (h == null && i != null) {
                h = i.a();
            }
            if (c == null) {
                c = new com.ss.android.socialbase.downloader.impls.i();
            }
            if (f == null) {
                f = new com.ss.android.socialbase.downloader.impls.e();
            }
            if (d == null) {
                d = new com.ss.android.socialbase.downloader.impls.c();
            }
            if (w == null) {
                w = new com.ss.android.socialbase.downloader.impls.b();
            }
            if (y == null) {
                y = new com.ss.android.socialbase.downloader.impls.j();
            }
            if (K <= 0 || K > L) {
                K = L;
            }
            U();
            if (D && !z2 && !com.ss.android.socialbase.downloader.i.f.c()) {
                com.ss.android.socialbase.downloader.impls.l.a(true).startService();
            } else if (com.ss.android.socialbase.downloader.i.f.d()) {
                ExecutorService m2 = m();
                if (m2 != null) {
                    m2.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.c.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Context N2 = c.N();
                            if (N2 != null) {
                                com.ss.android.socialbase.downloader.i.f.d(N2);
                            }
                        }
                    });
                }
            } else {
                Context N2 = N();
                if (N2 != null) {
                    com.ss.android.socialbase.downloader.i.f.d(N2);
                }
            }
            F();
            Y = true;
        }
    }

    public static void a(r rVar) {
    }

    public static synchronized void b(DownloaderBuilder downloaderBuilder) {
        synchronized (c.class) {
            c(downloaderBuilder);
        }
    }

    public static void c(DownloaderBuilder downloaderBuilder) {
        if (downloaderBuilder != null) {
            if (downloaderBuilder.getContext() != null) {
                a(downloaderBuilder.getContext());
            }
            if (downloaderBuilder.getDownloadCache() != null) {
                a(downloaderBuilder.getDownloadCache());
            }
            if (downloaderBuilder.getIdGenerator() != null) {
                a(downloaderBuilder.getIdGenerator());
            }
            if (downloaderBuilder.getChunkCntCalculator() != null) {
                a(downloaderBuilder.getChunkCntCalculator());
            }
            if (downloaderBuilder.getNotificationClickCallback() != null) {
                a(downloaderBuilder.getNotificationClickCallback());
            }
            if (downloaderBuilder.getMaxDownloadPoolSize() != 0) {
                b(downloaderBuilder.getMaxDownloadPoolSize());
            }
            if (downloaderBuilder.getHttpService() != null) {
                a(downloaderBuilder.getHttpService());
            }
            if (downloaderBuilder.getHeadHttpService() != null) {
                a(downloaderBuilder.getHeadHttpService());
            }
            if (downloaderBuilder.getDownloadLaunchHandler() != null) {
                a(downloaderBuilder.getDownloadLaunchHandler());
            }
            if (downloaderBuilder.getCPUThreadExecutor() != null) {
                c(downloaderBuilder.getCPUThreadExecutor());
            }
            if (downloaderBuilder.getIOThreadExecutor() != null) {
                d(downloaderBuilder.getIOThreadExecutor());
            }
            if (downloaderBuilder.getMixDefaultDownloadExecutor() != null) {
                e(downloaderBuilder.getMixDefaultDownloadExecutor());
            }
            if (downloaderBuilder.getMixFrequentDownloadExecutor() != null) {
                f(downloaderBuilder.getMixFrequentDownloadExecutor());
            }
            if (downloaderBuilder.getMixApkDownloadExecutor() != null) {
                g(downloaderBuilder.getMixApkDownloadExecutor());
            }
            if (downloaderBuilder.getDBThreadExecutor() != null) {
                h(downloaderBuilder.getDBThreadExecutor());
            }
            if (downloaderBuilder.getChunkThreadExecutor() != null) {
                a(downloaderBuilder.getChunkThreadExecutor());
            }
            if (downloaderBuilder.getOkHttpDispatcherExecutor() != null) {
                b(downloaderBuilder.getOkHttpDispatcherExecutor());
            }
            if (!downloaderBuilder.getDownloadCompleteHandlers().isEmpty()) {
                a(downloaderBuilder.getDownloadCompleteHandlers());
            }
            if (downloaderBuilder.getMonitorConfig() != null) {
                z = downloaderBuilder.getMonitorConfig();
            }
            if (downloaderBuilder.getWriteBufferSize() > 1024) {
                P = downloaderBuilder.getWriteBufferSize();
            }
            if (downloaderBuilder.getChunkAdjustCalculator() != null) {
                a(downloaderBuilder.getChunkAdjustCalculator());
            }
            if (downloaderBuilder.isDownloadInMultiProcess()) {
                D = true;
            }
            if (downloaderBuilder.getDownloadExpSwitch() != 0) {
                T = downloaderBuilder.getDownloadExpSwitch();
            }
            if (downloaderBuilder.getDownloadSetting() != null) {
                a(downloaderBuilder.getDownloadSetting());
            }
            if (downloaderBuilder.getDownloadDns() != null) {
                F = downloaderBuilder.getDownloadDns();
            }
            if (downloaderBuilder.getTTNetHandler() != null) {
                H = downloaderBuilder.getTTNetHandler();
                if (H.a()) {
                    a(H.b());
                    a(H.c());
                } else {
                    a(h());
                    a(i());
                }
            }
            b(downloaderBuilder.needAutoRefreshUnSuccessTask());
            if (downloaderBuilder.getDownloadMonitorListener() != null) {
                a(downloaderBuilder.getDownloadMonitorListener());
            }
        }
    }

    public static IDownloadHttpService d() {
        return j;
    }

    public static List<ak> e() {
        List<ak> list;
        synchronized (C) {
            list = C;
        }
        return list;
    }

    public static com.ss.android.socialbase.downloader.network.h f() {
        return k;
    }

    public static com.ss.android.socialbase.downloader.d.b g() {
        return A;
    }

    public static IDownloadHttpService h() {
        if (l == null) {
            synchronized (c.class) {
                if (l == null) {
                    l = new com.ss.android.socialbase.downloader.impls.g();
                }
            }
        }
        return l;
    }

    public static com.ss.android.socialbase.downloader.network.h i() {
        if (m == null) {
            synchronized (c.class) {
                if (m == null) {
                    m = new com.ss.android.socialbase.downloader.impls.f();
                }
            }
        }
        return m;
    }

    public static boolean j() {
        return com.ss.android.socialbase.downloader.g.a.c().a("switch_not_auto_boot_service", V ? 1 : 0) > 0;
    }

    public static synchronized q k() {
        q qVar;
        synchronized (c.class) {
            qVar = z;
        }
        return qVar;
    }

    public static ExecutorService l() {
        if (o == null) {
            synchronized (c.class) {
                if (o == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(L, L, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.h.a("DownloadThreadPool-cpu-fixed", true));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    o = threadPoolExecutor;
                }
            }
        }
        return o;
    }

    public static ExecutorService m() {
        return p != null ? p : l();
    }

    public static ExecutorService n() {
        return r != null ? r : p();
    }

    public static ExecutorService o() {
        return s != null ? s : p();
    }

    public static ExecutorService p() {
        if (q == null) {
            synchronized (c.class) {
                if (q == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(N, N, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.h.a("DownloadThreadPool-mix-fixed", true));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    q = threadPoolExecutor;
                }
            }
        }
        return q;
    }

    public static ExecutorService q() {
        if (u == null) {
            synchronized (c.class) {
                if (u == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(M, M, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.h.a("DownloadThreadPool-chunk-fixed", true));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    u = threadPoolExecutor;
                }
            }
        }
        return u;
    }

    public static ExecutorService r() {
        if (t == null) {
            synchronized (c.class) {
                if (t == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(O, O, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.h.a("DownloadThreadPool-db-fixed", true));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    t = threadPoolExecutor;
                }
            }
        }
        return t;
    }

    public static xg0 s() {
        if (E == null) {
            synchronized (c.class) {
                if (E == null) {
                    xg0.Cdo t2 = t();
                    if (t2 != null) {
                        E = new xg0(t2);
                    } else {
                        throw null;
                    }
                }
            }
        }
        return E;
    }

    public static xg0.Cdo t() {
        yg0 yg0Var = yg0.HTTP_1_1;
        xg0.Cdo cdo = new xg0.Cdo();
        cdo.m2992do(30000L, TimeUnit.MILLISECONDS);
        cdo.m2994if(30000L, TimeUnit.MILLISECONDS);
        cdo.m2995new(30000L, TimeUnit.MILLISECONDS);
        cdo.f5574case = true;
        cdo.f5584goto = true;
        List singletonList = Collections.singletonList(yg0Var);
        yg0 yg0Var2 = yg0.H2_PRIOR_KNOWLEDGE;
        nd0.m1875new(singletonList, "protocols");
        List m2692break = uc0.m2692break(singletonList);
        ArrayList arrayList = (ArrayList) m2692break;
        boolean z2 = false;
        if (arrayList.contains(yg0Var2) || arrayList.contains(yg0Var)) {
            if ((!arrayList.contains(yg0Var2) || arrayList.size() <= 1) ? true : true) {
                if (!arrayList.contains(yg0.HTTP_1_0)) {
                    if (!arrayList.contains(null)) {
                        arrayList.remove(yg0.SPDY_3);
                        if (true ^ nd0.m1870do(m2692break, cdo.f5586import)) {
                            cdo.f5581extends = null;
                        }
                        List<? extends yg0> unmodifiableList = Collections.unmodifiableList(m2692break);
                        nd0.m1872for(unmodifiableList, "Collections.unmodifiableList(protocolsCopy)");
                        cdo.f5586import = unmodifiableList;
                        if (v != null) {
                            ExecutorService executorService = v;
                            nd0.m1875new(executorService, "executorService");
                            lg0 lg0Var = new lg0();
                            lg0Var.f2801for = executorService;
                            nd0.m1875new(lg0Var, "dispatcher");
                            cdo.f5579do = lg0Var;
                        }
                        return cdo;
                    }
                    throw new IllegalArgumentException("protocols must not contain null".toString());
                }
                throw new IllegalArgumentException(("protocols must not contain http/1.0: " + m2692break).toString());
            }
            throw new IllegalArgumentException(("protocols containing h2_prior_knowledge cannot use other protocols: " + m2692break).toString());
        }
        throw new IllegalArgumentException(("protocols must contain h2_prior_knowledge or http/1.1: " + m2692break).toString());
    }

    public static com.ss.android.socialbase.downloader.network.f u() {
        return F;
    }

    public static com.ss.android.socialbase.downloader.network.f v() {
        if (G == null) {
            synchronized (c.class) {
                if (G == null) {
                    G = new com.ss.android.socialbase.downloader.network.f() { // from class: com.ss.android.socialbase.downloader.downloader.c.2
                        @Override // com.ss.android.socialbase.downloader.network.f
                        public List<InetAddress> a(String str) throws UnknownHostException {
                            return ((mg0) ng0.f3226do).lookup(str);
                        }
                    };
                }
            }
        }
        return G;
    }

    public static synchronized l w() {
        l lVar;
        synchronized (c.class) {
            lVar = n;
        }
        return lVar;
    }

    public static j x() {
        if (b == null) {
            synchronized (c.class) {
                if (b == null) {
                    b = new com.ss.android.socialbase.downloader.impls.d();
                }
            }
        }
        return b;
    }

    public static o y() {
        if (g == null) {
            synchronized (c.class) {
                if (g == null) {
                    g = new com.ss.android.socialbase.downloader.impls.h();
                }
            }
        }
        return g;
    }

    public static o z() {
        if (h == null) {
            synchronized (c.class) {
                if (h == null) {
                    h = i.a();
                }
            }
        }
        return h;
    }

    public static void d(ExecutorService executorService) {
        if (executorService != null) {
            p = executorService;
        }
    }

    public static void f(ExecutorService executorService) {
        if (executorService != null) {
            r = executorService;
        }
    }

    public static void g(ExecutorService executorService) {
        if (executorService != null) {
            s = executorService;
        }
    }

    public static synchronized void b() {
        synchronized (c.class) {
            if (D) {
                return;
            }
            D = true;
            Intent intent = new Intent(N(), DownloadHandleService.class);
            intent.setAction("com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY");
            N().startService(intent);
            if (!com.ss.android.socialbase.downloader.i.f.c()) {
                com.ss.android.socialbase.downloader.impls.l.a(true).startService();
            }
        }
    }

    public static void e(ExecutorService executorService) {
        if (executorService != null) {
            q = executorService;
        }
    }

    public static void h(ExecutorService executorService) {
        if (executorService != null) {
            t = executorService;
        }
    }

    public static void b(com.ss.android.socialbase.downloader.depend.k kVar) {
        synchronized (R) {
            if (kVar != null) {
                if (R.contains(kVar)) {
                    R.remove(kVar);
                }
            }
        }
    }

    public static void b(DownloadTask downloadTask, int i2) {
        synchronized (S) {
            for (ab abVar : S) {
                if (abVar != null) {
                    abVar.b(downloadTask, i2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ss.android.socialbase.downloader.network.g b(java.lang.String r11, java.util.List<com.ss.android.socialbase.downloader.model.c> r12, int r13, boolean r14, com.ss.android.socialbase.downloader.model.DownloadInfo r15) throws com.ss.android.socialbase.downloader.exception.BaseException, java.io.IOException {
        /*
            r0 = 1
            if (r13 != r0) goto L8
            com.ss.android.socialbase.downloader.network.h r0 = f()
            goto Lc
        L8:
            com.ss.android.socialbase.downloader.network.h r0 = i()
        Lc:
            if (r0 == 0) goto L49
            r1 = 0
            r9 = 0
            r2 = 0
            if (r14 == 0) goto L18
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L2f java.io.IOException -> L32
        L18:
            com.ss.android.socialbase.downloader.network.g r12 = r0.a(r11, r12)     // Catch: java.lang.Throwable -> L2f java.io.IOException -> L32
            if (r14 == 0) goto L2e
            r4 = 0
            long r0 = java.lang.System.currentTimeMillis()
            long r5 = r0 - r2
            java.lang.String r7 = "head"
            r2 = r12
            r3 = r11
            r8 = r13
            r10 = r15
            com.ss.android.socialbase.downloader.d.a.a(r2, r3, r4, r5, r7, r8, r9, r10)
        L2e:
            return r12
        L2f:
            r12 = move-exception
            r8 = r9
            goto L37
        L32:
            r12 = move-exception
            throw r12     // Catch: java.lang.Throwable -> L34
        L34:
            r0 = move-exception
            r8 = r12
            r12 = r0
        L37:
            if (r14 == 0) goto L48
            r14 = 0
            long r4 = java.lang.System.currentTimeMillis()
            long r4 = r4 - r2
            java.lang.String r6 = "head"
            r2 = r11
            r3 = r14
            r7 = r13
            r9 = r15
            com.ss.android.socialbase.downloader.d.a.a(r1, r2, r3, r4, r6, r7, r8, r9)
        L48:
            throw r12
        L49:
            com.ss.android.socialbase.downloader.exception.BaseException r11 = new com.ss.android.socialbase.downloader.exception.BaseException
            r12 = 1022(0x3fe, float:1.432E-42)
            java.io.IOException r14 = new java.io.IOException
            java.lang.String r15 = "httpService not exist, netLib = "
            java.lang.String r13 = com.apk.Cgoto.m1003implements(r15, r13)
            r14.<init>(r13)
            r11.<init>(r12, r14)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.downloader.c.b(java.lang.String, java.util.List, int, boolean, com.ss.android.socialbase.downloader.model.DownloadInfo):com.ss.android.socialbase.downloader.network.g");
    }

    public static void b(ExecutorService executorService) {
        if (executorService != null) {
            v = executorService;
        }
    }

    public static void b(Runnable runnable, boolean z2) {
        if (runnable == null) {
            return;
        }
        if (z2 && !com.ss.android.socialbase.downloader.i.f.d()) {
            runnable.run();
        } else {
            m().execute(runnable);
        }
    }

    public static synchronized void a() {
        synchronized (c.class) {
            try {
                if (J && x != null && f11858a != null) {
                    f11858a.unregisterReceiver(x);
                    J = false;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void b(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (!com.ss.android.socialbase.downloader.i.f.d()) {
            runnable.run();
        } else {
            r().execute(runnable);
        }
    }

    public static void b(int i2) {
        if (i2 > 0) {
            K = i2;
        }
    }

    public static void a(ak akVar) {
        if (akVar == null) {
            return;
        }
        synchronized (C) {
            C.add(akVar);
        }
    }

    public static void b(boolean z2) {
        U = z2;
    }

    public static void a(com.ss.android.socialbase.downloader.depend.k kVar) {
        synchronized (R) {
            if (kVar != null) {
                if (!R.contains(kVar)) {
                    R.add(kVar);
                }
            }
        }
    }

    public static void a(com.ss.android.socialbase.downloader.constants.d dVar) {
        synchronized (R) {
            for (com.ss.android.socialbase.downloader.depend.k kVar : R) {
                if (kVar != null) {
                    if (dVar == com.ss.android.socialbase.downloader.constants.d.SYNC_START) {
                        kVar.a();
                    } else if (dVar == com.ss.android.socialbase.downloader.constants.d.SYNC_SUCCESS) {
                        kVar.b();
                    }
                }
            }
            if (dVar == com.ss.android.socialbase.downloader.constants.d.SYNC_SUCCESS) {
                R.clear();
            }
        }
    }

    public static void a(DownloadTask downloadTask, int i2) {
        synchronized (S) {
            for (ab abVar : S) {
                if (abVar != null) {
                    abVar.a(downloadTask, i2);
                }
            }
        }
    }

    public static synchronized boolean c() {
        boolean z2;
        synchronized (c.class) {
            z2 = D;
        }
        return z2;
    }

    public static void c(ExecutorService executorService) {
        if (executorService != null) {
            o = executorService;
        }
    }

    public static com.ss.android.socialbase.downloader.network.i a(boolean z2, int i2, String str, List<com.ss.android.socialbase.downloader.model.c> list) throws Exception {
        return a(z2, i2, str, null, list, 0, false, null);
    }

    public static com.ss.android.socialbase.downloader.network.i a(boolean z2, int i2, String str, String str2, List<com.ss.android.socialbase.downloader.model.c> list, int i3, boolean z3, DownloadInfo downloadInfo) throws Exception {
        List<com.ss.android.socialbase.downloader.model.c> list2;
        int i4;
        com.ss.android.socialbase.downloader.network.i a2;
        if (!TextUtils.isEmpty(str2)) {
            List<com.ss.android.socialbase.downloader.model.c> arrayList = list == null ? new ArrayList<>() : list;
            arrayList.add(new com.ss.android.socialbase.downloader.model.c("ss_d_request_host_ip_114", str2));
            list2 = arrayList;
            i4 = 1;
        } else if (z2) {
            list2 = list;
            i4 = i3;
        } else {
            i4 = 2;
            list2 = list;
        }
        int[] a3 = a(i4);
        Exception exc = null;
        for (int i5 : a3) {
            try {
                a2 = a(i2, str, str2, list2, i5, z3, downloadInfo);
            } catch (Exception e2) {
                if (downloadInfo.isExpiredRedownload() && com.ss.android.socialbase.downloader.i.f.g(e2) && com.ss.android.socialbase.downloader.i.f.c(list2)) {
                    com.ss.android.socialbase.downloader.c.a.a("dcach::http exception 304, throw excepiton, not retry " + e2);
                    throw e2;
                }
                exc = e2;
            }
            if (a2 != null) {
                return a2;
            }
        }
        if (exc == null) {
            return null;
        }
        throw exc;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ss.android.socialbase.downloader.network.i a(int r11, java.lang.String r12, java.lang.String r13, java.util.List<com.ss.android.socialbase.downloader.model.c> r14, int r15, boolean r16, com.ss.android.socialbase.downloader.model.DownloadInfo r17) throws com.ss.android.socialbase.downloader.exception.BaseException, java.io.IOException {
        /*
            r7 = r15
            r0 = 1
            if (r7 != r0) goto L9
            com.ss.android.socialbase.downloader.network.IDownloadHttpService r0 = d()
            goto Ld
        L9:
            com.ss.android.socialbase.downloader.network.IDownloadHttpService r0 = h()
        Ld:
            if (r0 == 0) goto L56
            r1 = 0
            r8 = 0
            r2 = 0
            if (r16 == 0) goto L21
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L1a java.io.IOException -> L1d
            goto L21
        L1a:
            r0 = move-exception
            r5 = r12
            goto L43
        L1d:
            r0 = move-exception
            r5 = r12
        L1f:
            r4 = r0
            goto L40
        L21:
            r4 = r11
            r5 = r12
            r6 = r14
            com.ss.android.socialbase.downloader.network.i r0 = r0.downloadWithConnection(r11, r12, r14)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
            if (r16 == 0) goto L3b
            long r9 = java.lang.System.currentTimeMillis()
            long r9 = r9 - r2
            java.lang.String r6 = "get"
            r1 = r0
            r2 = r12
            r3 = r13
            r4 = r9
            r7 = r15
            r9 = r17
            com.ss.android.socialbase.downloader.d.a.a(r1, r2, r3, r4, r6, r7, r8, r9)
        L3b:
            return r0
        L3c:
            r0 = move-exception
            goto L43
        L3e:
            r0 = move-exception
            goto L1f
        L40:
            throw r4     // Catch: java.lang.Throwable -> L41
        L41:
            r0 = move-exception
            r8 = r4
        L43:
            if (r16 == 0) goto L55
            long r9 = java.lang.System.currentTimeMillis()
            long r9 = r9 - r2
            java.lang.String r6 = "get"
            r2 = r12
            r3 = r13
            r4 = r9
            r7 = r15
            r9 = r17
            com.ss.android.socialbase.downloader.d.a.a(r1, r2, r3, r4, r6, r7, r8, r9)
        L55:
            throw r0
        L56:
            com.ss.android.socialbase.downloader.exception.BaseException r0 = new com.ss.android.socialbase.downloader.exception.BaseException
            r1 = 1022(0x3fe, float:1.432E-42)
            java.io.IOException r2 = new java.io.IOException
            java.lang.String r3 = "httpService not exist, netLib = "
            java.lang.String r3 = com.apk.Cgoto.m1003implements(r3, r15)
            r2.<init>(r3)
            r0.<init>(r1, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.downloader.c.a(int, java.lang.String, java.lang.String, java.util.List, int, boolean, com.ss.android.socialbase.downloader.model.DownloadInfo):com.ss.android.socialbase.downloader.network.i");
    }

    public static com.ss.android.socialbase.downloader.network.g a(String str, List<com.ss.android.socialbase.downloader.model.c> list) throws Exception {
        return a(str, list, 0, false, null);
    }

    public static com.ss.android.socialbase.downloader.network.g a(String str, List<com.ss.android.socialbase.downloader.model.c> list, int i2, boolean z2, DownloadInfo downloadInfo) throws Exception {
        com.ss.android.socialbase.downloader.network.g b2;
        Exception e2 = null;
        for (int i3 : a(i2)) {
            try {
                b2 = b(str, list, i3, z2, downloadInfo);
            } catch (Exception e3) {
                e2 = e3;
            }
            if (b2 != null) {
                return b2;
            }
        }
        if (e2 == null) {
            return null;
        }
        throw e2;
    }

    public static int[] a(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? new int[]{1, 0} : new int[]{0, 1} : new int[]{1} : new int[]{0};
    }

    public static synchronized void a(l lVar) {
        synchronized (c.class) {
            if (lVar != null) {
                n = lVar;
                if (b instanceof com.ss.android.socialbase.downloader.impls.d) {
                    ((com.ss.android.socialbase.downloader.impls.d) b).h();
                }
            }
        }
    }

    public static void a(ExecutorService executorService) {
        if (executorService != null) {
            u = executorService;
        }
    }

    public static void a(List<com.ss.android.socialbase.downloader.depend.m> list) {
        if (I.isEmpty()) {
            synchronized (I) {
                I.addAll(list);
            }
        }
    }

    public static void a(boolean z2) {
        V = z2;
    }

    public static void a(Runnable runnable) {
        b(runnable, false);
    }

    public static void a(Runnable runnable, boolean z2) {
        if (runnable == null) {
            return;
        }
        if (z2 && !com.ss.android.socialbase.downloader.i.f.d()) {
            runnable.run();
        } else {
            l().execute(runnable);
        }
    }

    public static void a(IDownloadHttpService iDownloadHttpService) {
        if (iDownloadHttpService != null) {
            j = iDownloadHttpService;
        }
        Q = j != null;
    }

    public static void a(com.ss.android.socialbase.downloader.network.h hVar) {
        if (hVar != null) {
            k = hVar;
        }
    }

    public static void a(j jVar) {
        if (jVar != null) {
            b = jVar;
        }
    }

    public static void a(k kVar) {
        if (kVar != null) {
            c = kVar;
        }
    }

    public static void a(com.ss.android.socialbase.downloader.d.b bVar) {
        if (bVar != null) {
            A = bVar;
        }
    }

    public static void a(aa aaVar) {
        B = aaVar;
        com.ss.android.socialbase.downloader.g.a.a();
    }

    public static void a(h hVar) {
        if (hVar != null) {
            d = hVar;
        }
    }

    public static void a(af afVar) {
        if (afVar != null) {
            e = afVar;
        }
    }

    public static void a(g gVar) {
        if (gVar != null) {
            w = gVar;
        }
    }

    public static synchronized void a(Context context) {
        synchronized (c.class) {
            if (context != null) {
                if (f11858a == null) {
                    f11858a = context.getApplicationContext();
                    com.ss.android.socialbase.downloader.a.a.a().a(f11858a);
                }
            }
        }
    }

    public static int a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return 0;
        }
        return a(downloadInfo.getUrl(), downloadInfo.getSavePath());
    }

    public static int a(String str, String str2) {
        k B2 = B();
        if (B2 == null) {
            return 0;
        }
        return B2.a(str, str2);
    }

    public static void a(com.ss.android.socialbase.downloader.d.c cVar) {
        X = cVar;
    }

    public static void a(a aVar) {
        com.ss.android.socialbase.downloader.c.a.a("wjd", "setIndependentServiceCreator::creator=" + aVar);
        i = aVar;
    }
}
