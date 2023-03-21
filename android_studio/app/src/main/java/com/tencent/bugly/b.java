package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.m;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.y;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f12017a = true;
    public static List<a> b = new ArrayList();
    public static boolean c;
    public static o d;
    public static boolean e;

    public static boolean a(com.tencent.bugly.crashreport.common.info.a aVar) {
        List<String> list = aVar.n;
        aVar.getClass();
        return list != null && list.contains("bugly");
    }

    public static synchronized void a(Context context) {
        synchronized (b.class) {
            a(context, null);
        }
    }

    public static synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        synchronized (b.class) {
            if (e) {
                y.d("[init] initial Multi-times, ignore this.", new Object[0]);
            } else if (context == null) {
            } else {
                com.tencent.bugly.crashreport.common.info.a a2 = com.tencent.bugly.crashreport.common.info.a.a(context);
                if (a(a2)) {
                    f12017a = false;
                    return;
                }
                String f = a2.f();
                if (f == null) {
                    return;
                }
                a(context, f, a2.t, buglyStrategy);
            }
        }
    }

    public static synchronized void a(Context context, String str, boolean z, BuglyStrategy buglyStrategy) {
        byte[] bArr;
        synchronized (b.class) {
            if (e) {
                y.d("[init] initial Multi-times, ignore this.", new Object[0]);
            } else if (context != null) {
                if (str == null) {
                    return;
                }
                e = true;
                if (z) {
                    c = true;
                    y.b = true;
                    y.d("Bugly debug模式开启，请在发布时把isDebug关闭。 -- Running in debug model for 'isDebug' is enabled. Please disable it when you release.", new Object[0]);
                    y.e("--------------------------------------------------------------------------------------------", new Object[0]);
                    y.d("Bugly debug模式将有以下行为特性 -- The following list shows the behaviour of debug model: ", new Object[0]);
                    y.d("[1] 输出详细的Bugly SDK的Log -- More detailed log of Bugly SDK will be output to logcat;", new Object[0]);
                    y.d("[2] 每一条Crash都会被立即上报 -- Every crash caught by Bugly will be uploaded immediately.", new Object[0]);
                    y.d("[3] 自定义日志将会在Logcat中输出 -- Custom log will be output to logcat.", new Object[0]);
                    y.e("--------------------------------------------------------------------------------------------", new Object[0]);
                    y.b("[init] Open debug mode of Bugly.", new Object[0]);
                }
                y.a(" crash report start initializing...", new Object[0]);
                y.b("[init] Bugly start initializing...", new Object[0]);
                y.a("[init] Bugly complete version: v%s", "4.0.4");
                Context a2 = ab.a(context);
                com.tencent.bugly.crashreport.common.info.a a3 = com.tencent.bugly.crashreport.common.info.a.a(a2);
                a3.s();
                aa.a(a2);
                d = o.a(a2, b);
                v.a(a2);
                com.tencent.bugly.crashreport.common.strategy.a.a(a2, b);
                m a4 = m.a(a2);
                if (a(a3)) {
                    f12017a = false;
                    return;
                }
                a3.a(str);
                y.a("[param] Set APP ID:%s", str);
                if (buglyStrategy != null) {
                    String appVersion = buglyStrategy.getAppVersion();
                    if (!TextUtils.isEmpty(appVersion)) {
                        if (appVersion.length() > 100) {
                            String substring = appVersion.substring(0, 100);
                            y.d("appVersion %s length is over limit %d substring to %s", appVersion, 100, substring);
                            appVersion = substring;
                        }
                        a3.i = appVersion;
                        y.a("[param] Set App version: %s", buglyStrategy.getAppVersion());
                    }
                    try {
                        if (buglyStrategy.isReplaceOldChannel()) {
                            String appChannel = buglyStrategy.getAppChannel();
                            if (!TextUtils.isEmpty(appChannel)) {
                                if (appChannel.length() > 100) {
                                    String substring2 = appChannel.substring(0, 100);
                                    y.d("appChannel %s length is over limit %d substring to %s", appChannel, 100, substring2);
                                    appChannel = substring2;
                                }
                                d.a(556, "app_channel", appChannel.getBytes(), (n) null, false);
                                a3.k = appChannel;
                            }
                        } else {
                            Map<String, byte[]> a5 = d.a(556, (n) null, true);
                            if (a5 != null && (bArr = a5.get("app_channel")) != null) {
                                a3.k = new String(bArr);
                            }
                        }
                        y.a("[param] Set App channel: %s", a3.k);
                    } catch (Exception e2) {
                        if (c) {
                            e2.printStackTrace();
                        }
                    }
                    String appPackageName = buglyStrategy.getAppPackageName();
                    if (!TextUtils.isEmpty(appPackageName)) {
                        if (appPackageName.length() > 100) {
                            String substring3 = appPackageName.substring(0, 100);
                            y.d("appPackageName %s length is over limit %d substring to %s", appPackageName, 100, substring3);
                            appPackageName = substring3;
                        }
                        a3.c = appPackageName;
                        y.a("[param] Set App package: %s", buglyStrategy.getAppPackageName());
                    }
                    String deviceID = buglyStrategy.getDeviceID();
                    if (deviceID != null) {
                        if (deviceID.length() > 100) {
                            String substring4 = deviceID.substring(0, 100);
                            y.d("deviceId %s length is over limit %d substring to %s", deviceID, 100, substring4);
                            deviceID = substring4;
                        }
                        a3.c(deviceID);
                        y.a("[param] Set device ID: %s", deviceID);
                    }
                    String deviceModel = buglyStrategy.getDeviceModel();
                    if (deviceModel != null) {
                        a3.d(deviceModel);
                        y.a("[param] Set device model: %s", deviceModel);
                    }
                    a3.e = buglyStrategy.isUploadProcess();
                    aa.f12070a = buglyStrategy.isBuglyLogUpload();
                }
                for (int i = 0; i < b.size(); i++) {
                    if (a4.a(b.get(i).id)) {
                        b.get(i).init(a2, z, buglyStrategy);
                    }
                }
                com.tencent.bugly.crashreport.biz.b.a(a2, buglyStrategy);
                com.tencent.bugly.crashreport.common.strategy.a.a().a(buglyStrategy != null ? buglyStrategy.getAppReportDelay() : 0L);
                y.b("[init] Bugly initialization finished.", new Object[0]);
            }
        }
    }

    public static synchronized void a(a aVar) {
        synchronized (b.class) {
            if (!b.contains(aVar)) {
                b.add(aVar);
            }
        }
    }
}
