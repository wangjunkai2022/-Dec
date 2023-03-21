package com.bytedance.msdk.api.v2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.z;
import com.bytedance.msdk.adapter.config.DefaultAdapterClasses;
import com.bytedance.msdk.adapter.config.ITTAdapterConfiguration;
import com.bytedance.msdk.adapter.config.TTBaseAdapterConfiguration;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.activity.TTDelegateActivity;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes8.dex */
public final class GMMediationAdSdk {
    public static boolean configLoadSuccess() {
        return a.f().w();
    }

    public static String getAppId() {
        return b.G().b();
    }

    public static String getAppName() {
        return b.G().h();
    }

    public static String getPangleData() {
        return b.G().j();
    }

    public static Map<String, String> getPangleExtraData() {
        return b.G().d();
    }

    public static boolean getPanglePaid() {
        return b.G().A();
    }

    public static String getSdkVersion() {
        return "3.6.0.1";
    }

    public static String getValueFromPPeInfo(String str) {
        return a.d() == null ? "" : c0.a("tt_mediation_ppe_info", a.d()).a(str, "");
    }

    public static String getZbh(Context context) {
        return z.a();
    }

    @Deprecated
    public static void initUnityForBanner(Activity activity) {
    }

    public static void initialize(@NonNull Context context, @NonNull GMAdConfig gMAdConfig) {
        if (context == null || gMAdConfig == null) {
            return;
        }
        try {
            System.loadLibrary("notpluginpro");
        } catch (Throwable unused) {
        }
        if (gMAdConfig.isDebug()) {
            Logger.openDebugMode();
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.a.d();
        }
        l.a(context);
        d.a(gMAdConfig, context.getApplicationContext());
    }

    public static boolean isAdapterVersionFit(String str, String str2) {
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.b.b(str, str2);
    }

    public static boolean isAdnVersionFit(String str, String str2) {
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.b.c(str, str2);
    }

    public static boolean isTestDemo() {
        return b.G().E();
    }

    public static void preload(final Activity activity, final List<GMPreloadRequestInfo> list, final int i, final int i2) {
        registerConfigCallback(new GMSettingConfigCallback() { // from class: com.bytedance.msdk.api.v2.GMMediationAdSdk.1
            @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
            public void configLoad() {
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(activity, list, i, i2);
            }
        });
    }

    public static void registerConfigCallback(GMSettingConfigCallback gMSettingConfigCallback) {
        a.f().a(gMSettingConfigCallback);
    }

    public static void requestPermissionIfNecessary(Context context) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent(context, TTDelegateActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("type", 3);
        c.a(context, intent, null);
    }

    public static void setPangleData(String str) {
        b.G().d(str);
    }

    public static void setPulisherDid(String str) {
        Logger.d("TTMediationSDK", "app运行中setPulisherDid: " + str);
        b.G().f(str);
    }

    public static void setThemeStatus(int i) {
        HashMap hashMap = new HashMap();
        hashMap.put(TTBaseAdapterConfiguration.TT_MSDK_THEME_STATUS, Integer.valueOf(i));
        Map<String, ITTAdapterConfiguration> e = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.e();
        if (e == null || e.size() == 0) {
            return;
        }
        for (ITTAdapterConfiguration iTTAdapterConfiguration : e.values()) {
            if (iTTAdapterConfiguration != null) {
                iTTAdapterConfiguration.setThemeStatus(hashMap);
            }
        }
    }

    public static void setUserInfoForSegment(GMConfigUserInfoForSegment gMConfigUserInfoForSegment) {
        b.G().a(gMConfigUserInfoForSegment, false);
    }

    public static int showOpenOrInstallAppDialog(GMAppDialogClickListener gMAppDialogClickListener) {
        ITTAdapterConfiguration iTTAdapterConfiguration;
        Map<String, ITTAdapterConfiguration> e = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.e();
        if (e == null || e.size() == 0 || (iTTAdapterConfiguration = e.get(DefaultAdapterClasses.getClassNameByAdnName("gdt"))) == null) {
            return 0;
        }
        return iTTAdapterConfiguration.showOpenOrInstallAppDialog(gMAppDialogClickListener);
    }

    public static void unregisterConfigCallback(GMSettingConfigCallback gMSettingConfigCallback) {
        a.f().b(gMSettingConfigCallback);
    }

    public static void updatePangleConfig(GMAdConfig gMAdConfig) {
        if (gMAdConfig == null) {
            return;
        }
        if (!TextUtils.isEmpty(gMAdConfig.getGMPangleOption().getData())) {
            b.G().d(gMAdConfig.getGMPangleOption().getData());
        }
        if (!TextUtils.isEmpty(gMAdConfig.getGMPangleOption().getKeywords())) {
            b.G().e(gMAdConfig.getGMPangleOption().getKeywords());
        }
        b.G().e(gMAdConfig.getGMPangleOption().getExtraData());
    }

    public static void updatePanglePaid(boolean z) {
        b.G().f(z);
    }

    public static void updatePrivacyConfig(GMPrivacyConfig gMPrivacyConfig) {
        d.a(gMPrivacyConfig);
    }

    public static void requestPermissionIfNecessary(Context context, int[] iArr) {
        Intent intent = new Intent(context, TTDelegateActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("type", 1);
        intent.putExtra(TTDelegateActivity.INTENT_PERMISSIONS, iArr);
        if (context != null) {
            c.a(context, intent, null);
        }
    }
}
