package com.bytedance.msdk.api;

import android.text.TextUtils;
import com.bytedance.msdk.api.v2.GMPrivacyConfig;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Deprecated
/* loaded from: classes8.dex */
public final class TTAdConfig {

    /* renamed from: break  reason: not valid java name */
    public boolean f8904break;

    /* renamed from: case  reason: not valid java name */
    public boolean f8905case;

    /* renamed from: catch  reason: not valid java name */
    public int[] f8906catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f8907class;

    /* renamed from: const  reason: not valid java name */
    public String f8908const;

    /* renamed from: do  reason: not valid java name */
    public String f8909do;

    /* renamed from: else  reason: not valid java name */
    public int f8910else;

    /* renamed from: final  reason: not valid java name */
    public Map<String, String> f8911final;

    /* renamed from: for  reason: not valid java name */
    public boolean f8912for;

    /* renamed from: goto  reason: not valid java name */
    public String[] f8913goto;

    /* renamed from: if  reason: not valid java name */
    public String f8914if;

    /* renamed from: new  reason: not valid java name */
    public boolean f8917new;

    /* renamed from: public  reason: not valid java name */
    public UserInfoForSegment f8918public;

    /* renamed from: return  reason: not valid java name */
    public int f8919return;

    /* renamed from: static  reason: not valid java name */
    public GMPrivacyConfig f8920static;

    /* renamed from: super  reason: not valid java name */
    public boolean f8921super;

    /* renamed from: this  reason: not valid java name */
    public boolean f8922this;

    /* renamed from: throw  reason: not valid java name */
    public String f8923throw;

    /* renamed from: try  reason: not valid java name */
    public String f8924try;

    /* renamed from: while  reason: not valid java name */
    public Set<String> f8925while = null;

    /* renamed from: import  reason: not valid java name */
    public Map<String, Map<String, String>> f8915import = null;

    /* renamed from: native  reason: not valid java name */
    public Map<String, Map<String, String>> f8916native = null;

    /* loaded from: classes8.dex */
    public static class Builder {
        @Deprecated

        /* renamed from: break  reason: not valid java name */
        public String[] f8926break;
        @Deprecated

        /* renamed from: catch  reason: not valid java name */
        public String f8928catch;
        @Deprecated

        /* renamed from: const  reason: not valid java name */
        public boolean f8930const;
        @Deprecated

        /* renamed from: do  reason: not valid java name */
        public String f8931do;
        @Deprecated

        /* renamed from: final  reason: not valid java name */
        public String f8933final;
        @Deprecated

        /* renamed from: goto  reason: not valid java name */
        public int[] f8935goto;
        @Deprecated

        /* renamed from: if  reason: not valid java name */
        public String f8936if;

        /* renamed from: native  reason: not valid java name */
        public GMPrivacyConfig f8938native;
        @Deprecated

        /* renamed from: throw  reason: not valid java name */
        public String f8942throw;
        @Deprecated

        /* renamed from: while  reason: not valid java name */
        public UserInfoForSegment f8944while;
        @Deprecated

        /* renamed from: for  reason: not valid java name */
        public boolean f8934for = false;
        @Deprecated

        /* renamed from: new  reason: not valid java name */
        public boolean f8939new = false;
        @Deprecated

        /* renamed from: try  reason: not valid java name */
        public int f8943try = 0;
        @Deprecated

        /* renamed from: case  reason: not valid java name */
        public boolean f8927case = true;
        @Deprecated

        /* renamed from: else  reason: not valid java name */
        public boolean f8932else = false;
        @Deprecated

        /* renamed from: this  reason: not valid java name */
        public boolean f8941this = false;
        @Deprecated

        /* renamed from: class  reason: not valid java name */
        public boolean f8929class = true;
        @Deprecated

        /* renamed from: super  reason: not valid java name */
        public Map<String, String> f8940super = new HashMap();
        @Deprecated

        /* renamed from: import  reason: not valid java name */
        public int f8937import = 2;

        @Deprecated
        public Builder allowPangleShowNotify(boolean z) {
            this.f8927case = z;
            return this;
        }

        @Deprecated
        public Builder allowPangleShowPageWhenScreenLock(boolean z) {
            this.f8932else = z;
            return this;
        }

        @Deprecated
        public Builder appId(String str) {
            this.f8931do = str;
            return this;
        }

        @Deprecated
        public Builder appName(String str) {
            this.f8936if = str;
            return this;
        }

        @Deprecated
        public TTAdConfig build() {
            return new TTAdConfig(this, null);
        }

        @Deprecated
        public Builder data(String str) {
            this.f8933final = str;
            return this;
        }

        @Deprecated
        public Builder dataMap(Map<String, String> map) {
            if (map != null && map.size() > 0) {
                this.f8940super.putAll(map);
            }
            return this;
        }

        @Deprecated
        public Builder isPanglePaid(boolean z) {
            this.f8939new = z;
            return this;
        }

