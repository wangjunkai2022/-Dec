package com.bytedance.msdk.api.v2;

import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public class GMPangleOption {

    /* renamed from: break  reason: not valid java name */
    public String f9055break;

    /* renamed from: case  reason: not valid java name */
    public boolean f9056case;

    /* renamed from: catch  reason: not valid java name */
    public int f9057catch;

    /* renamed from: do  reason: not valid java name */
    public boolean f9058do;

    /* renamed from: else  reason: not valid java name */
    public String[] f9059else;

    /* renamed from: for  reason: not valid java name */
    public boolean f9060for;

    /* renamed from: goto  reason: not valid java name */
    public String f9061goto;

    /* renamed from: if  reason: not valid java name */
    public int f9062if;

    /* renamed from: new  reason: not valid java name */
    public boolean f9063new;

    /* renamed from: this  reason: not valid java name */
    public Map<String, String> f9064this;

    /* renamed from: try  reason: not valid java name */
    public int[] f9065try;

    /* loaded from: classes8.dex */
    public static class Builder {

        /* renamed from: do  reason: not valid java name */
        public boolean f9069do = false;

        /* renamed from: if  reason: not valid java name */
        public int f9073if = 0;

        /* renamed from: for  reason: not valid java name */
        public boolean f9071for = true;

        /* renamed from: new  reason: not valid java name */
        public boolean f9074new = false;

        /* renamed from: try  reason: not valid java name */
        public int[] f9076try = {4, 3, 5};

        /* renamed from: case  reason: not valid java name */
        public boolean f9067case = false;

        /* renamed from: else  reason: not valid java name */
        public String[] f9070else = new String[0];

        /* renamed from: goto  reason: not valid java name */
        public String f9072goto = "";

        /* renamed from: this  reason: not valid java name */
        public final Map<String, String> f9075this = new HashMap();

        /* renamed from: break  reason: not valid java name */
        public String f9066break = "";

        /* renamed from: catch  reason: not valid java name */
        public int f9068catch = 2;

        public GMPangleOption build() {
            return new GMPangleOption(this, null);
        }

        public Builder setAllowShowNotify(boolean z) {
            this.f9071for = z;
            return this;
        }

        public Builder setAllowShowPageWhenScreenLock(boolean z) {
            this.f9074new = z;
            return this;
        }

        public Builder setData(@NonNull String str) {
            this.f9072goto = str;
            return this;
        }

        public Builder setDirectDownloadNetworkType(@NonNull int... iArr) {
            this.f9076try = iArr;
            return this;
        }

        public Builder setIsPaid(boolean z) {
            this.f9069do = z;
            return this;
        }

        public Builder setIsUseTextureView(boolean z) {
            this.f9067case = z;
            return this;
        }

        public Builder setKeywords(@NonNull String str) {
            this.f9066break = str;
            return this;
        }

        public Builder setNeedClearTaskReset(@NonNull String... strArr) {
            this.f9070else = strArr;
            return this;
        }

        public Builder setTitleBarTheme(int i) {
            this.f9073if = i;
            return this;
        }

        public Builder setData(@NonNull String str, @NonNull String str2) {
            this.f9075this.put(str, str2);
            return this;
        }

        public Builder setData(@NonNull Map<String, String> map) {
            this.f9075this.putAll(map);
            return this;
        }
    }

    public GMPangleOption(Builder builder, AnonymousClass1 anonymousClass1) {
        this.f9058do = builder.f9069do;
        this.f9062if = builder.f9073if;
        this.f9060for = builder.f9071for;
        this.f9063new = builder.f9074new;
        this.f9065try = builder.f9076try;
        this.f9056case = builder.f9067case;
        this.f9059else = builder.f9070else;
        this.f9061goto = builder.f9072goto;
        this.f9064this = builder.f9075this;
        this.f9055break = builder.f9066break;
        this.f9057catch = builder.f9068catch;
    }

    public String getData() {
        return this.f9061goto;
    }

    public int[] getDirectDownloadNetworkType() {
        return this.f9065try;
    }

    @NonNull
    public Map<String, String> getExtraData() {
        return this.f9064this;
    }

    public String getKeywords() {
        return this.f9055break;
    }

    public String[] getNeedClearTaskReset() {
        return this.f9059else;
    }

    public int getPluginUpdateConfig() {
        return this.f9057catch;
    }

    public int getTitleBarTheme() {
        return this.f9062if;
    }

    public boolean isAllowShowNotify() {
        return this.f9060for;
    }

    public boolean isAllowShowPageWhenScreenLock() {
        return this.f9063new;
    }

    public boolean isIsUseTextureView() {
        return this.f9056case;
    }

    public boolean isPaid() {
        return this.f9058do;
    }
}
