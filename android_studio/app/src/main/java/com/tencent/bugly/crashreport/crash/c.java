package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.q;
import com.tencent.bugly.proguard.t;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static int f12055a = 0;
    public static boolean b = false;
    public static int c = 2;
    public static boolean d = false;
    public static int e = 20480;
    public static int f = 20480;
    public static long g = 604800000;
    public static String h = null;
    public static boolean i = false;
    public static String j = null;
    public static int k = 5000;
    public static boolean l = true;
    public static boolean m;
    public static String n;
    public static String o;
    public static c r;
    public final b p;
    public final Context q;
    public final e s;
    public final NativeCrashHandler t;
    public com.tencent.bugly.crashreport.common.strategy.a u;
    public x v;
    public final com.tencent.bugly.crashreport.crash.anr.b w;
    public Boolean x;
    public int y = 31;
    public boolean z = false;

    public c(int i2, Context context, x xVar, boolean z, BuglyStrategy.a aVar, n nVar, String str) {
        f12055a = i2;
        Context a2 = ab.a(context);
        this.q = a2;
        this.u = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.v = xVar;
        v a3 = v.a();
        o a4 = o.a();
        this.p = new b(i2, a2, a3, a4, this.u, aVar, nVar);
        com.tencent.bugly.crashreport.common.info.a a5 = com.tencent.bugly.crashreport.common.info.a.a(a2);
        this.s = new e(a2, this.p, this.u, a5);
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance(a2, a5, this.p, this.u, xVar, z, str);
        this.t = nativeCrashHandler;
        a5.D = nativeCrashHandler;
        this.w = com.tencent.bugly.crashreport.crash.anr.b.a(a2, this.u, a5, xVar, a4, this.p, aVar);
    }

    public final synchronized void c() {
        this.s.a();
        this.t.setUserOpened(true);
        this.w.a(true);
    }

    public final synchronized void d() {
        this.s.b();
        this.t.setUserOpened(false);
        this.w.a(false);
    }

    public final void e() {
        this.s.b();
    }

    public final void f() {
        this.s.a();
    }

    public final void g() {
        this.t.setUserOpened(false);
    }

    public final void h() {
        this.t.setUserOpened(true);
    }

    public final void i() {
        this.w.a(true);
    }

    public final void j() {
        this.w.a(false);
    }

    public final void k() {
        this.t.enableCatchAnrTrace();
    }

    public final synchronized void l() {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i2 < 30) {
                try {
                    y.a("try main sleep for make a test anr! try:%d/30 , kill it if you don't want to wait!", Integer.valueOf(i3));
                    ab.b(5000L);
                    i2 = i3;
                } catch (Throwable th) {
                    if (y.a(th)) {
                        return;
                    }
                    th.printStackTrace();
                    return;
                }
            }
        }
    }

    public final boolean m() {
        return this.w.a();
    }

    public final void n() {
        this.t.checkUploadRecordCrash();
    }

    public final void o() {
        if (com.tencent.bugly.crashreport.common.info.a.b().d.equals(AppInfo.a(this.q))) {
            this.t.removeEmptyNativeRecordFiles();
        }
    }

    public final boolean p() {
        return this.z;
    }

    public final boolean q() {
        return (this.y & 16) > 0;
    }

    public final boolean r() {
        return (this.y & 8) > 0;
    }

    public final boolean s() {
        return (this.y & 4) > 0;
    }

    public final boolean t() {
        return (this.y & 2) > 0;
    }

    public final boolean u() {
        return (this.y & 1) > 0;
    }

    public static synchronized c a(int i2, Context context, boolean z, BuglyStrategy.a aVar, n nVar, String str) {
        c cVar;
        synchronized (c.class) {
            if (r == null) {
                r = new c(1004, context, x.a(), z, aVar, null, null);
            }
            cVar = r;
        }
        return cVar;
    }

    public final boolean b() {
        Boolean bool = this.x;
        if (bool != null) {
            return bool.booleanValue();
        }
        String str = com.tencent.bugly.crashreport.common.info.a.b().d;
        List<q> a2 = o.a().a(1);
        ArrayList arrayList = new ArrayList();
        if (a2 != null && a2.size() > 0) {
            for (q qVar : a2) {
                if (str.equals(qVar.c)) {
                    this.x = Boolean.TRUE;
                    arrayList.add(qVar);
                }
            }
            if (arrayList.size() > 0) {
                o.a().a(arrayList);
            }
            return true;
        }
        this.x = Boolean.FALSE;
        return false;
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            cVar = r;
        }
        return cVar;
    }

    public final void a(StrategyBean strategyBean) {
        this.s.a(strategyBean);
        this.t.onStrategyChanged(strategyBean);
        this.w.b();
    }

    public final synchronized void a(boolean z, boolean z2, boolean z3) {
        this.t.testNativeCrash(z, z2, z3);
    }

    public final void a(final Thread thread, final Throwable th, boolean z, String str, byte[] bArr, final boolean z2, boolean z3) {
        this.v.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    y.c("post a throwable %b", Boolean.valueOf(r2));
                    c.this.s.a(thread, th, false, r5, r6, r7);
                    if (z2) {
                        y.a("clear user datas", new Object[0]);
                        com.tencent.bugly.crashreport.common.info.a.a(c.this.q).y();
                    }
                } catch (Throwable th2) {
                    if (!y.b(th2)) {
                        th2.printStackTrace();
                    }
                    y.e("java catch error: %s", th.toString());
                }
            }
        });
    }

    public final void a(CrashDetailBean crashDetailBean) {
        this.p.e(crashDetailBean);
    }

    public final void a(long j2) {
        x.a().a(new Thread() { // from class: com.tencent.bugly.crashreport.crash.c.2
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                ArrayList arrayList;
                if (!ab.a(c.this.q, "local_crash_lock", (long) FragmentStateAdapter.GRACE_WINDOW_TIME_MS)) {
                    y.c("Failed to lock file for uploading local crash.", new Object[0]);
                    return;
                }
                t.a().b();
                List<CrashDetailBean> a2 = c.this.p.a();
                if (a2 != null && a2.size() > 0) {
                    y.c("Size of crash list: %s", Integer.valueOf(a2.size()));
                    int size = a2.size();
                    if (size > 20) {
                        ArrayList arrayList2 = new ArrayList();
                        Collections.sort(a2);
                        for (int i2 = 0; i2 < 20; i2++) {
                            arrayList2.add(a2.get((size - 1) - i2));
                        }
                        arrayList = arrayList2;
                    } else {
                        arrayList = a2;
                    }
                    c.this.p.a(arrayList, 0L, false, false, false);
                } else {
                    y.c("no crash need to be uploaded at this start", new Object[0]);
                }
                ab.b(c.this.q, "local_crash_lock");
            }
        }, j2);
    }

    public final void a(int i2) {
        this.y = i2;
    }

    public final void a(boolean z) {
        this.z = z;
    }
}
