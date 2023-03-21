package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import androidx.appcompat.widget.TooltipCompatHandler;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.umeng.commonsdk.UMConfigure;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static d f12058a;
    public com.tencent.bugly.crashreport.common.strategy.a b;
    public com.tencent.bugly.crashreport.common.info.a c;
    public b d;
    public Context e;

    public d(Context context) {
        c a2 = c.a();
        if (a2 == null) {
            return;
        }
        this.b = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.c = com.tencent.bugly.crashreport.common.info.a.a(context);
        this.d = a2.p;
        this.e = context;
        x.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.d.1
            @Override // java.lang.Runnable
            public final void run() {
                d.a(d.this);
            }
        });
    }

    public static /* synthetic */ void a(d dVar) {
        y.c("[ExtraCrashManager] Trying to notify Bugly agents.", new Object[0]);
        try {
            Class<?> cls = Class.forName("com.tencent.bugly.agent.GameAgent");
            dVar.c.getClass();
            ab.a(cls, "sdkPackageName", "com.tencent.bugly", null);
            y.c("[ExtraCrashManager] Bugly game agent has been notified.", new Object[0]);
        } catch (Throwable unused) {
            y.a("[ExtraCrashManager] no game agent", new Object[0]);
        }
    }

    public static /* synthetic */ void a(d dVar, Thread thread, int i, String str, String str2, String str3, Map map) {
        String str4;
        String str5;
        String str6;
        Thread currentThread = thread == null ? Thread.currentThread() : thread;
        if (i == 4) {
            str4 = UMConfigure.WRAPER_TYPE_UNITY;
        } else if (i == 5 || i == 6) {
            str4 = "Cocos";
        } else if (i != 8) {
            y.d("[ExtraCrashManager] Unknown extra crash type: %d", Integer.valueOf(i));
            return;
        } else {
            str4 = "H5";
        }
        y.e("[ExtraCrashManager] %s Crash Happen", str4);
        try {
            if (!dVar.b.b()) {
                y.d("[ExtraCrashManager] There is no remote strategy, but still store it.", new Object[0]);
            }
            StrategyBean c = dVar.b.c();
            if (!c.e && dVar.b.b()) {
                y.e("[ExtraCrashManager] Crash report was closed by remote. Will not upload to Bugly , print local for helpful!", new Object[0]);
                String a2 = ab.a();
                String str7 = dVar.c.d;
                String name = currentThread.getName();
                b.a(str4, a2, str7, name, str + "\n" + str2 + "\n" + str3, (CrashDetailBean) null);
                y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            if (i == 5 || i == 6) {
                if (!c.j) {
                    y.e("[ExtraCrashManager] %s report is disabled.", str4);
                    y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                    return;
                }
            } else if (i == 8 && !c.k) {
                y.e("[ExtraCrashManager] %s report is disabled.", str4);
                y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            int i2 = i != 8 ? i : 5;
            CrashDetailBean crashDetailBean = new CrashDetailBean();
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.j();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.l();
            crashDetailBean.F = dVar.c.o();
            crashDetailBean.G = dVar.c.n();
            crashDetailBean.H = dVar.c.p();
            crashDetailBean.I = com.tencent.bugly.crashreport.common.info.b.f();
            crashDetailBean.J = com.tencent.bugly.crashreport.common.info.b.g();
            crashDetailBean.K = com.tencent.bugly.crashreport.common.info.b.h();
            crashDetailBean.w = ab.a(c.e, (String) null);
            crashDetailBean.b = i2;
            crashDetailBean.e = dVar.c.k();
            crashDetailBean.f = dVar.c.i;
            crashDetailBean.g = dVar.c.u();
            crashDetailBean.m = dVar.c.g();
            crashDetailBean.n = str;
            crashDetailBean.o = str2;
            str5 = "";
            if (str3 != null) {
                String[] split = str3.split("\n");
                str5 = split.length > 0 ? split[0] : "";
                str6 = str3;
            } else {
                str6 = "";
            }
            crashDetailBean.p = str5;
            crashDetailBean.q = str6;
            crashDetailBean.r = System.currentTimeMillis();
            crashDetailBean.u = ab.a(crashDetailBean.q.getBytes());
            crashDetailBean.z = ab.a(dVar.c.h(), c.f, false);
            crashDetailBean.A = dVar.c.d;
            crashDetailBean.B = currentThread.getName() + "(" + currentThread.getId() + ")";
            crashDetailBean.L = dVar.c.w();
            crashDetailBean.h = dVar.c.t();
            crashDetailBean.P = dVar.c.f12031a;
            crashDetailBean.Q = dVar.c.a();
            if (!c.a().p()) {
                dVar.d.d(crashDetailBean);
            }
            crashDetailBean.T = dVar.c.D();
            crashDetailBean.U = dVar.c.E();
            crashDetailBean.V = dVar.c.x();
            crashDetailBean.W = dVar.c.C();
            crashDetailBean.y = aa.a();
            if (crashDetailBean.R == null) {
                crashDetailBean.R = new LinkedHashMap();
            }
            if (map != null) {
                crashDetailBean.R.putAll(map);
            }
            String a3 = ab.a();
            String str8 = dVar.c.d;
            String name2 = currentThread.getName();
            b.a(str4, a3, str8, name2, str + "\n" + str2 + "\n" + str3, crashDetailBean);
            if (!dVar.d.a(crashDetailBean)) {
                dVar.d.a(crashDetailBean, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS, false);
            }
            y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
            } catch (Throwable th2) {
                y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                throw th2;
            }
        }
    }

    public static d a(Context context) {
        if (f12058a == null) {
            f12058a = new d(context);
        }
        return f12058a;
    }

    public static void a(final Thread thread, final int i, final String str, final String str2, final String str3, final Map<String, String> map) {
        x.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.d.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (d.f12058a != null) {
                        d.a(d.f12058a, thread, i, str, str2, str3, map);
                    } else {
                        y.e("[ExtraCrashManager] Extra crash manager has not been initialized.", new Object[0]);
                    }
                } catch (Throwable th) {
                    if (!y.b(th)) {
                        th.printStackTrace();
                    }
                    y.e("[ExtraCrashManager] Crash error %s %s %s", str, str2, str3);
                }
            }
        });
    }
}
