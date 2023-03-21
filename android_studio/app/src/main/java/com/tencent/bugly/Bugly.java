package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public class Bugly {
    public static final String SDK_IS_DEV = "false";

    /* renamed from: a  reason: collision with root package name */
    public static boolean f12014a = false;
    public static Context applicationContext = null;
    public static String[] b = {"BuglyCrashModule", "BuglyRqdModule", "BuglyBetaModule"};
    public static String[] c = {"BuglyRqdModule", "BuglyCrashModule", "BuglyBetaModule"};
    public static boolean enable = true;
    public static Boolean isDev;

    public static synchronized String getAppChannel() {
        byte[] bArr;
        synchronized (Bugly.class) {
            com.tencent.bugly.crashreport.common.info.a b2 = com.tencent.bugly.crashreport.common.info.a.b();
            if (b2 == null) {
                return null;
            }
            if (TextUtils.isEmpty(b2.k)) {
                o a2 = o.a();
                if (a2 == null) {
                    return b2.k;
                }
                Map<String, byte[]> a3 = a2.a(556, (n) null, true);
                if (a3 != null && (bArr = a3.get("app_channel")) != null) {
                    return new String(bArr);
                }
            }
            return b2.k;
        }
    }

    public static void init(Context context, String str, boolean z) {
        init(context, str, z, null);
    }

    public static boolean isDev() {
        if (isDev == null) {
            isDev = Boolean.valueOf(Boolean.parseBoolean(SDK_IS_DEV.replace("@", "")));
        }
        return isDev.booleanValue();
    }

    public static synchronized void init(Context context, String str, boolean z, BuglyStrategy buglyStrategy) {
        String[] strArr;
        synchronized (Bugly.class) {
            if (f12014a) {
                return;
            }
            f12014a = true;
            Context a2 = ab.a(context);
            applicationContext = a2;
            if (a2 == null) {
                return;
            }
            if (isDev()) {
                b = c;
            }
            for (String str2 : b) {
                if (str2.equals("BuglyCrashModule")) {
                    b.a(CrashModule.getInstance());
                } else if (!str2.equals("BuglyBetaModule") && !str2.equals("BuglyRqdModule")) {
                    str2.equals("BuglyFeedbackModule");
                }
            }
            b.f12017a = enable;
            b.a(applicationContext, str, z, buglyStrategy);
        }
    }
}
