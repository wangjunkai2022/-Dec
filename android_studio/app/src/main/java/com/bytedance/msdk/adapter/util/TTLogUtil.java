package com.bytedance.msdk.adapter.util;

import android.text.TextUtils;
import com.apk.Cgoto;

/* loaded from: classes8.dex */
public class TTLogUtil {
    public static final String TAG_EVENT_FILL = "fill";
    public static final String TAG_EVENT_FILL_FAIL = "fill_fail";
    public static final String TAG_EVENT_REQUEST = "request";
    public static final String TAG_EVENT_SHOW = "show";
    public static final String TAG_EVENT_SHOW_LISTEN = "show_listen";

    public static String getTagFirstLevel() {
        return "TTMediationSDK_";
    }

    public static String getTagSecondLevel(String str) {
        if (TextUtils.isEmpty(str)) {
            return getTagFirstLevel();
        }
        return Cgoto.m996else("TTMediationSDK_", str, "_");
    }

    public static String getTagThirdLevelByEvent(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return getTagFirstLevel();
        }
        if (TextUtils.isEmpty(str2)) {
            return getTagSecondLevel(str);
        }
        return "TTMediationSDK_" + str + "_" + str2 + "_";
    }

    public static String getTagThirdLevelById(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return getTagFirstLevel();
        }
        if (TextUtils.isEmpty(str2)) {
            return getTagSecondLevel(str);
        }
        return "TTMediationSDK_" + str + "_" + str2 + "_";
    }
}
