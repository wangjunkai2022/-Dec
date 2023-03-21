package com.bytedance.msdk.api;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.v2.GMAppDialogClickListener;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.GMPrivacyConfig;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import java.util.Map;

@Deprecated
/* loaded from: classes8.dex */
public final class TTMediationAdSdk {
    @Deprecated
    public static boolean configLoadSuccess() {
        return GMMediationAdSdk.configLoadSuccess();
    }

    public static String getAppId() {
        return GMMediationAdSdk.getAppId();
    }

    public static String getAppName() {
        return GMMediationAdSdk.getAppName();
    }

    public static String getPangleData() {
        return GMMediationAdSdk.getPangleData();
    }

    public static Map<String, String> getPangleExtraData() {
        return GMMediationAdSdk.getPangleExtraData();
    }

    public static boolean getPanglePaid() {
        return GMMediationAdSdk.getPanglePaid();
    }

    public static String getSdkVersion() {
        return "3.6.0.1";
    }

    public static String getValueFromPPeInfo(String str) {
        return GMMediationAdSdk.getValueFromPPeInfo(str);
    }

    public static String getZbh(Context context) {
        return GMMediationAdSdk.getZbh(context);
    }

    @Deprecated
    public static void initUnityForBanner(Activity activity) {
    }

    @Deprecated
    public static void initialize(Context context, TTAdConfig tTAdConfig) {
        if (context == null || tTAdConfig == null) {
            return;
        }
        if (tTAdConfig.isDebug()) {
            Logger.openDebugMode();
            a.d();
        }
        l.a(context);
        d.a(tTAdConfig, context.getApplicationContext());
    }

    public static boolean isAdapterVersionFit(String str, String str2) {
        return GMMediationAdSdk.isAdapterVersionFit(str, str2);
    }

    public static boolean isAdnVersionFit(String str, String str2) {
        return GMMediationAdSdk.isAdnVersionFit(str, str2);
    }

    public static boolean isTestDemo() {
        return GMMediationAdSdk.isTestDemo();
    }

    @Deprecated
    public static void registerConfigCallback(GMSettingConfigCallback gMSettingConfigCallback) {
        GMMediationAdSdk.registerConfigCallback(gMSettingConfigCallback);
    }

    public static void requestPermissionIfNecessary(Context context) {
        GMMediationAdSdk.requestPermissionIfNecessary(context);
    }

    public static void setPangleData(String str) {
        GMMediationAdSdk.setPangleData(str);
    }

    public static void setPulisherDid(String str) {
        Logger.d("TTMediationSDK", "app运行中setPulisherDid: " + str);
        GMMediationAdSdk.setPulisherDid(str);
    }

    public static void setThemeStatus(int i) {
        GMMediationAdSdk.setThemeStatus(i);
    }

    @Deprecated
    public static void setUserInfoForSegment(UserInfoForSegment userInfoForSegment) {
        b.G().a(userInfoForSegment, false);
    }

    public static int showOpenOrInstallAppDialog(GMAppDialogClickListener gMAppDialogClickListener) {
        return GMMediationAdSdk.showOpenOrInstallAppDialog(gMAppDialogClickListener);
    }

    @Deprecated
    public static void unregisterConfigCallback(GMSettingConfigCallback gMSettingConfigCallback) {
        GMMediationAdSdk.unregisterConfigCallback(gMSettingConfigCallback);
    }

    @Deprecated
    public static void updatePangleConfig(TTAdConfig tTAdConfig) {
        if (tTAdConfig == null) {
            return;
        }
        if (!TextUtils.isEmpty(tTAdConfig.getPangleData())) {
            b.G().d(tTAdConfig.getPangleData());
        }
        if (!TextUtils.isEmpty(tTAdConfig.getPangleKeywords())) {
            b.G().e(tTAdConfig.getPangleKeywords());
        }
        b.G().e(tTAdConfig.getExtraData());
    }

    public static void updatePanglePaid(boolean z) {
        GMMediationAdSdk.updatePanglePaid(z);
    }

    public static void updatePrivacyConfig(GMPrivacyConfig gMPrivacyConfig) {
        GMMediationAdSdk.updatePrivacyConfig(gMPrivacyConfig);
    }

    public static void requestPermissionIfNecessary(Context context, int[] iArr) {
        GMMediationAdSdk.requestPermissionIfNecessary(context, iArr);
    }
}
