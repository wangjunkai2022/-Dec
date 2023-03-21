package com.bytedance.msdk.api.v2;

import androidx.annotation.NonNull;
import com.bytedance.msdk.api.v2.GMGdtOption;
import com.bytedance.msdk.api.v2.GMPangleOption;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class GMAdConfig {

    /* renamed from: break  reason: not valid java name */
    public Map<String, Object> f8998break;

    /* renamed from: case  reason: not valid java name */
    public GMPangleOption f8999case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f9000catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f9001class;

    /* renamed from: const  reason: not valid java name */
    public JSONObject f9002const;

    /* renamed from: do  reason: not valid java name */
    public String f9003do;

    /* renamed from: else  reason: not valid java name */
    public GMGdtOption f9004else;

    /* renamed from: final  reason: not valid java name */
    public IGMLiveTokenInjectionAuth f9005final;

    /* renamed from: for  reason: not valid java name */
    public boolean f9006for;

    /* renamed from: goto  reason: not valid java name */
    public GMConfigUserInfoForSegment f9007goto;

    /* renamed from: if  reason: not valid java name */
    public String f9008if;

    /* renamed from: new  reason: not valid java name */
    public String f9009new;

    /* renamed from: this  reason: not valid java name */
    public GMPrivacyConfig f9010this;

    /* renamed from: try  reason: not valid java name */
    public boolean f9011try;

    /* loaded from: classes8.dex */
    public static class Builder {

        /* renamed from: break  reason: not valid java name */
        public Map<String, Object> f9012break;

        /* renamed from: case  reason: not valid java name */
        public GMPangleOption f9013case;

        /* renamed from: const  reason: not valid java name */
        public JSONObject f9016const;

        /* renamed from: do  reason: not valid java name */
        public String f9017do;

        /* renamed from: else  reason: not valid java name */
        public GMGdtOption f9018else;

        /* renamed from: final  reason: not valid java name */
        public IGMLiveTokenInjectionAuth f9019final;

        /* renamed from: goto  reason: not valid java name */
        public GMConfigUserInfoForSegment f9021goto;

        /* renamed from: if  reason: not valid java name */
        public String f9022if;

        /* renamed from: this  reason: not valid java name */
        public GMPrivacyConfig f9024this;

        /* renamed from: for  reason: not valid java name */
        public boolean f9020for = false;

        /* renamed from: new  reason: not valid java name */
        public String f9023new = "";

        /* renamed from: try  reason: not valid java name */
        public boolean f9025try = false;

        /* renamed from: catch  reason: not valid java name */
        public boolean f9014catch = false;

        /* renamed from: class  reason: not valid java name */
        public boolean f9015class = false;

        public GMAdConfig build() {
            return new GMAdConfig(this, null);
        }

        public Builder injectionAuth(IGMLiveTokenInjectionAuth iGMLiveTokenInjectionAuth) {
            this.f9019final = iGMLiveTokenInjectionAuth;
            return this;
        }

        public Builder setAppId(String str) {
            this.f9017do = str;
            return this;
        }

        public Builder setAppName(String str) {
            this.f9022if = str;
            return this;
        }

        public Builder setConfigUserInfoForSegment(@NonNull GMConfigUserInfoForSegment gMConfigUserInfoForSegment) {
            this.f9021goto = gMConfigUserInfoForSegment;
            return this;
        }

        public Builder setCustomLocalConfig(JSONObject jSONObject) {
            this.f9016const = jSONObject;
            return this;
        }

        public Builder setDebug(boolean z) {
            this.f9020for = z;
            return this;
        }

        public Builder setGdtOption(@NonNull GMGdtOption gMGdtOption) {
            this.f9018else = gMGdtOption;
            return this;
        }

        public Builder setHttps(boolean z) {
            this.f9014catch = z;
            return this;
        }

        public Builder setIsOpenPangleCustom(boolean z) {
            this.f9015class = z;
            return this;
        }

        public Builder setLocalExtra(Map<String, Object> map) {
            if (map != null && !map.isEmpty()) {
                HashMap hashMap = new HashMap();
                this.f9012break = hashMap;
                hashMap.putAll(map);
            }
            return this;
        }

        public Builder setOpenAdnTest(boolean z) {
            this.f9025try = z;
            return this;
        }

        public Builder setPangleOption(@NonNull GMPangleOption gMPangleOption) {
            this.f9013case = gMPangleOption;
            return this;
        }

        public Builder setPrivacyConfig(GMPrivacyConfig gMPrivacyConfig) {
            this.f9024this = gMPrivacyConfig;
            return this;
        }

        public Builder setPublisherDid(@NonNull String str) {
            this.f9023new = str;
            return this;
        }
    }

    public GMAdConfig(Builder builder, AnonymousClass1 anonymousClass1) {
        this.f9003do = builder.f9017do;
        this.f9008if = builder.f9022if;
        this.f9006for = builder.f9020for;
        this.f9009new = builder.f9023new;
        this.f9011try = builder.f9025try;
        GMPangleOption gMPangleOption = builder.f9013case;
        if (gMPangleOption != null) {
            this.f8999case = gMPangleOption;
        } else {
            this.f8999case = new GMPangleOption.Builder().build();
        }
        GMGdtOption gMGdtOption = builder.f9018else;
        if (gMGdtOption != null) {
            this.f9004else = gMGdtOption;
        } else {
            this.f9004else = new GMGdtOption.Builder().build();
        }
        GMConfigUserInfoForSegment gMConfigUserInfoForSegment = builder.f9021goto;
        if (gMConfigUserInfoForSegment != null) {
            this.f9007goto = gMConfigUserInfoForSegment;
        } else {
            this.f9007goto = new GMConfigUserInfoForSegment();
        }
        this.f9010this = builder.f9024this;
        this.f8998break = builder.f9012break;
        this.f9000catch = builder.f9014catch;
        this.f9001class = builder.f9015class;
        this.f9002const = builder.f9016const;
        this.f9005final = builder.f9019final;
    }

    public String getAppId() {
        return this.f9003do;
    }

    public String getAppName() {
        return this.f9008if;
    }

    public JSONObject getCutstomLocalConfig() {
        return this.f9002const;
    }

    @NonNull
    public GMConfigUserInfoForSegment getGMConfigUserInfoForSegment() {
        return this.f9007goto;
    }

    @NonNull
    public GMGdtOption getGMGdtOption() {
        return this.f9004else;
    }

    @NonNull
    public GMPangleOption getGMPangleOption() {
        return this.f8999case;
    }

    public IGMLiveTokenInjectionAuth getGmLiveTokenInjectionAuth() {
        return this.f9005final;
    }

    public Map<String, Object> getLocalExtra() {
        return this.f8998break;
    }

    public GMPrivacyConfig getPrivacyConfig() {
        return this.f9010this;
    }

    public String getPublisherDid() {
        return this.f9009new;
    }

    public boolean isDebug() {
        return this.f9006for;
    }

    public boolean isHttps() {
        return this.f9000catch;
    }

    public boolean isOpenAdnTest() {
        return this.f9011try;
    }

    public boolean isOpenPangleCustom() {
        return this.f9001class;
    }
}
