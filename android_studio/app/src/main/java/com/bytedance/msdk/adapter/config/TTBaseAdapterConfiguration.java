package com.bytedance.msdk.adapter.config;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.v2.GMAppDialogClickListener;
import com.bytedance.msdk.api.v2.GMPrivacyConfig;
import com.bytedance.msdk.api.v2.IGMLiveTokenInjectionAuth;
import com.umeng.analytics.pro.ak;
import java.util.Map;

/* loaded from: classes8.dex */
public abstract class TTBaseAdapterConfiguration implements ITTAdapterConfiguration {
    public static final String APP_ID_EXTRA_KEY = "app_id";
    public static final String APP_KEY_EXTRA_KEY = "app_key";
    public static final String APP_NAME_EXTRA_KEY = "app_name";
    public static final String BAIDU_HTTPS = "baidu_https";
    public static final String PANGLE_APP_NAME = "pangle_app_name";
    public static final String PANGLE_DATA = "pangle_data";
    public static final String PANGLE_DIRECT_DOWNLOAD_NETWORKTYPE = "pangle_direct_download_networktype";
    public static final String PANGLE_IS_PANGLE_ALLOW_SHOW_NOTIFY = "pangle_is_pangle_allow_show_notify";
    public static final String PANGLE_IS_PANGLE_ALLOW_SHOW_PAGE_WHEN_SCREEN_LOCK = "pangle_is_pangle_allow_show_page_when_screen_lock";
    public static final String PANGLE_IS_PANGLE_PAID = "pangle_is_pangle_paid";
    public static final String PANGLE_IS_PANGLE_USE_TEXTURE_VIEW = "pangle_is_pangle_use_texture_view";
    public static final String PANGLE_KEYWORDS = "pangle_keywords";
    public static final String PANGLE_NEED_CLEAR_TASK_RESET = "pangle_need_clear_task_reset";
    public static final String PANGLE_PLUGIN_UPDATE_CONFIG = "pangle_plugin_update_config";
    public static final String PANGLE_TITLE_BAR_THEME = "pangle_title_bar_theme";
    public static String TT_MSDK_ADSLOT_INFO = "tt_msdk_adslot_info";
    public static String TT_MSDK_CLIENT_REQ_ID = "tt_msdk_client_req_id";
    public static String TT_MSDK_THEME_STATUS = "tt_msdk_theme_status";
    public static String TT_MSDK_WATER_FALL_AB_TEST = "tt_msdk_water_fall_ab_test";
    public static String TT_MSDK_WATER_ORIGIN_TYPE = "tt_msdk_water_orgin_type";
    public static String TT_MSDK_WATER_SUB_AD_TYPE = "tt_msdk_water_sub_ad_type";

    /* renamed from: do  reason: not valid java name */
    public volatile boolean f8458do = false;

    /* renamed from: do  reason: not valid java name */
    public static int m3559do(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return 0;
        }
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (TextUtils.isEmpty(str2)) {
            return 1;
        }
        if (str.startsWith(ak.aE) || str.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
            str = str.substring(1);
        }
        if (str2.startsWith(ak.aE) || str2.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
            str2 = str2.substring(1);
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        int min = Math.min(split.length, split2.length);
        for (int i = 0; i < min; i++) {
            if (split[i].length() != split2[i].length()) {
                return split[i].length() > split2[i].length() ? 1 : -1;
            }
            int compareTo = split[i].compareTo(split2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (split.length == split2.length) {
            return 0;
        }
        return split.length > split2.length ? 1 : -1;
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public void checkVersion() {
        try {
            String groMoreSdkVersion = getGroMoreSdkVersion();
            if (m3559do(groMoreSdkVersion, "3.6.0") != 0) {
                Logger.e("TTMediationSDK_InitChecker", getAdNetworkName() + "版本号：" + getNetworkSdkVersion() + " , " + getAdNetworkName() + "Adapter版本号：" + getAdapterVersion() + " , GroMore版本不符合，要求等于" + groMoreSdkVersion + ".x ，当前是3.6.0.1");
            } else {
                Logger.d("TTMediationSDK_InitChecker", getAdNetworkName() + "版本号：" + getNetworkSdkVersion() + " , " + getAdNetworkName() + "Adapter版本号：" + getAdapterVersion() + " , GroMore版本正常 ，要求等于" + groMoreSdkVersion + ".x ，当前是3.6.0.1");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public Map<String, String> getMsdkRequestOptions() {
        return null;
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public void initializeNetwork(@NonNull Context context, @Nullable Map<String, Object> map, @NonNull TTOnNetworkInitializationFinishedListener tTOnNetworkInitializationFinishedListener) {
    }

    public boolean isInitedSuccess() {
        return this.f8458do;
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public boolean isNewInitFunction() {
        return false;
    }

    public void setInitedSuccess(boolean z) {
        this.f8458do = z;
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public void setInjectionAuth(IGMLiveTokenInjectionAuth iGMLiveTokenInjectionAuth) {
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public void setMsdkRequestOptions(Map<String, String> map) {
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public void setPrivacyConfig(GMPrivacyConfig gMPrivacyConfig) {
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public void setThemeStatus(Map<String, Object> map) {
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public int showOpenOrInstallAppDialog(GMAppDialogClickListener gMAppDialogClickListener) {
        return 0;
    }
}
