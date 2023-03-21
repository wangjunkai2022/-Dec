package com.tencent.bugly.crashreport.biz;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import androidx.core.app.NotificationCompat;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.biz.a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static com.tencent.bugly.crashreport.biz.a f12027a = null;
    public static boolean b = false;
    public static int c = 10;
    public static long d = 300000;
    public static long e = 30000;
    public static long f = 0;
    public static int g = 0;
    public static long h = 0;
    public static long i = 0;
    public static long j = 0;
    public static Application.ActivityLifecycleCallbacks k = null;
    public static Class<?> l = null;
    public static boolean m = true;

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public static class a implements Application.ActivityLifecycleCallbacks {
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            String name = activity.getClass().getName();
            if (b.l == null || b.l.getName().equals(name)) {
                y.c(">>> %s onCreated <<<", name);
                com.tencent.bugly.crashreport.common.info.a b = com.tencent.bugly.crashreport.common.info.a.b();
                if (b != null) {
                    b.B.add(b.a(name, "onCreated"));
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            String name = activity.getClass().getName();
            if (b.l == null || b.l.getName().equals(name)) {
                y.c(">>> %s onDestroyed <<<", name);
                com.tencent.bugly.crashreport.common.info.a b = com.tencent.bugly.crashreport.common.info.a.b();
                if (b != null) {
                    b.B.add(b.a(name, "onDestroyed"));
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            String name = activity.getClass().getName();
            if (b.l == null || b.l.getName().equals(name)) {
                y.c(">>> %s onPaused <<<", name);
                com.tencent.bugly.crashreport.common.info.a b = com.tencent.bugly.crashreport.common.info.a.b();
                if (b == null) {
                    return;
                }
                b.B.add(b.a(name, "onPaused"));
                long currentTimeMillis = System.currentTimeMillis();
                b.q = currentTimeMillis;
                b.r = currentTimeMillis - b.p;
                long unused = b.h = currentTimeMillis;
                if (b.r < 0) {
                    b.r = 0L;
                }
                b.o = NotificationCompat.WearableExtender.KEY_BACKGROUND;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            String name = activity.getClass().getName();
            if (b.l == null || b.l.getName().equals(name)) {
                y.c(">>> %s onResumed <<<", name);
                com.tencent.bugly.crashreport.common.info.a b = com.tencent.bugly.crashreport.common.info.a.b();
                if (b == null) {
                    return;
                }
                b.B.add(b.a(name, "onResumed"));
                b.o = name;
                long currentTimeMillis = System.currentTimeMillis();
                b.p = currentTimeMillis;
                b.s = currentTimeMillis - b.i;
                long j = b.p - b.h;
                if (j > (b.f > 0 ? b.f : b.e)) {
                    b.d();
                    b.g();
                    y.a("[session] launch app one times (app in background %d seconds and over %d seconds)", Long.valueOf(j / 1000), Long.valueOf(b.e / 1000));
                    if (b.g % b.c == 0) {
                        b.f12027a.a(4, b.m, 0L);
                        return;
                    }
                    b.f12027a.a(4, false, 0L);
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (currentTimeMillis2 - b.j > b.d) {
                        long unused = b.j = currentTimeMillis2;
                        y.a("add a timer to upload hot start user info", new Object[0]);
                        if (b.m) {
                            x.a().a(new a.RunnableC0180a(null, true), b.d);
                        }
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            y.c(">>> %s onStart <<<", activity.getClass().getName());
            com.tencent.bugly.crashreport.common.info.a.b().a(activity.hashCode(), true);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            y.c(">>> %s onStop <<<", activity.getClass().getName());
            com.tencent.bugly.crashreport.common.info.a.b().a(activity.hashCode(), false);
        }
    }

    public static /* synthetic */ String a(String str, String str2) {
        return ab.a() + "  " + str + "  " + str2 + "\n";
    }

    public static /* synthetic */ int g() {
        int i2 = g;
        g = i2 + 1;
        return i2;
    }

    public static void a(final Context context, final BuglyStrategy buglyStrategy) {
        long j2;
        if (b) {
            return;
        }
        boolean z = com.tencent.bugly.crashreport.common.info.a.a(context).e;
        m = z;
        f12027a = new com.tencent.bugly.crashreport.biz.a(context, z);
        b = true;
        if (buglyStrategy != null) {
            l = buglyStrategy.getUserInfoActivity();
            j2 = buglyStrategy.getAppReportDelay();
        } else {
            j2 = 0;
        }
        if (j2 <= 0) {
            c(context, buglyStrategy);
        } else {
            x.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.biz.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.c(context, buglyStrategy);
                }
            }, j2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r12, com.tencent.bugly.BuglyStrategy r13) {
        /*
            r0 = 1
            r1 = 0
            if (r13 == 0) goto Ld
            boolean r2 = r13.recordUserInfoOnceADay()
            boolean r13 = r13.isEnableUserInfo()
            goto Lf
        Ld:
            r13 = 1
            r2 = 0
        Lf:
            r3 = 0
            if (r2 == 0) goto L6a
            com.tencent.bugly.crashreport.common.info.a r13 = com.tencent.bugly.crashreport.common.info.a.a(r12)
            java.lang.String r2 = r13.d
            com.tencent.bugly.crashreport.biz.a r5 = com.tencent.bugly.crashreport.biz.b.f12027a
            java.util.List r2 = r5.a(r2)
            if (r2 == 0) goto L65
            r5 = 0
        L22:
            int r6 = r2.size()
            if (r5 >= r6) goto L65
            java.lang.Object r6 = r2.get(r5)
            com.tencent.bugly.crashreport.biz.UserInfoBean r6 = (com.tencent.bugly.crashreport.biz.UserInfoBean) r6
            java.lang.String r7 = r6.n
            java.lang.String r8 = r13.i
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L62
            int r7 = r6.b
            if (r7 != r0) goto L62
            long r7 = com.tencent.bugly.proguard.ab.b()
            int r9 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r9 <= 0) goto L65
            long r9 = r6.e
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 < 0) goto L62
            long r5 = r6.f
            int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r13 > 0) goto L60
            com.tencent.bugly.crashreport.biz.a r13 = com.tencent.bugly.crashreport.biz.b.f12027a
            com.tencent.bugly.proguard.x r2 = com.tencent.bugly.proguard.x.a()
            if (r2 == 0) goto L60
            com.tencent.bugly.crashreport.biz.a$2 r5 = new com.tencent.bugly.crashreport.biz.a$2
            r5.<init>()
            r2.a(r5)
        L60:
            r13 = 0
            goto L66
        L62:
            int r5 = r5 + 1
            goto L22
        L65:
            r13 = 1
        L66:
            if (r13 != 0) goto L69
            return
        L69:
            r13 = 0
        L6a:
            com.tencent.bugly.crashreport.common.info.a r2 = com.tencent.bugly.crashreport.common.info.a.b()
            if (r2 == 0) goto L79
            boolean r5 = b(r12)
            if (r5 == 0) goto L79
            r2.a(r1, r0)
        L79:
            if (r13 == 0) goto La8
            r13 = 0
            android.content.Context r2 = r12.getApplicationContext()
            boolean r2 = r2 instanceof android.app.Application
            if (r2 == 0) goto L8b
            android.content.Context r12 = r12.getApplicationContext()
            r13 = r12
            android.app.Application r13 = (android.app.Application) r13
        L8b:
            if (r13 == 0) goto La8
            android.app.Application$ActivityLifecycleCallbacks r12 = com.tencent.bugly.crashreport.biz.b.k     // Catch: java.lang.Exception -> L9e
            if (r12 != 0) goto L98
            com.tencent.bugly.crashreport.biz.b$a r12 = new com.tencent.bugly.crashreport.biz.b$a     // Catch: java.lang.Exception -> L9e
            r12.<init>()     // Catch: java.lang.Exception -> L9e
            com.tencent.bugly.crashreport.biz.b.k = r12     // Catch: java.lang.Exception -> L9e
        L98:
            android.app.Application$ActivityLifecycleCallbacks r12 = com.tencent.bugly.crashreport.biz.b.k     // Catch: java.lang.Exception -> L9e
            r13.registerActivityLifecycleCallbacks(r12)     // Catch: java.lang.Exception -> L9e
            goto La8
        L9e:
            r12 = move-exception
            boolean r13 = com.tencent.bugly.proguard.y.a(r12)
            if (r13 != 0) goto La8
            r12.printStackTrace()
        La8:
            boolean r12 = com.tencent.bugly.crashreport.biz.b.m
            if (r12 == 0) goto Ld4
            long r12 = java.lang.System.currentTimeMillis()
            com.tencent.bugly.crashreport.biz.b.i = r12
            com.tencent.bugly.crashreport.biz.a r12 = com.tencent.bugly.crashreport.biz.b.f12027a
            r12.a(r0, r1, r3)
            java.lang.Object[] r12 = new java.lang.Object[r1]
            java.lang.String r13 = "[session] launch app, new start"
            com.tencent.bugly.proguard.y.a(r13, r12)
            com.tencent.bugly.crashreport.biz.a r12 = com.tencent.bugly.crashreport.biz.b.f12027a
            r12.a()
            com.tencent.bugly.crashreport.biz.a r12 = com.tencent.bugly.crashreport.biz.b.f12027a
            r0 = 21600000(0x1499700, double:1.0671818E-316)
            com.tencent.bugly.proguard.x r13 = com.tencent.bugly.proguard.x.a()
            com.tencent.bugly.crashreport.biz.a$c r2 = new com.tencent.bugly.crashreport.biz.a$c
            r2.<init>(r0)
            r13.a(r2, r0)
        Ld4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.biz.b.c(android.content.Context, com.tencent.bugly.BuglyStrategy):void");
    }

    public static boolean b(Context context) {
        try {
            int myPid = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == myPid && runningAppProcessInfo.importance == 100) {
                    return true;
                }
            }
        } catch (Throwable th) {
            y.b(th);
        }
        return false;
    }

    public static void a(long j2) {
        if (j2 < 0) {
            j2 = com.tencent.bugly.crashreport.common.strategy.a.a().c().o;
        }
        f = j2;
    }

    public static void a(StrategyBean strategyBean, boolean z) {
        x a2;
        com.tencent.bugly.crashreport.biz.a aVar = f12027a;
        if (aVar != null && !z && (a2 = x.a()) != null) {
            a2.a(new a.AnonymousClass2());
        }
        if (strategyBean == null) {
            return;
        }
        long j2 = strategyBean.o;
        if (j2 > 0) {
            e = j2;
        }
        int i2 = strategyBean.t;
        if (i2 > 0) {
            c = i2;
        }
        long j3 = strategyBean.u;
        if (j3 > 0) {
            d = j3;
        }
    }

    public static void a() {
        com.tencent.bugly.crashreport.biz.a aVar = f12027a;
        if (aVar != null) {
            aVar.a(2, false, 0L);
        }
    }

    public static void a(Context context) {
        if (!b || context == null) {
            return;
        }
        Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
        if (application != null) {
            try {
                if (k != null) {
                    application.unregisterActivityLifecycleCallbacks(k);
                }
            } catch (Exception e2) {
                if (!y.a(e2)) {
                    e2.printStackTrace();
                }
            }
        }
        b = false;
    }
}
