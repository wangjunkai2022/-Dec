package com.bytedance.msdk.api.v2.ad.custom.bean;

import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.msdk.api.v2.ad.custom.banner.GMCustomBannerAdapter;
import com.bytedance.msdk.api.v2.ad.custom.draw.GMCustomDrawAdapter;
import com.bytedance.msdk.api.v2.ad.custom.fullvideo.GMCustomFullVideoAdapter;
import com.bytedance.msdk.api.v2.ad.custom.interstitial.GMCustomInterstitialAdapter;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAdapter;
import com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter;
import com.bytedance.msdk.api.v2.ad.custom.splash.GMCustomSplashAdapter;
/* loaded from: classes8.dex */
public class GMCustomInitConfig {
    public static final String CUSTOM_TYPE = "1";

    /* renamed from: break  reason: not valid java name */
    public final String f9118break;

    /* renamed from: case  reason: not valid java name */
    public final String f9119case;

    /* renamed from: catch  reason: not valid java name */
    public final String f9120catch;

    /* renamed from: class  reason: not valid java name */
    public final String f9121class;

    /* renamed from: do  reason: not valid java name */
    public final String f9122do;

    /* renamed from: else  reason: not valid java name */
    public final String f9123else;

    /* renamed from: for  reason: not valid java name */
    public final String f9124for;

    /* renamed from: goto  reason: not valid java name */
    public final String f9125goto;

    /* renamed from: if  reason: not valid java name */
    public final String f9126if;

    /* renamed from: new  reason: not valid java name */
    public final String f9127new;

    /* renamed from: this  reason: not valid java name */
    public final String f9128this;

    /* renamed from: try  reason: not valid java name */
    public final String f9129try;

    public GMCustomInitConfig() {
        this.f9124for = "";
        this.f9122do = "";
        this.f9126if = "";
        this.f9127new = "";
        this.f9129try = "";
        this.f9119case = "";
        this.f9123else = "";
        this.f9125goto = "";
        this.f9128this = "";
        this.f9118break = "";
        this.f9120catch = "";
        this.f9121class = "";
    }

    public String getADNName() {
        return this.f9124for;
    }

    public String getAdnInitClassName() {
        return this.f9127new;
    }

    public String getAppId() {
        return this.f9122do;
    }

    public String getAppKey() {
        return this.f9126if;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public GMCustomAdConfig getClassName(int i, int i2) {
        switch (i) {
            case 1:
                return new GMCustomAdConfig(this.f9129try, GMCustomBannerAdapter.class);
            case 2:
                return new GMCustomAdConfig(this.f9119case, GMCustomInterstitialAdapter.class);
            case 3:
                return new GMCustomAdConfig(this.f9128this, GMCustomSplashAdapter.class);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                return new GMCustomAdConfig(this.f9118break, GMCustomNativeAdapter.class);
            case 7:
                return new GMCustomAdConfig(this.f9123else, GMCustomRewardAdapter.class);
            case 8:
                return new GMCustomAdConfig(this.f9125goto, GMCustomFullVideoAdapter.class);
            case 9:
                break;
            case 10:
                if (i2 == 1) {
                    return new GMCustomAdConfig(this.f9119case, GMCustomInterstitialAdapter.class);
                }
                if (i2 == 2) {
                    return new GMCustomAdConfig(this.f9125goto, GMCustomFullVideoAdapter.class);
                }
                break;
        }
        return new GMCustomAdConfig(this.f9120catch, GMCustomDrawAdapter.class);
    }

    public boolean isCustom() {
        return TextUtils.equals(this.f9121class, "1");
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("GMCustomInitConfig{mAppId='");
        Cgoto.m987abstract(m1016super, this.f9122do, '\'', ", mAppKey='");
        Cgoto.m987abstract(m1016super, this.f9126if, '\'', ", mADNName='");
        Cgoto.m987abstract(m1016super, this.f9124for, '\'', ", mAdnInitClassName='");
        Cgoto.m987abstract(m1016super, this.f9127new, '\'', ", mBannerClassName='");
        Cgoto.m987abstract(m1016super, this.f9129try, '\'', ", mInterstitialClassName='");
        Cgoto.m987abstract(m1016super, this.f9119case, '\'', ", mRewardClassName='");
        Cgoto.m987abstract(m1016super, this.f9123else, '\'', ", mFullVideoClassName='");
        Cgoto.m987abstract(m1016super, this.f9125goto, '\'', ", mSplashClassName='");
        Cgoto.m987abstract(m1016super, this.f9128this, '\'', ", mDrawClassName='");
        Cgoto.m987abstract(m1016super, this.f9120catch, '\'', ", mFeedClassName='");
        m1016super.append(this.f9118break);
        m1016super.append('\'');
        m1016super.append('}');
        return m1016super.toString();
    }

    public GMCustomInitConfig(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.f9124for = str;
        this.f9122do = str2;
        this.f9126if = str3;
        this.f9127new = str4;
        this.f9129try = str5;
        this.f9119case = str6;
        this.f9123else = str7;
        this.f9125goto = str8;
        this.f9128this = str9;
        this.f9118break = str10;
        this.f9120catch = str11;
        this.f9121class = str12;
    }
}
