package com.tencent.bugly.crashreport.common.strategy;

import android.content.Context;
import com.tencent.bugly.crashreport.biz.b;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.aq;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.q;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import java.util.List;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f12034a = 1000;
    public static a b;
    public static String h;
    public final List<com.tencent.bugly.a> c;
    public final x d;
    public final StrategyBean e;
    public StrategyBean f = null;
    public Context g;

    public a(Context context, List<com.tencent.bugly.a> list) {
        String str;
        this.g = context;
        if (com.tencent.bugly.crashreport.common.info.a.a(context) != null) {
            String str2 = com.tencent.bugly.crashreport.common.info.a.a(context).x;
            if ("oversea".equals(str2)) {
                str = "https://astat.bugly.qcloud.com/rqd/async";
            } else {
                str = "na_https".equals(str2) ? "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async" : "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async";
            }
            StrategyBean.f12033a = str;
            StrategyBean.b = str;
        }
        this.e = new StrategyBean();
        this.c = list;
        this.d = x.a();
    }

    public static StrategyBean d() {
        byte[] bArr;
        List<q> a2 = o.a().a(2);
        if (a2 == null || a2.size() <= 0 || (bArr = a2.get(0).g) == null) {
            return null;
        }
        return (StrategyBean) ab.a(bArr, StrategyBean.CREATOR);
    }

    public final StrategyBean c() {
        StrategyBean strategyBean = this.f;
        if (strategyBean != null) {
            if (!ab.c(strategyBean.p)) {
                this.f.p = StrategyBean.f12033a;
            }
            if (!ab.c(this.f.q)) {
                this.f.q = StrategyBean.b;
            }
            return this.f;
        }
        if (!ab.a(h) && ab.c(h)) {
            StrategyBean strategyBean2 = this.e;
            String str = h;
            strategyBean2.p = str;
            strategyBean2.q = str;
        }
        return this.e;
    }

    public final synchronized boolean b() {
        return this.f != null;
    }

    public static synchronized a a(Context context, List<com.tencent.bugly.a> list) {
        a aVar;
        synchronized (a.class) {
            if (b == null) {
                b = new a(context, list);
            }
            aVar = b;
        }
        return aVar;
    }

    public final void a(long j) {
        this.d.a(new Thread() { // from class: com.tencent.bugly.crashreport.common.strategy.a.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    Map<String, byte[]> a2 = o.a().a(a.f12034a, (n) null, true);
                    if (a2 != null) {
                        byte[] bArr = a2.get("device");
                        byte[] bArr2 = a2.get("gateway");
                        if (bArr != null) {
                            com.tencent.bugly.crashreport.common.info.a.a(a.this.g).f(new String(bArr));
                        }
                        if (bArr2 != null) {
                            com.tencent.bugly.crashreport.common.info.a.a(a.this.g).e(new String(bArr2));
                        }
                    }
                    a.this.f = a.d();
                    if (a.this.f != null) {
                        if (ab.a(a.h) || !ab.c(a.h)) {
                            a.this.f.p = StrategyBean.f12033a;
                            a.this.f.q = StrategyBean.b;
                        } else {
                            a.this.f.p = a.h;
                            a.this.f.q = a.h;
                        }
                    }
                } catch (Throwable th) {
                    if (!y.a(th)) {
                        th.printStackTrace();
                    }
                }
                a aVar = a.this;
                aVar.a(aVar.f, false);
            }
        }, j);
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            aVar = b;
        }
        return aVar;
    }

    public final void a(StrategyBean strategyBean, boolean z) {
        y.c("[Strategy] Notify %s", b.class.getName());
        b.a(strategyBean, z);
        for (com.tencent.bugly.a aVar : this.c) {
            try {
                y.c("[Strategy] Notify %s", aVar.getClass().getName());
                aVar.onServerStrategyChanged(strategyBean);
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static void a(String str) {
        if (!ab.a(str) && ab.c(str)) {
            h = str;
        } else {
            y.d("URL user set is invalid.", new Object[0]);
        }
    }

    public final void a(aq aqVar) {
        if (aqVar == null) {
            return;
        }
        StrategyBean strategyBean = this.f;
        if (strategyBean == null || aqVar.h != strategyBean.n) {
            StrategyBean strategyBean2 = new StrategyBean();
            strategyBean2.e = aqVar.f12084a;
            strategyBean2.g = aqVar.c;
            strategyBean2.f = aqVar.b;
            if (ab.a(h) || !ab.c(h)) {
                if (ab.c(aqVar.d)) {
                    y.c("[Strategy] Upload url changes to %s", aqVar.d);
                    strategyBean2.p = aqVar.d;
                }
                if (ab.c(aqVar.e)) {
                    y.c("[Strategy] Exception upload url changes to %s", aqVar.e);
                    strategyBean2.q = aqVar.e;
                }
            }
            ap apVar = aqVar.f;
            if (apVar != null && !ab.a(apVar.f12083a)) {
                strategyBean2.r = aqVar.f.f12083a;
            }
            long j = aqVar.h;
            if (j != 0) {
                strategyBean2.n = j;
            }
            Map<String, String> map = aqVar.g;
            if (map != null && map.size() > 0) {
                Map<String, String> map2 = aqVar.g;
                strategyBean2.s = map2;
                String str = map2.get("B11");
                strategyBean2.h = str != null && str.equals("1");
                String str2 = aqVar.g.get("B3");
                if (str2 != null) {
                    strategyBean2.v = Long.parseLong(str2);
                }
                int i = aqVar.i;
                strategyBean2.o = i;
                strategyBean2.u = i;
                String str3 = aqVar.g.get("B27");
                if (str3 != null && str3.length() > 0) {
                    try {
                        int parseInt = Integer.parseInt(str3);
                        if (parseInt > 0) {
                            strategyBean2.t = parseInt;
                        }
                    } catch (Exception e) {
                        if (!y.a(e)) {
                            e.printStackTrace();
                        }
                    }
                }
                String str4 = aqVar.g.get("B25");
                strategyBean2.j = str4 != null && str4.equals("1");
            }
            y.a("[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d", Boolean.valueOf(strategyBean2.e), Boolean.valueOf(strategyBean2.g), Boolean.valueOf(strategyBean2.f), Boolean.valueOf(strategyBean2.h), Boolean.valueOf(strategyBean2.i), Boolean.valueOf(strategyBean2.l), Boolean.valueOf(strategyBean2.m), Long.valueOf(strategyBean2.o), Boolean.valueOf(strategyBean2.j), Long.valueOf(strategyBean2.n));
            this.f = strategyBean2;
            if (!ab.c(aqVar.d)) {
                y.c("[Strategy] download url is null", new Object[0]);
                this.f.p = "";
            }
            if (!ab.c(aqVar.e)) {
                y.c("[Strategy] download crashurl is null", new Object[0]);
                this.f.q = "";
            }
            o.a().b(2);
            q qVar = new q();
            qVar.b = 2;
            qVar.f12099a = strategyBean2.c;
            qVar.e = strategyBean2.d;
            qVar.g = ab.a(strategyBean2);
            o.a().a(qVar);
            a(strategyBean2, true);
        }
    }
}
