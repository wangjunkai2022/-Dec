package com.tencent.bugly.crashreport.crash;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.y;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public class BuglyBroadcastReceiver extends BroadcastReceiver {
    public static BuglyBroadcastReceiver d;
    public Context b;
    public String c;
    public boolean e = true;

    /* renamed from: a  reason: collision with root package name */
    public IntentFilter f12036a = new IntentFilter();

    public static synchronized BuglyBroadcastReceiver getInstance() {
        BuglyBroadcastReceiver buglyBroadcastReceiver;
        synchronized (BuglyBroadcastReceiver.class) {
            if (d == null) {
                d = new BuglyBroadcastReceiver();
            }
            buglyBroadcastReceiver = d;
        }
        return buglyBroadcastReceiver;
    }

    public synchronized void addFilter(String str) {
        if (!this.f12036a.hasAction(str)) {
            this.f12036a.addAction(str);
        }
        y.c("add action %s", str);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            a(context, intent);
        } catch (Throwable th) {
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public synchronized void register(Context context) {
        this.b = context;
        ab.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    y.a(BuglyBroadcastReceiver.d.getClass(), "Register broadcast receiver of Bugly.", new Object[0]);
                    synchronized (this) {
                        BuglyBroadcastReceiver.this.b.registerReceiver(BuglyBroadcastReceiver.d, BuglyBroadcastReceiver.this.f12036a, "com.tencent.bugly.BuglyBroadcastReceiver.permission", null);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    public synchronized void unregister(Context context) {
        try {
            y.a(getClass(), "Unregister broadcast receiver of Bugly.", new Object[0]);
            context.unregisterReceiver(this);
            this.b = context;
        } catch (Throwable th) {
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized boolean a(Context context, Intent intent) {
        if (context != null && intent != null) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                if (this.e) {
                    this.e = false;
                    return true;
                }
                String b = com.tencent.bugly.crashreport.common.info.b.b(this.b);
                y.c("is Connect BC " + b, new Object[0]);
                y.a("network %s changed to %s", this.c, b);
                if (b == null) {
                    this.c = null;
                    return true;
                }
                String str = this.c;
                this.c = b;
                long currentTimeMillis = System.currentTimeMillis();
                com.tencent.bugly.crashreport.common.strategy.a a2 = com.tencent.bugly.crashreport.common.strategy.a.a();
                v a3 = v.a();
                com.tencent.bugly.crashreport.common.info.a a4 = com.tencent.bugly.crashreport.common.info.a.a(context);
                if (a2 != null && a3 != null && a4 != null) {
                    if (!b.equals(str) && currentTimeMillis - a3.a(c.f12055a) > 30000) {
                        y.a("try to upload crash on network changed.", new Object[0]);
                        c a5 = c.a();
                        if (a5 != null) {
                            a5.a(0L);
                        }
                        y.a("try to upload userinfo on network changed.", new Object[0]);
                        com.tencent.bugly.crashreport.biz.b.f12027a.b();
                    }
                    return true;
                }
                y.d("not inited BC not work", new Object[0]);
                return true;
            }
        }
        return false;
    }
}
