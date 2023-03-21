package com.bytedance.msdk.api.v2.slot;

import androidx.annotation.NonNull;
import com.bytedance.msdk.api.AdmobNativeAdOptions;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotBaiduOption;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMAdSlotNative extends GMAdSlotBase {

    /* renamed from: class  reason: not valid java name */
    public int f9314class;

    /* renamed from: const  reason: not valid java name */
    public int f9315const;

    /* renamed from: final  reason: not valid java name */
    public int f9316final;

    /* renamed from: super  reason: not valid java name */
    public int f9317super;

    /* renamed from: throw  reason: not valid java name */
    public String f9318throw;

    /* renamed from: while  reason: not valid java name */
    public AdmobNativeAdOptions f9319while;

    /* loaded from: classes8.dex */
    public static class Builder extends GMAdSlotBase.Builder {

        /* renamed from: catch  reason: not valid java name */
        public int f9320catch = 640;

        /* renamed from: class  reason: not valid java name */
        public int f9321class = 320;

        /* renamed from: const  reason: not valid java name */
        public int f9322const = 1;

        /* renamed from: final  reason: not valid java name */
        public int f9323final = 2;

        /* renamed from: super  reason: not valid java name */
        public String f9324super = "";

        /* renamed from: throw  reason: not valid java name */
        public AdmobNativeAdOptions f9325throw;

        public GMAdSlotNative build() {
            return new GMAdSlotNative(this, null);
        }

        public Builder setAdCount(int i) {
            this.f9322const = i;
            return this;
        }

        public Builder setAdStyleType(int i) {
            this.f9323final = i;
            return this;
        }

        public Builder setAdmobNativeAdOptions(AdmobNativeAdOptions admobNativeAdOptions) {
            this.f9325throw = admobNativeAdOptions;
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
            this.f9320catch = i;
            this.f9321class = i2;
            return this;
        }

        public Builder setMuted(boolean z) {
            this.f9272do = z;
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
            this.f9324super = str;
            return this;
        }

        public Builder setVolume(float f) {
            this.f9276if = f;
            return this;
        }
    }

    public GMAdSlotNative(Builder builder, AnonymousClass1 anonymousClass1) {
        super(builder);
        this.f9314class = builder.f9320catch;
        this.f9315const = builder.f9321class;
        this.f9316final = builder.f9322const;
        this.f9318throw = builder.f9324super;
        this.f9317super = builder.f9323final;
        AdmobNativeAdOptions admobNativeAdOptions = builder.f9325throw;
        if (admobNativeAdOptions != null) {
            this.f9319while = admobNativeAdOptions;
        } else {
            this.f9319while = new AdmobNativeAdOptions();
        }
    }

    public int getAdCount() {
        int i = this.f9316final;
        if (i <= 0) {
            return 1;
        }
        if (i > 3) {
            return 3;
        }
        return i;
    }

    public int getAdStyleType() {
        return this.f9317super;
    }

    public AdmobNativeAdOptions getAdmobNativeAdOptions() {
        return this.f9319while;
    }

    public int getHeight() {
        return this.f9315const;
    }

    public int getRequestCount() {
        int netWorkNum = getNetWorkNum();
        if (netWorkNum > 3) {
            netWorkNum = 3;
        }
        if (netWorkNum > 0) {
            return netWorkNum;
        }
        int i = this.f9316final;
        if (i <= 0) {
            return 1;
        }
        if (i > 3) {
            return 3;
        }
        return i;
    }

    public String getUserID() {
        return this.f9318throw;
    }

    public int getWidth() {
        return this.f9314class;
    }
}
