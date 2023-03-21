package com.bytedance.msdk.adapter.pangle;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;
import com.bytedance.msdk.adapter.config.IGMInitAdnResult;
import com.bytedance.msdk.adapter.config.TTBaseAdapterConfiguration;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.Preconditions;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.GMPrivacyConfig;
import com.bytedance.msdk.api.v2.IGMLiveTokenInjectionAuth;
import com.bytedance.sdk.openadsdk.LocationProvider;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.TTLocation;
import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* loaded from: classes8.dex */
public class PangleAdapterConfiguration extends TTBaseAdapterConfiguration {
    public static final int ADN_INIT_ERROR_NO_APPID = 1;
    public static final String AD_PLACEMENT_ID_EXTRA_KEY = "ad_placement_id";
    public static final String APP_ID_EXTRA_KEY = "app_id";
    public static final int TT_THEME_STATUS_DAY = 0;
    public static final int TT_THEME_STATUS_NIGHT = 1;

    /* renamed from: case  reason: not valid java name */
    public IGMLiveTokenInjectionAuth f8579case;

    /* renamed from: for  reason: not valid java name */
    public boolean f8581for;

    /* renamed from: if  reason: not valid java name */
    public boolean f8583if;

    /* renamed from: new  reason: not valid java name */
    public final List<InitCallback> f8584new = new CopyOnWriteArrayList();

    /* renamed from: try  reason: not valid java name */
    public GMPrivacyConfig f8585try = new GMPrivacyConfig();

