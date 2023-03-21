package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: AdvertisingIdHelper.java */
/* loaded from: classes8.dex */
public class g {
    public static volatile g c;

    /* renamed from: a  reason: collision with root package name */
    public volatile String f10991a = "";
    public volatile ExecutorService b = ThreadHelper.initSingleThreadExecutor("gaid", 2, new a(this));

    /* compiled from: AdvertisingIdHelper.java */
    /* loaded from: classes8.dex */
    public class a implements RejectedExecutionHandler {
        public a(g gVar) {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    }

    /* compiled from: AdvertisingIdHelper.java */
    /* loaded from: classes8.dex */
    public class b implements Callable<String> {
        public b() {
        }

        public /* synthetic */ b(g gVar, a aVar) {
            this();
        }

        @Override // java.util.concurrent.Callable
        public String call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
                if (advertisingIdInfo != null) {
                    String id = advertisingIdInfo.getId();
                    Logger.d("gaid-", "getAdvertisingId: " + id);
                    g.b(id);
                }
            } catch (Throwable unused) {
            }
            try {
                AdvertisingIdClient.Info advertisingIdInfo2 = AdvertisingIdClient.getAdvertisingIdInfo(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
                if (advertisingIdInfo2 != null) {
                    g.this.f10991a = advertisingIdInfo2.getId();
                    advertisingIdInfo2.isLimitAdTrackingEnabled();
                }
            } catch (Throwable unused2) {
            }
            StringBuilder m1016super = Cgoto.m1016super("mGAId:");
            m1016super.append(g.this.f10991a);
            m1016super.append(" , get gaid consume time :");
            m1016super.append(System.currentTimeMillis() - currentTimeMillis);
            Logger.d("AdvertisingIdHelper", m1016super.toString());
            return g.this.f10991a;
        }
    }

    public static g c() {
        if (c == null) {
            synchronized (g.class) {
                if (c == null) {
                    c = new g();
                }
            }
        }
        return c;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:13:0x004b
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public synchronized void b() {
        /*
            r3 = this;
            monitor-enter(r3)
            java.lang.String r0 = "tt_device_info"
            android.content.Context r1 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()     // Catch: java.lang.Throwable -> L49
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0 r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0.a(r0, r1)     // Catch: java.lang.Throwable -> L49
            java.lang.String r1 = "gaid"
            java.lang.String r2 = ""
            java.lang.String r0 = r0.a(r1, r2)     // Catch: java.lang.Throwable -> L49
            r3.f10991a = r0     // Catch: java.lang.Throwable -> L49
            java.lang.String r0 = "gaid"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L49
            r1.<init>()     // Catch: java.lang.Throwable -> L49
            java.lang.String r2 = "--==-- initGAIdByAsyc-mGAId = "
            r1.append(r2)     // Catch: java.lang.Throwable -> L49
            java.lang.String r2 = r3.f10991a     // Catch: java.lang.Throwable -> L49
            r1.append(r2)     // Catch: java.lang.Throwable -> L49
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L49
            com.bytedance.msdk.adapter.util.Logger.d(r0, r1)     // Catch: java.lang.Throwable -> L49
            java.lang.String r0 = r3.f10991a     // Catch: java.lang.Throwable -> L49
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L49
            java.util.concurrent.ExecutorService r0 = r3.b     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L49
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.g$b r0 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.g$b     // Catch: java.lang.Throwable -> L49
            r1 = 0
            r0.<init>(r3, r1)     // Catch: java.lang.Throwable -> L49
            java.util.concurrent.FutureTask r1 = new java.util.concurrent.FutureTask     // Catch: java.lang.Throwable -> L49
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L49
            java.util.concurrent.ExecutorService r0 = r3.b     // Catch: java.lang.Throwable -> L49
            r0.execute(r1)     // Catch: java.lang.Throwable -> L49
        L49:
            monitor-exit(r3)
            return
        L4b:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.g.b():void");
    }

    public String a() {
        try {
            this.f10991a = c0.a("tt_device_info", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).a("gaid", "");
            Logger.d("gaid", "--==-- getGAIdTimeOut-mGAId = " + this.f10991a);
            if (TextUtils.isEmpty(this.f10991a)) {
                synchronized (this) {
                    if (this.b != null) {
                        FutureTask futureTask = new FutureTask(new b(this, null));
                        this.b.execute(futureTask);
                        this.f10991a = (String) futureTask.get(500000L, TimeUnit.MICROSECONDS);
                        if (!TextUtils.isEmpty(this.f10991a)) {
                            this.b.shutdown();
                            this.b = null;
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return this.f10991a;
    }

    public static void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        c0.a("tt_device_info", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).b("gaid", str);
    }
}
