package com.bytedance.msdk.api;

import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotBaiduOption;

@Deprecated
/* loaded from: classes8.dex */
public class BaiduExtraOptions {
    public static final int DOWNLOAD_APP_CONFIRM_ALWAYS = 2;
    public static final int DOWNLOAD_APP_CONFIRM_CUSTOM_BY_APP = 4;
    public static final int DOWNLOAD_APP_CONFIRM_NEVER = 3;
    public static final int DOWNLOAD_APP_CONFIRM_ONLY_MOBILE = 1;

    /* renamed from: case  reason: not valid java name */
    public boolean f8841case;

    /* renamed from: do  reason: not valid java name */
    public boolean f8842do;

    /* renamed from: else  reason: not valid java name */
    public boolean f8843else;

    /* renamed from: for  reason: not valid java name */
    public BaiduNativeSmartOptStyleParams f8844for;

    /* renamed from: goto  reason: not valid java name */
    public String f8845goto;

    /* renamed from: if  reason: not valid java name */
    public int f8846if;

    /* renamed from: new  reason: not valid java name */
    public BaiduRequestParameters f8847new;

    /* renamed from: try  reason: not valid java name */
    public BaiduSplashParams f8848try;

    /* loaded from: classes8.dex */
    public static final class Builder {

        /* renamed from: case  reason: not valid java name */
        public boolean f8849case;
        @Deprecated

        /* renamed from: do  reason: not valid java name */
        public boolean f8850do;

        /* renamed from: else  reason: not valid java name */
        public boolean f8851else;
        @Deprecated

        /* renamed from: for  reason: not valid java name */
        public BaiduNativeSmartOptStyleParams f8852for;

        /* renamed from: goto  reason: not valid java name */
        public String f8853goto;
        @Deprecated

        /* renamed from: if  reason: not valid java name */
        public int f8854if;
        @Deprecated

        /* renamed from: new  reason: not valid java name */
        public BaiduRequestParameters f8855new;
        @Deprecated

        /* renamed from: try  reason: not valid java name */
        public BaiduSplashParams f8856try;

        public final BaiduExtraOptions build() {
            return new BaiduExtraOptions(this, null);
        }

        public Builder setAppSid(String str) {
            this.f8853goto = str;
            return this;
        }

        public Builder setBaiduNativeSmartOptStyleParams(BaiduNativeSmartOptStyleParams baiduNativeSmartOptStyleParams) {
            this.f8852for = baiduNativeSmartOptStyleParams;
            return this;
        }

        public Builder setBaiduRequestParameters(BaiduRequestParameters baiduRequestParameters) {
            this.f8855new = baiduRequestParameters;
            return this;
        }

        public Builder setBaiduSplashParams(BaiduSplashParams baiduSplashParams) {
            this.f8856try = baiduSplashParams;
            return this;
        }

        public Builder setCacheVideoOnlyWifi(boolean z) {
            this.f8850do = z;
            return this;
        }

        public Builder setGDTExtraOption(int i) {
            this.f8854if = i;
            return this;
        }

        public Builder setShowDialogOnSkip(boolean z) {
            this.f8849case = z;
            return this;
        }

        public Builder setUseRewardCountdown(boolean z) {
            this.f8851else = z;
            return this;
        }
    }

    public BaiduExtraOptions(Builder builder, AnonymousClass1 anonymousClass1) {
        this.f8842do = builder.f8850do;
        this.f8846if = builder.f8854if;
        this.f8844for = builder.f8852for;
        this.f8847new = builder.f8855new;
        this.f8848try = builder.f8856try;
        this.f8841case = builder.f8849case;
        this.f8843else = builder.f8851else;
        this.f8845goto = builder.f8853goto;
    }

    public String getAppSid() {
        return this.f8845goto;
    }

    public BaiduNativeSmartOptStyleParams getBaiduNativeSmartOptStyleParams() {
        return this.f8844for;
    }

    public BaiduRequestParameters getBaiduRequestParameters() {
        return this.f8847new;
    }

    public BaiduSplashParams getBaiduSplashParams() {
        return this.f8848try;
    }

    public int getDownloadAppConfirmPolicy() {
        return this.f8846if;
    }

    public GMAdSlotBaiduOption getGMBaiduExtra() {
        GMAdSlotBaiduOption.Builder builder = new GMAdSlotBaiduOption.Builder();
        builder.setCacheVideoOnlyWifi(isCacheVideoOnlyWifi());
        builder.setAppSid(getAppSid());
        builder.setBaiduNativeSmartOptStyleParams(getBaiduNativeSmartOptStyleParams());
        builder.setBaiduRequestParameters(getBaiduRequestParameters());
        builder.setBaiduSplashParams(getBaiduSplashParams());
        builder.setDownloadAppConfirmPolicy(getDownloadAppConfirmPolicy());
        builder.setShowDialogOnSkip(getShowDialogOnSkip());
        builder.setUseRewardCountdown(getUseRewardCountdown());
        return builder.build();
    }

    public boolean getShowDialogOnSkip() {
        return this.f8841case;
    }

    public boolean getUseRewardCountdown() {
        return this.f8843else;
    }

    public boolean isCacheVideoOnlyWifi() {
        return this.f8842do;
    }
}