    /* renamed from: else  reason: not valid java name */
    public final TTCustomController f8580else = new TTCustomController() { // from class: com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration.3
        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean alist() {
            return PangleAdapterConfiguration.this.f8585try.appList();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public String getDevImei() {
            return PangleAdapterConfiguration.this.f8585try.getDevImei();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public String getDevOaid() {
            return PangleAdapterConfiguration.this.f8585try.getDevOaid();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public String getMacAddress() {
            return PangleAdapterConfiguration.this.f8585try.getMacAddress();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public LocationProvider getTTLocation() {
            if (PangleAdapterConfiguration.this.f8585try.getTTLocation() != null) {
                return new TTLocation(PangleAdapterConfiguration.this.f8585try.getTTLocation().getLatitude(), PangleAdapterConfiguration.this.f8585try.getTTLocation().getLongitude());
            }
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUseAndroidId() {
            StringBuilder m1016super = Cgoto.m1016super("--==-- 穿山甲获取的isCanUseAndroidId: ");
            m1016super.append(PangleAdapterConfiguration.this.f8585try.isCanUseAndroidId());
            Logger.d("TMe", m1016super.toString());
            return PangleAdapterConfiguration.this.f8585try.isCanUseAndroidId();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUseLocation() {
            return PangleAdapterConfiguration.this.f8585try.isCanUseLocation();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUsePhoneState() {
            return PangleAdapterConfiguration.this.f8585try.isCanUsePhoneState();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUseWifiState() {
            return PangleAdapterConfiguration.this.f8585try.isCanUseWifiState();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUseWriteExternal() {
            return PangleAdapterConfiguration.this.f8585try.isCanUseWriteExternal();
        }
    };

    /* renamed from: goto  reason: not valid java name */
    public TTAdSdk.InitCallback f8582goto = new TTAdSdk.InitCallback() { // from class: com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration.4
        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i, String str) {
            PangleAdapterConfiguration.this.m3572try(i, str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            PangleAdapterConfiguration.this.m3571new();
        }
    };

    /* renamed from: com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration$5  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass5 {

        /* renamed from: do  reason: not valid java name */
        public static final /* synthetic */ int[] f8592do;

        static {
            int[] iArr = new int[GMAdConstant.ADULT_STATE.values().length];
            f8592do = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8592do[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8592do[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes8.dex */
    public interface InitCallback {
        void fail(int i, String str);

        void success();
    }

    /* renamed from: case  reason: not valid java name */
    public final void m3566case(Context context, Map<String, Object> map, final IGMInitAdnResult iGMInitAdnResult, String str) {
        InitCallback initCallback = new InitCallback() { // from class: com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration.1
            @Override // com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration.InitCallback
            public void fail(int i, String str2) {
                PangleAdapterConfiguration.this.setInitedSuccess(false);
                IGMInitAdnResult iGMInitAdnResult2 = iGMInitAdnResult;
                if (iGMInitAdnResult2 != null) {
                    iGMInitAdnResult2.fail(new AdError(i, str2));
                }
            }

            @Override // com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration.InitCallback
            public void success() {
                PangleAdapterConfiguration.this.setInitedSuccess(true);
                IGMInitAdnResult iGMInitAdnResult2 = iGMInitAdnResult;
                if (iGMInitAdnResult2 != null) {
                    iGMInitAdnResult2.success();
                }
            }
        };
        if (!TextUtils.isEmpty(str) && context != null) {
            this.f8584new.add(initCallback);
            try {
                m3567else(context, map, str);
                return;
            } catch (Throwable th) {
                synchronized (PangleAdapterConfiguration.class) {
                    this.f8583if = false;
                    this.f8581for = false;
                    th.printStackTrace();
                    return;
                }
            }
        }
        initCallback.fail(1, "Invalid Pangle app ID");
    }

    /* renamed from: else  reason: not valid java name */
    public final void m3567else(Context context, Map<String, Object> map, String str) {
        synchronized (PangleAdapterConfiguration.class) {
            if (this.f8583if) {
                if (TTAdSdk.isInitSuccess()) {
                    m3571new();
                } else if (this.f8581for) {
                    m3572try(AdError.ERROR_CODE_ADAPTER_CONFIGURATION_ERROR, "pangle");
                }
            } else if (TextUtils.isEmpty(str)) {
            } else {
                this.f8583if = true;
                TTAdConfig m3570if = m3570if(context, str, map);
                if (m3569goto()) {
                    TTAdSdk.init(context, m3570if, this.f8582goto);
                } else {
                    TTAdSdk.init(context, m3570if);
                    m3571new();
                }
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final String m3568for(String str, String str2, String str3) {
        JSONArray jSONArray;
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            try {
                if (TextUtils.isEmpty(str)) {
                    jSONArray = new JSONArray();
                } else {
                    try {
                        jSONArray = new JSONArray(str);
                    } catch (JSONException unused) {
                        jSONArray = new JSONArray();
                    }
                }
                boolean z = false;
                int i = 0;
                while (true) {
                    if (i < jSONArray.length()) {
                        JSONObject optJSONObject = jSONArray.optJSONObject(i);
                        if (optJSONObject != null && str2.equals(optJSONObject.getString("name"))) {
                            optJSONObject.put(LitePalParser.ATTR_VALUE, str3);
                            z = true;
                            break;
                        }
                        i++;
                    } else {
                        break;
                    }
                }
                if (!z) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("name", str2);
                    jSONObject.put(LitePalParser.ATTR_VALUE, str3);
                    jSONArray.put(jSONObject);
                }
                return jSONArray.toString();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public String getAdNetworkName() {
        return "pangle";
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public String getAdapterVersion() {
        return "4.6.0.7.3";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x01e0, code lost:
        if (r0.getImgAcceptedHeight() > 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01e2, code lost:
        r2 = r0.getImgAcceptedWidth();
        r3 = r0.getImgAcceptedHeight();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0104, code lost:
        if (r0.getImgAcceptedHeight() > 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0112, code lost:
        if (r0.getImgAcceptedWidth() > 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x012f, code lost:
        if (r0.getImgAcceptedHeight() > 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x013d, code lost:
        if (r0.getImgAcceptedWidth() > 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0155, code lost:
        if (r0.getImgAcceptedWidth() > 0) goto L40;
     */
    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getBiddingToken(android.content.Context r14, java.util.Map<java.lang.String, java.lang.Object> r15) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration.getBiddingToken(android.content.Context, java.util.Map):java.lang.String");
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public Map<String, Object> getBiddingTokenMap(Context context, Map<String, Object> map) {
        return null;
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public String getGroMoreSdkVersion() {
        return "3.6.0";
    }

    @Override // com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public String getNetworkSdkVersion() {
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager == null) {
            return "";
        }
        try {
            return adManager.getSDKVersion();
        } catch (Exception unused) {
            return PangleRewardVideoAdapter.VERSION_00;
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public final boolean m3569goto() {
        boolean z = false;
        try {
            Class<?> cls = Class.forName("com.bytedance.sdk.openadsdk.TTAdConstant");
            Field declaredField = cls.getDeclaredField("IS_P");
            declaredField.setAccessible(true);
            z = ((Boolean) declaredField.get(cls)).booleanValue();
            Logger.e("TTMediationSDK_SDK_Init", "穿山甲版本：isP=" + z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return z;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(30:1|(1:65)(1:5)|6|(1:64)(1:10)|11|(1:63)(1:15)|16|(1:62)(1:20)|21|(1:23)(1:61)|24|(1:26)(1:60)|27|(1:29)|30|(1:32)|33|(1:35)|36|(1:38)|39|(1:41)(1:59)|42|(7:44|(1:(1:47))(1:57)|48|49|50|51|52)|58|48|49|50|51|52) */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x012a, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x012b, code lost:
        r14.printStackTrace();
     */
    /* renamed from: if  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bytedance.sdk.openadsdk.TTAdConfig m3570if(android.content.Context r13, java.lang.String r14, java.util.Map<java.lang.String, java.lang.Object> r15) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration.m3570if(android.content.Context, java.lang.String, java.util.Map):com.bytedance.sdk.openadsdk.TTAdConfig");
    }

    @Override // com.bytedance.msdk.adapter.config.IGMInitAdn
    public void initAdn(@NonNull Context context, @NonNull Map<String, Object> map, @NonNull IGMInitAdnResult iGMInitAdnResult) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(iGMInitAdnResult);
        synchronized (PangleAdapterConfiguration.class) {
            if (isInitedSuccess() && iGMInitAdnResult != null) {
                iGMInitAdnResult.success();
                return;
            }
            if (!isInitedSuccess() && map != null && !map.isEmpty()) {
                try {
                    String str = (String) map.get("app_id");
                    Logger.i("TTMediationSDK_SDK_Init", "init Pangle SDK start......appId:" + str);
                    m3566case(context, map, iGMInitAdnResult, str);
                } catch (Exception unused) {
                    if (iGMInitAdnResult != null) {
                        iGMInitAdnResult.fail(new AdError("configuration is empty"));
                    }
                }
            }
        }
    }

    @Override // com.bytedance.msdk.adapter.config.TTBaseAdapterConfiguration, com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public boolean isNewInitFunction() {
        return true;
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3571new() {
        for (InitCallback initCallback : this.f8584new) {
            if (initCallback != null) {
                initCallback.success();
            }
        }
        this.f8584new.clear();
    }

    @Override // com.bytedance.msdk.adapter.config.TTBaseAdapterConfiguration, com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public void setInjectionAuth(IGMLiveTokenInjectionAuth iGMLiveTokenInjectionAuth) {
        this.f8579case = iGMLiveTokenInjectionAuth;
    }

    @Override // com.bytedance.msdk.adapter.config.TTBaseAdapterConfiguration, com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public void setPrivacyConfig(GMPrivacyConfig gMPrivacyConfig) {
        if (gMPrivacyConfig != null) {
            this.f8585try = gMPrivacyConfig;
            String str = gMPrivacyConfig.isLimitPersonalAds() ? SpeechSynthesizer.REQUEST_DNS_OFF : "1";
            if (TextUtils.isEmpty("personal_ads_type") || TextUtils.isEmpty(str)) {
                return;
            }
            String m3568for = m3568for(PangleAdapterUtils.getPangleData(), "personal_ads_type", str);
            PangleAdapterUtils.setPangleData(m3568for);
            TTAdSdk.updateAdConfig(new TTAdConfig.Builder().data(m3568for).build());
        }
    }

    @Override // com.bytedance.msdk.adapter.config.TTBaseAdapterConfiguration, com.bytedance.msdk.adapter.config.ITTAdapterConfiguration
    public void setThemeStatus(Map<String, Object> map) {
        super.setThemeStatus(map);
        if (map == null) {
            return;
        }
        Object obj = map.get(TTBaseAdapterConfiguration.TT_MSDK_THEME_STATUS);
        int intValue = obj instanceof Integer ? ((Integer) obj).intValue() : 0;
        if (intValue == 0 || intValue == 1) {
            TTAdSdk.getAdManager().setThemeStatus(intValue);
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final void m3572try(int i, String str) {
        for (InitCallback initCallback : this.f8584new) {
            if (initCallback != null) {
                initCallback.fail(i, str);
            }
        }
        this.f8584new.clear();
        this.f8581for = true;
        this.f8583if = false;
    }
}
