package com.bytedance.msdk.api.v2.slot.paltform;

import com.bytedance.msdk.api.BaiduExtraOptions;
import com.bytedance.msdk.api.BaiduNativeSmartOptStyleParams;
import com.bytedance.msdk.api.BaiduRequestParameters;
import com.bytedance.msdk.api.BaiduSplashParams;
/* loaded from: classes8.dex */
public class GMAdSlotBaiduOption {
    public static final int DOWNLOAD_APP_CONFIRM_ALWAYS = 2;
    public static final int DOWNLOAD_APP_CONFIRM_CUSTOM_BY_APP = 4;
    public static final int DOWNLOAD_APP_CONFIRM_NEVER = 3;
    public static final int DOWNLOAD_APP_CONFIRM_ONLY_MOBILE = 1;

    /* renamed from: case  reason: not valid java name */
    public boolean f9352case;

    /* renamed from: do  reason: not valid java name */
    public boolean f9353do;

    /* renamed from: else  reason: not valid java name */
    public boolean f9354else;

    /* renamed from: for  reason: not valid java name */
    public BaiduNativeSmartOptStyleParams f9355for;

    /* renamed from: goto  reason: not valid java name */
    public String f9356goto;

    /* renamed from: if  reason: not valid java name */
    public int f9357if;

    /* renamed from: new  reason: not valid java name */
    public BaiduRequestParameters f9358new;

    /* renamed from: try  reason: not valid java name */
    public BaiduSplashParams f9359try;

    /* loaded from: classes8.dex */
    public static final class Builder {

        /* renamed from: case  reason: not valid java name */
        public boolean f9360case;

        /* renamed from: do  reason: not valid java name */
        public boolean f9361do;

        /* renamed from: else  reason: not valid java name */
        public boolean f9362else;

        /* renamed from: for  reason: not valid java name */
        public BaiduNativeSmartOptStyleParams f9363for;

        /* renamed from: goto  reason: not valid java name */
        public String f9364goto;

        /* renamed from: if  reason: not valid java name */
        public int f9365if;

        /* renamed from: new  reason: not valid java name */
        public BaiduRequestParameters f9366new;

        /* renamed from: try  reason: not valid java name */
        public BaiduSplashParams f9367try;

        public final GMAdSlotBaiduOption build() {
            return new GMAdSlotBaiduOption(this, null);
        }

        public Builder setAppSid(String str) {
            this.f9364goto = str;
            return this;
        }

        public Builder setBaiduNativeSmartOptStyleParams(BaiduNativeSmartOptStyleParams baiduNativeSmartOptStyleParams) {
            this.f9363for = baiduNativeSmartOptStyleParams;
            return this;
        }

        public Builder setBaiduRequestParameters(BaiduRequestParameters baiduRequestParameters) {
            this.f9366new = baiduRequestParameters;
            return this;
        }

        public Builder setBaiduSplashParams(BaiduSplashParams baiduSplashParams) {
            this.f9367try = baiduSplashParams;
            return this;
        }

        public Builder setCacheVideoOnlyWifi(boolean z) {
            this.f9361do = z;
            return this;
        }

        public Builder setDownloadAppConfirmPolicy(int i) {
            this.f9365if = i;
            return this;
        }

        public Builder setShowDialogOnSkip(boolean z) {
            this.f9360case = z;
            return this;
        }

        public Builder setUseRewardCountdown(boolean z) {
            this.f9362else = z;
            return this;
        }
    }

    public GMAdSlotBaiduOption(Builder builder, AnonymousClass1 anonymousClass1) {
        this.f9353do = builder.f9361do;
        this.f9357if = builder.f9365if;
        this.f9355for = builder.f9363for;
        this.f9358new = builder.f9366new;
        this.f9359try = builder.f9367try;
        this.f9352case = builder.f9360case;
        this.f9354else = builder.f9362else;
        this.f9356goto = builder.f9364goto;
    }

    public String getAppSid() {
        return this.f9356goto;
    }

    public BaiduExtraOptions getBaiduExtra() {
        BaiduExtraOptions.Builder builder = new BaiduExtraOptions.Builder();
        builder.setCacheVideoOnlyWifi(isCacheVideoOnlyWifi());
        builder.setAppSid(getAppSid());
        builder.setBaiduNativeSmartOptStyleParams(getBaiduNativeSmartOptStyleParams());
        builder.setBaiduRequestParameters(getBaiduRequestParameters());
        builder.setBaiduSplashParams(getBaiduSplashParams());
        builder.setGDTExtraOption(getDownloadAppConfirmPolicy());
        builder.setShowDialogOnSkip(getShowDialogOnSkip());
        builder.setUseRewardCountdown(getUseRewardCountdown());
        return builder.build();
    }

    public BaiduNativeSmartOptStyleParams getBaiduNativeSmartOptStyleParams() {
        return this.f9355for;
    }

    public BaiduRequestParameters getBaiduRequestParameters() {
        return this.f9358new;
    }

    public BaiduSplashParams getBaiduSplashParams() {
        return this.f9359try;
    }

    public int getDownloadAppConfirmPolicy() {
        return this.f9357if;
    }

    public boolean getShowDialogOnSkip() {
        return this.f9352case;
    }

    public boolean getUseRewardCountdown() {
        return this.f9354else;
    }

    public boolean isCacheVideoOnlyWifi() {
        return this.f9353do;
    }
}
