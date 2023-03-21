package com.bytedance.msdk.api.v2.slot;

import androidx.annotation.NonNull;
import com.bytedance.msdk.api.AdmobNativeAdOptions;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotBaiduOption;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import java.util.Map;

/* loaded from: classes8.dex */
public class GMAdSlotBanner extends GMAdSlotBase {

    /* renamed from: class  reason: not valid java name */
    public int f9247class;

    /* renamed from: const  reason: not valid java name */
    public int f9248const;

    /* renamed from: final  reason: not valid java name */
    public int f9249final;

    /* renamed from: super  reason: not valid java name */
    public boolean f9250super;

    /* renamed from: throw  reason: not valid java name */
    public String f9251throw;

    /* renamed from: while  reason: not valid java name */
    public AdmobNativeAdOptions f9252while;

    /* loaded from: classes8.dex */
    public static class Builder extends GMAdSlotBase.Builder {

        /* renamed from: catch  reason: not valid java name */
        public int f9253catch = 640;

        /* renamed from: class  reason: not valid java name */
        public int f9254class = 320;

        /* renamed from: const  reason: not valid java name */
        public int f9255const = 3;

        /* renamed from: final  reason: not valid java name */
        public boolean f9256final = false;

        /* renamed from: super  reason: not valid java name */
        public String f9257super = "";

        /* renamed from: throw  reason: not valid java name */
        public AdmobNativeAdOptions f9258throw;

        public GMAdSlotBanner build() {
            return new GMAdSlotBanner(this, null);
        }

        public Builder setAdmobNativeAdOptions(AdmobNativeAdOptions admobNativeAdOptions) {
            this.f9258throw = admobNativeAdOptions;
            return this;
        }

        public Builder setAllowShowCloseBtn(boolean z) {
            this.f9256final = z;
            return this;
        }

        public Builder setBannerSize(int i) {
            this.f9255const = i;
            return this;
        }

        public Builder setBidNotify(boolean z) {
            this.f9278this = z;
            return this;
        }

        @Deprecated
        public Builder setDownloadType(int i) {
            this.f9275goto = i;
            return this;
        }

        public Builder setExtraObject(String str, Object obj) {
            Map<String, Object> map = this.f9271case;
            if (map != null) {
                map.put(str, obj);
            }
            return this;
        }

        public Builder setGMAdSlotBaiduOption(@NonNull GMAdSlotBaiduOption gMAdSlotBaiduOption) {
            this.f9279try = gMAdSlotBaiduOption;
            return this;
        }

        public Builder setGMAdSlotGDTOption(@NonNull GMAdSlotGDTOption gMAdSlotGDTOption) {
            this.f9277new = gMAdSlotGDTOption;
            return this;
        }

        public Builder setImageAdSize(int i, int i2) {
            this.f9253catch = i;
            this.f9254class = i2;
            return this;
        }

        public Builder setMuted(boolean z) {
            this.f9272do = z;
            return this;
        }

        @Deprecated
        public Builder setRefreshTime(int i) {
            return this;
        }

        public Builder setScenarioId(String str) {
            this.f9270break = str;
            return this;
        }

        @Deprecated
        public Builder setTestSlotId(String str) {
            this.f9273else = str;
            return this;
        }

        public Builder setUseSurfaceView(boolean z) {
            this.f9274for = z;
            return this;
        }

        public Builder setUserID(String str) {
            this.f9257super = str;
            return this;
        }

        public Builder setVolume(float f) {
            this.f9276if = f;
            return this;
        }
    }

    public GMAdSlotBanner(Builder builder, AnonymousClass1 anonymousClass1) {
        super(builder);
        this.f9247class = builder.f9253catch;
        this.f9248const = builder.f9254class;
        this.f9249final = builder.f9255const;
        this.f9250super = builder.f9256final;
        this.f9251throw = builder.f9257super;
        AdmobNativeAdOptions admobNativeAdOptions = builder.f9258throw;
        if (admobNativeAdOptions != null) {
            this.f9252while = admobNativeAdOptions;
        } else {
            this.f9252while = new AdmobNativeAdOptions();
        }
    }

    public AdmobNativeAdOptions getAdmobNativeAdOptions() {
        return this.f9252while;
    }

    public int getBannerSize() {
        return this.f9249final;
    }

    public int getHeight() {
        return this.f9248const;
    }

    public String getUserID() {
        return this.f9251throw;
    }

    public int getWidth() {
        return this.f9247class;
    }

    public boolean isAllowShowCloseBtn() {
        return this.f9250super;
    }
}
