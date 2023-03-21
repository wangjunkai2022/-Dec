package com.swl.gg.sdk;

import android.app.Application;
import android.text.TextUtils;
import android.widget.ImageView;
import com.apk.d50;
import com.apk.eg;
import com.apk.g50;
import com.apk.i;
import com.apk.k40;
import com.apk.tt;
import com.apk.u;
import com.apk.u60;
import com.apk.z;
import com.apk.ze;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.tencent.mmkv.MMKV;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class TrAdSdk {
    public static boolean isOpenLog = false;
    public static Application mApp = null;
    public static u60 mImageLoader = null;
    public static boolean openAdClose = true;
    public static boolean openAdQuickDownload = true;
    public static boolean openVideoCache_show = true;

    public static JSONObject getAdJson(String str) {
        if (mImageLoader != null) {
            return i.m1176if(str);
        }
        return null;
    }

    public static Application getApp() {
        return mApp;
    }

    public static String getChannel() {
        String m3156abstract = mImageLoader != null ? ze.m3156abstract() : null;
        return TextUtils.isEmpty(m3156abstract) ? "GM_SDK_CHANNEL" : m3156abstract;
    }

    public static String getCsjAppId() {
        u60 u60Var = mImageLoader;
        if (u60Var != null) {
            return ((z) u60Var).m3125if();
        }
        return null;
    }

    public static String getDevOaid() {
        if (mImageLoader != null) {
            return eg.m609public();
        }
        return null;
    }

    public static String getGdtAppId() {
        u60 u60Var = mImageLoader;
        if (u60Var != null) {
            return ((z) u60Var).m3124for();
        }
        return null;
    }

    public static String getGroMoreAppId() {
        if (mImageLoader != null) {
            return tt.m2620do("SP_AD_TT_GM_APPID_KEY", "");
        }
        return null;
    }

    public static u60 getTrAdSdkLoader() {
        return mImageLoader;
    }

    public static String getUserId() {
        String m613super = mImageLoader != null ? eg.m613super() : null;
        return TextUtils.isEmpty(m613super) ? k40.m1466try() : m613super;
    }

    public static void init(Application application, u60 u60Var) {
        if (application != null && u60Var != null) {
            mApp = application;
            mImageLoader = u60Var;
            String m2620do = tt.m2620do("SP_AD_TT_GM_APPID_KEY", "");
            if (!TextUtils.isEmpty(m2620do)) {
                k40.m1453native(m2620do);
            }
            z zVar = (z) u60Var;
            String m3124for = zVar.m3124for();
            if (!TextUtils.isEmpty(m3124for)) {
                k40.m1441const(m3124for);
            }
            String m3125if = zVar.m3125if();
            if (!TextUtils.isEmpty(m3125if)) {
                k40.m1459static(m3125if);
            }
            initMMKV(application);
            return;
        }
        throw new IllegalStateException("TrAdSdkLoader 不能为空！");
    }

    public static void initMMKV(Application application) {
        try {
            MMKV.initialize(application);
        } catch (Exception unused) {
        }
    }

    public static boolean isAdQuickDownload() {
        return openAdQuickDownload;
    }

    public static boolean isDayMax(String str, int i) {
        if (i > 0) {
            String m1462switch = k40.m1462switch();
            if (g50.m943do(m1462switch + "#" + str + "#AD_STRATEGY_TYPE_REQ_DAY_MAX_KEY", 0) >= i) {
                return true;
            }
        }
        return false;
    }

    public static boolean isFullAdType(String str) {
        return k40.m1443default(str) || k40.m1440class(str) || "gm_qpsp".equals(str) || "gm_cqpsp".equals(str);
    }

    public static boolean isInitAds() {
        return k40.f2470new || k40.f2468for || k40.f2466case;
    }

    public static boolean isOpenAdClose() {
        return openAdClose;
    }

    public static boolean isOpenLog() {
        return isOpenLog;
    }

    public static boolean isRewardAdType(String str) {
        return k40.m1436abstract(str) || k40.m1457public(str) || "gm_jlsp".equals(str);
    }

    public static boolean isSplashAdType(String str) {
        return k40.m1456private(str) || "csj".equals(str) || "gm".equals(str);
    }

    public static boolean isTheAd(String str) {
        return k40.m1456private(str) || k40.m1448finally(str) || k40.m1455package(str) || k40.m1443default(str) || k40.m1436abstract(str) || "gdt_banner_list".equals(str) || "gdt_native_page".equals(str) || "gdt_native_rect".equals(str) || "csj".equals(str) || "csjmb".equals(str) || "csj_banner_list".equals(str) || k40.m1440class(str) || k40.m1457public(str) || "gm".equals(str) || "gm_jlsp".equals(str) || "gm_qpsp".equals(str) || "gm_cqpsp".equals(str);
    }

    public static boolean isVideoCacheShow() {
        return openVideoCache_show;
    }

    public static void loadImageGlide(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null || mImageLoader == null) {
            return;
        }
        getApp();
        u.m2646final(str, imageView);
    }

    public static void openAdClose(boolean z) {
        openAdClose = z;
    }

    public static void openAdQuickDownload(boolean z) {
        openAdQuickDownload = z;
    }

    public static void openVideoCache_show(boolean z) {
        openVideoCache_show = z;
    }

    public static void preInit(Application application) {
        if (application != null) {
            mApp = application;
            d50.m406do().f824if = true;
            return;
        }
        throw new IllegalStateException("Application 不能为空！");
    }

    public static void resetInit() {
        k40.f2470new = false;
        k40.f2468for = false;
        k40.f2466case = false;
    }

    public static void setDayNightTheme(boolean z) {
        if (z) {
            GMMediationAdSdk.setThemeStatus(0);
        } else {
            GMMediationAdSdk.setThemeStatus(1);
        }
    }

    public static void setLog(boolean z) {
        isOpenLog = z;
    }
}
