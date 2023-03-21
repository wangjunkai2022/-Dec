package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.j;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Map;

/* loaded from: classes7.dex */
public class AnalyticsConfig {
    public static boolean CATCH_EXCEPTION = false;
    public static boolean CHANGE_CATCH_EXCEPTION_NOTALLOW = true;
    public static boolean CLEAR_EKV_BL = false;
    public static boolean CLEAR_EKV_WL = false;
    public static final String DEBUG_KEY = "debugkey";
    public static final String DEBUG_MODE_PERIOD = "sendaging";
    public static String GPU_RENDERER = "";
    public static String GPU_VENDER = "";
    public static final String RTD_PERIOD = "period";
    public static final String RTD_SP_FILE = "um_rtd_conf";
    public static final String RTD_START_TIME = "startTime";

    /* renamed from: a  reason: collision with root package name */
    public static double[] f12115a = null;
    public static String b = null;
    public static String c = null;
    public static String d = null;
    public static int e = 0;
    public static boolean enable = true;
    public static Object f = new Object();
    public static boolean g = false;
    public static String h = "";
    public static long kContinueSessionMillis = 30000;
    public static String mWrapperType;
    public static String mWrapperVersion;

    public static void a(String str) {
        c = str;
    }

    public static String getAppkey(Context context) {
        return UMUtils.getAppkey(context);
    }

    public static String getChannel(Context context) {
        return UMUtils.getChannel(context);
    }

    public static String getGameSdkVersion(Context context) {
        try {
            Class<?> cls = Class.forName("com.umeng.analytics.game.GameSdkVersion");
            return (String) cls.getDeclaredField("SDK_VERSION").get(cls);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static double[] getLocation() {
        return f12115a;
    }

    public static String getRealTimeDebugKey() {
        String str;
        synchronized (f) {
            str = h;
        }
        return str;
    }

    public static String getSecretKey(Context context) {
        if (TextUtils.isEmpty(d)) {
            d = com.umeng.common.b.a(context).c();
        }
        return d;
    }

    public static int getVerticalType(Context context) {
        if (e == 0) {
            e = com.umeng.common.b.a(context).d();
        }
        return e;
    }

    public static boolean isRealTimeDebugMode() {
        boolean z;
        synchronized (f) {
            z = g;
        }
        return z;
    }

    public static void turnOffRealTimeDebug() {
        synchronized (f) {
            g = false;
            h = "";
        }
    }

    public static void turnOnRealTimeDebug(Map<String, String> map) {
        synchronized (f) {
            g = true;
            if (map != null && map.containsKey(DEBUG_KEY)) {
                h = map.get(DEBUG_KEY);
            }
        }
    }

    public static void a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            d = str;
            com.umeng.common.b.a(context).a(d);
            return;
        }
        UMLog.aq(j.A, 0, "\\|");
    }

    public static void a(Context context, int i) {
        e = i;
        com.umeng.common.b.a(context).a(e);
    }
}
