package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.v;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
/* compiled from: SdkInitEventUtils.java */
/* loaded from: classes8.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static Context f10978a;
    public static a b;
    public static a c;

    /* compiled from: SdkInitEventUtils.java */
    /* loaded from: classes8.dex */
    public static class a {
        public final String c;
        public final long d;
        public final int e;
        public final int f;
        public volatile boolean b = false;
        public int h = 0;
        public final long g = System.currentTimeMillis();

        /* renamed from: a  reason: collision with root package name */
        public final Handler f10979a = new Handler(Looper.getMainLooper());

        /* compiled from: SdkInitEventUtils.java */
        /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public class RunnableC0050a implements Runnable {
            public RunnableC0050a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.b(v.d(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()));
                a.d(a.this);
                if (a.this.h >= 5 || e.d()) {
                    a.this.a(1);
                    return;
                }
                StringBuilder m1016super = Cgoto.m1016super("--==-- 重试一次 eventType:");
                m1016super.append(a.this.c);
                m1016super.append(", 重试次数：");
                m1016super.append(a.this.h);
                Logger.d("TMe", m1016super.toString());
                a.this.a();
            }
        }

        public a(String str, long j, int i, int i2) {
            this.c = str;
            this.d = j;
            this.e = i;
            this.f = i2;
        }

        public static /* synthetic */ int d(a aVar) {
            int i = aVar.h;
            aVar.h = i + 1;
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f10979a.postDelayed(new RunnableC0050a(), 500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x008f, code lost:
            if (r1 == 1) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0092, code lost:
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(r8.d, r8.e, r8.f, r8.g);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public synchronized void a(int r9) {
            /*
                r8 = this;
                monitor-enter(r8)
                android.os.Handler r0 = r8.f10979a     // Catch: java.lang.Throwable -> La5
                r1 = 0
                r0.removeCallbacksAndMessages(r1)     // Catch: java.lang.Throwable -> La5
                boolean r0 = r8.b     // Catch: java.lang.Throwable -> La5
                if (r0 == 0) goto Ld
                monitor-exit(r8)
                return
            Ld:
                r0 = 1
                r8.b = r0     // Catch: java.lang.Throwable -> La5
                if (r9 != r0) goto L41
                java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La5
                r9.<init>()     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = "--==-- 最终上报：eventType:"
                r9.append(r1)     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = r8.c     // Catch: java.lang.Throwable -> La5
                r9.append(r1)     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = ", 重试次数："
                r9.append(r1)     // Catch: java.lang.Throwable -> La5
                int r1 = r8.h     // Catch: java.lang.Throwable -> La5
                r9.append(r1)     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = ", did: "
                r9.append(r1)     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.e.a()     // Catch: java.lang.Throwable -> La5
                r9.append(r1)     // Catch: java.lang.Throwable -> La5
                java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = "TMe"
                com.bytedance.msdk.adapter.util.Logger.d(r1, r9)     // Catch: java.lang.Throwable -> La5
                goto L68
            L41:
                r1 = 2
                if (r9 != r1) goto L68
                java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La5
                r9.<init>()     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = "--==-- 最终上报：eventType:"
                r9.append(r1)     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = r8.c     // Catch: java.lang.Throwable -> La5
                r9.append(r1)     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = ", 从applog回调中上报, did: "
                r9.append(r1)     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.e.a()     // Catch: java.lang.Throwable -> La5
                r9.append(r1)     // Catch: java.lang.Throwable -> La5
                java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> La5
                java.lang.String r1 = "TMe"
                com.bytedance.msdk.adapter.util.Logger.d(r1, r9)     // Catch: java.lang.Throwable -> La5
            L68:
                java.lang.String r9 = r8.c     // Catch: java.lang.Throwable -> La5
                r1 = -1
                int r2 = r9.hashCode()     // Catch: java.lang.Throwable -> La5
                r3 = -834688111(0xffffffffce3fab91, float:-8.0392301E8)
                if (r2 == r3) goto L84
                r3 = 270071285(0x1018f5f5, float:3.0166193E-29)
                if (r2 == r3) goto L7a
                goto L8d
            L7a:
                java.lang.String r2 = "sdk_init"
                boolean r9 = r9.equals(r2)     // Catch: java.lang.Throwable -> La5
                if (r9 == 0) goto L8d
                r1 = 0
                goto L8d
            L84:
                java.lang.String r2 = "sdk_init_end"
                boolean r9 = r9.equals(r2)     // Catch: java.lang.Throwable -> La5
                if (r9 == 0) goto L8d
                r1 = 1
            L8d:
                if (r1 == 0) goto L9e
                if (r1 == r0) goto L92
                goto La3
            L92:
                long r2 = r8.d     // Catch: java.lang.Throwable -> La5
                int r4 = r8.e     // Catch: java.lang.Throwable -> La5
                int r5 = r8.f     // Catch: java.lang.Throwable -> La5
                long r6 = r8.g     // Catch: java.lang.Throwable -> La5
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(r2, r4, r5, r6)     // Catch: java.lang.Throwable -> La5
                goto La3
            L9e:
                long r0 = r8.g     // Catch: java.lang.Throwable -> La5
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(r0)     // Catch: java.lang.Throwable -> La5
            La3:
                monitor-exit(r8)
                return
            La5:
                r9 = move-exception
                monitor-exit(r8)
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.e.a.a(int):void");
        }
    }

    public static Context b() {
        Context context = f10978a;
        return context != null ? context : bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d();
    }

    public static String c() {
        return c0.a("tt_device_info", b()).a("did", (String) null);
    }

    public static boolean d() {
        return !TextUtils.isEmpty(c0.a("tt_device_info", b()).a("did", (String) null));
    }

    public static void e() {
        a aVar = new a("sdk_init", 0L, 0, 0);
        b = aVar;
        aVar.a();
    }

    public static void f() {
        a aVar = b;
        if (aVar != null) {
            if (!aVar.b) {
                b.a(2);
                b = null;
                return;
            }
            Logger.d("TMe", "--==-- applog回调触发时，sdkInit埋点已经上报，直接return");
            b = null;
            return;
        }
        Logger.d("TMe", "--==-- sdkInit埋点还未产生，applog回调已触发，直接return");
    }

    public static void g() {
        a aVar = c;
        if (aVar != null) {
            if (!aVar.b) {
                c.a(2);
                c = null;
                return;
            }
            Logger.d("TMe", "--==-- applog回调触发时，sdkInitEnd埋点已经上报，直接return");
            c = null;
            return;
        }
        Logger.d("TMe", "--==-- sdkInitEnd埋点还未产生，applog回调已触发，直接return");
    }

    public static void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        c0.a("tt_device_info", b()).b("did", str);
    }

    public static void a(Context context) {
        f10978a = context;
    }

    public static void a(long j, int i, int i2) {
        a aVar = new a("sdk_init_end", j, i, i2);
        c = aVar;
        aVar.a();
    }
}
