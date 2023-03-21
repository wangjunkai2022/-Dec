package com.qq.e.comm.managers.setting;

import android.text.TextUtils;
import com.qq.e.comm.util.GDTLogger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public final class GlobalSetting {
    public static final String BD_SDK_WRAPPER = "BD";
    public static final String KS_SDK_WRAPPER = "KS";
    public static final String TT_SDK_WRAPPER = "TT";

    /* renamed from: a  reason: collision with root package name */
    public static volatile Integer f11542a = null;
    public static volatile boolean b = false;
    public static volatile boolean c = true;
    public static volatile Integer d;
    public static volatile Boolean e;
    public static volatile Boolean f;
    public static volatile Boolean g;
    public static volatile Map<String, String> h = new HashMap();
    public static volatile Map<String, String> i = new HashMap();
    public static final Map<String, String> j = new HashMap();
    public static final JSONObject k = new JSONObject();
    public static volatile String l = null;
    public static volatile String m = null;
    public static volatile String n = null;
    public static volatile String o = null;
    public static volatile String p = null;

    public static Boolean getAgreeReadAndroidId() {
        return g;
    }

    public static Boolean getAgreeReadDeviceId() {
        return f;
    }

    public static Integer getChannel() {
        return f11542a;
    }

    public static String getCustomADActivityClassName() {
        return l;
    }

    public static String getCustomLandscapeActivityClassName() {
        return o;
    }

    public static String getCustomPortraitActivityClassName() {
        return m;
    }

    public static String getCustomRewardvideoLandscapeActivityClassName() {
        return p;
    }

    public static String getCustomRewardvideoPortraitActivityClassName() {
        return n;
    }

    public static Map<String, String> getExtraUserData() {
        return Collections.unmodifiableMap(h);
    }

    public static Integer getPersonalizedState() {
        return d;
    }

    public static Map<String, String> getPreloadAdapterMaps() {
        return j;
    }

    public static JSONObject getSettings() {
        return k;
    }

    public static boolean isAgreePrivacyStrategy() {
        return e == null || e.booleanValue();
    }

    public static boolean isAgreeReadAndroidId() {
        if (g == null) {
            return true;
        }
        return g.booleanValue();
    }

    public static boolean isAgreeReadDeviceId() {
        if (f == null) {
            return true;
        }
        return f.booleanValue();
    }

    public static boolean isEnableMediationTool() {
        return b;
    }

    public static boolean isEnableVideoDownloadingCache() {
        return c;
    }

    public static void setAgreePrivacyStrategy(boolean z) {
        if (e == null) {
            e = Boolean.valueOf(z);
        }
    }

    public static void setAgreeReadAndroidId(boolean z) {
        g = Boolean.valueOf(z);
    }

    public static void setAgreeReadDeviceId(boolean z) {
        f = Boolean.valueOf(z);
    }

    public static void setChannel(int i2) {
        if (f11542a == null) {
            f11542a = Integer.valueOf(i2);
        }
    }

    public static void setCustomADActivityClassName(String str) {
        l = str;
    }

    public static void setCustomLandscapeActivityClassName(String str) {
        o = str;
    }

    public static void setCustomPortraitActivityClassName(String str) {
        m = str;
    }

    public static void setCustomRewardvideoLandscapeActivityClassName(String str) {
        p = str;
    }

    public static void setCustomRewardvideoPortraitActivityClassName(String str) {
        n = str;
    }

    public static void setEnableCollectAppInstallStatus(boolean z) {
        try {
            k.putOpt("ecais", Boolean.valueOf(z));
        } catch (JSONException unused) {
        }
    }

    public static void setEnableMediationTool(boolean z) {
        b = z;
    }

    public static void setEnableVideoDownloadingCache(boolean z) {
        c = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setExtraUserData(java.util.Map<java.lang.String, java.lang.String> r3) {
        /*
            if (r3 != 0) goto L3
            return
        L3:
            java.util.Set r0 = r3.entrySet()
            java.util.Iterator r0 = r0.iterator()
        Lb:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L35
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L2f
            java.lang.Object r1 = r1.getValue()
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto Lb
        L2f:
            java.lang.String r3 = "参数key和value不能为空！"
            com.qq.e.comm.util.GDTLogger.e(r3)
            return
        L35:
            com.qq.e.comm.managers.setting.GlobalSetting.h = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.e.comm.managers.setting.GlobalSetting.setExtraUserData(java.util.Map):void");
    }

    public static void setMediaExtData(Map<String, String> map, boolean z) {
        if (map == null) {
            return;
        }
        if (z) {
            i = new HashMap();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                i.put(entry.getKey(), entry.getValue());
            }
        }
        try {
            k.putOpt("media_ext", new JSONObject(i));
        } catch (JSONException unused) {
            GDTLogger.e("setMediaExtData失败，请检查");
        }
    }

    public static void setPersonalizedState(int i2) {
        d = Integer.valueOf(i2);
    }

    public static void setPreloadAdapters(Map<String, String> map) {
        if (map == null) {
            return;
        }
        j.putAll(map);
    }
}