        @Deprecated
        public Builder needPangleClearTaskReset(String... strArr) {
            this.f8926break = strArr;
            return this;
        }

        @Deprecated
        public Builder openAdnTest(boolean z) {
            this.f8930const = z;
            return this;
        }

        @Deprecated
        public Builder openDebugLog(boolean z) {
            this.f8934for = z;
            return this;
        }

        public Builder setBaiduSdkReadDeviceId(boolean z) {
            this.f8929class = z;
            return this;
        }

        @Deprecated
        public Builder setKeywords(String str) {
            this.f8942throw = str;
            return this;
        }

        @Deprecated
        public Builder setPangleDirectDownloadNetworkType(int... iArr) {
            this.f8935goto = iArr;
            return this;
        }

        @Deprecated
        public Builder setPangleTitleBarTheme(int i) {
            this.f8943try = i;
            return this;
        }

        public Builder setPrivacyConfig(GMPrivacyConfig gMPrivacyConfig) {
            this.f8938native = gMPrivacyConfig;
            return this;
        }

        public Builder setPublisherDid(String str) {
            this.f8928catch = str;
            return this;
        }

        @Deprecated
        public Builder setUserInfoForSegment(UserInfoForSegment userInfoForSegment) {
            this.f8944while = userInfoForSegment;
            return this;
        }

        @Deprecated
        public Builder usePangleTextureView(boolean z) {
            this.f8941this = z;
            return this;
        }

        @Deprecated
        public Builder data(String str, String str2) {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                this.f8940super.put(str, str2);
            }
            return this;
        }
    }

    public TTAdConfig(Builder builder, AnonymousClass1 anonymousClass1) {
        this.f8912for = false;
        this.f8917new = false;
        this.f8924try = null;
        this.f8910else = 0;
        this.f8922this = true;
        this.f8904break = false;
        this.f8907class = false;
        this.f8921super = true;
        this.f8919return = 2;
        this.f8909do = builder.f8931do;
        this.f8914if = builder.f8936if;
        this.f8912for = builder.f8934for;
        this.f8917new = builder.f8939new;
        this.f8924try = builder.f8928catch;
        this.f8905case = builder.f8930const;
        this.f8910else = builder.f8943try;
        this.f8913goto = builder.f8926break;
        this.f8922this = builder.f8927case;
        this.f8904break = builder.f8932else;
        this.f8906catch = builder.f8935goto;
        this.f8907class = builder.f8941this;
        this.f8908const = builder.f8933final;
        this.f8911final = builder.f8940super;
        this.f8923throw = builder.f8942throw;
        this.f8921super = builder.f8929class;
        this.f8918public = builder.f8944while;
        this.f8919return = builder.f8937import;
        this.f8920static = builder.f8938native;
    }

    public boolean allowBaiduSdkReadDeviceId() {
        return this.f8921super;
    }

    public Set<String> getAdapterConfigurationClasses() {
        Set<String> set = this.f8925while;
        if (set != null) {
            return Collections.unmodifiableSet(set);
        }
        return null;
    }

    public String getAppId() {
        return this.f8909do;
    }

    public String getAppName() {
        return this.f8914if;
    }

    public Map<String, String> getExtraData() {
        return this.f8911final;
    }

    public Map<String, Map<String, String>> getMediatedNetworkConfigurations() {
        Map<String, Map<String, String>> map = this.f8915import;
        if (map != null) {
            return Collections.unmodifiableMap(map);
        }
        return null;
    }

    @Deprecated
    public String getPangleData() {
        return this.f8908const;
    }

    public int[] getPangleDirectDownloadNetworkType() {
        return this.f8906catch;
    }

    public String getPangleKeywords() {
        return this.f8923throw;
    }

    public String[] getPangleNeedClearTaskReset() {
        return this.f8913goto;
    }

    public int getPanglePluginUpdateConfig() {
        return this.f8919return;
    }

    public int getPangleTitleBarTheme() {
        return this.f8910else;
    }

    public GMPrivacyConfig getPrivacyConfig() {
        return this.f8920static;
    }

    public String getPublisherDid() {
        return this.f8924try;
    }

    public Map<String, Map<String, String>> getRequestOptions() {
        Map<String, Map<String, String>> map = this.f8916native;
        if (map != null) {
            return Collections.unmodifiableMap(map);
        }
        return null;
    }

    public UserInfoForSegment getUserInfoForSegment() {
        return this.f8918public;
    }

    public boolean isDebug() {
        return this.f8912for;
    }

    public boolean isOpenAdnTest() {
        return this.f8905case;
    }

    public boolean isPangleAllowShowNotify() {
        return this.f8922this;
    }

    public boolean isPangleAllowShowPageWhenScreenLock() {
        return this.f8904break;
    }

    public boolean isPanglePaid() {
        return this.f8917new;
    }

    public boolean isPangleUseTextureView() {
        return this.f8907class;
    }
}
