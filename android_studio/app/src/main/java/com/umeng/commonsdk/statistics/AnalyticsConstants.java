package com.umeng.commonsdk.statistics;

import com.umeng.commonsdk.statistics.common.ULog;

/* loaded from: classes7.dex */
public class AnalyticsConstants {
    public static final String CFG_FIELD_KEY = "cfgfd";
    public static boolean CHECK_DEVICE = true;
    public static final String LOG_TAG = "MobclickAgent";
    public static final String OS = "Android";
    public static final String SDK_TYPE = "Android";
    public static boolean SUB_PROCESS_EVENT = false;
    public static final String ZERO_RESPONSE_FLAG = "iscfg";
    public static int commonDeviceType = 1;
    public static String[] APPLOG_URL_LIST = {UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
    public static final boolean UM_DEBUG = ULog.DEBUG;

    public static synchronized int getDeviceType() {
        int i;
        synchronized (AnalyticsConstants.class) {
            i = commonDeviceType;
        }
        return i;
    }

    public static void setDeviceType(int i) {
        commonDeviceType = i;
    }
}
