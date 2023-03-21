package com.bytedance.msdk.api.v2.slot;

import androidx.annotation.NonNull;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotBaiduOption;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMAdSlotSplash extends GMAdSlotBase {

    /* renamed from: class  reason: not valid java name */
    public int f9336class;

    /* renamed from: const  reason: not valid java name */
    public int f9337const;

    /* renamed from: final  reason: not valid java name */
    public String f9338final;

    /* renamed from: import  reason: not valid java name */
    public boolean f9339import;

    /* renamed from: native  reason: not valid java name */
    public boolean f9340native;

    /* renamed from: super  reason: not valid java name */
    public boolean f9341super;

    /* renamed from: throw  reason: not valid java name */
    public int f9342throw;
    @Deprecated

    /* renamed from: while  reason: not valid java name */
    public int f9343while;

    /* loaded from: classes8.dex */
    public static class Builder extends GMAdSlotBase.Builder {

        /* renamed from: const  reason: not valid java name */
        public String f9346const;

        /* renamed from: import  reason: not valid java name */
        public boolean f9348import;

        /* renamed from: while  reason: not valid java name */
        public boolean f9351while;

        /* renamed from: catch  reason: not valid java name */
        public int f9344catch = 1080;

        /* renamed from: class  reason: not valid java name */
        public int f9345class = 1920;

        /* renamed from: final  reason: not valid java name */
        public boolean f9347final = false;

        /* renamed from: super  reason: not valid java name */
        public int f9349super = 3000;
        @Deprecated

        /* renamed from: throw  reason: not valid java name */
        public int f9350throw = 1;

        public GMAdSlotSplash build() {
            return new GMAdSlotSplash(this, null);
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

        public Builder setForceLoadBottom(boolean z) {
            this.f9351while = z;
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
            this.f9344catch = i;
            this.f9345class = i2;
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
        public Builder setSplashButtonType(int i) {
            this.f9350throw = i;
            return this;
        }

        public Builder setSplashPreLoad(boolean z) {
            this.f9347final = z;
            return this;
        }

        public Builder setSplashShakeButton(boolean z) {
            this.f9348import = z;
            return this;
        }

        @Deprecated
        public Builder setTestSlotId(String str) {
            this.f9273else = str;
            return this;
        }

        public Builder setTimeOut(int i) {
            this.f9349super = i;
            return this;
        }

        public Builder setUseSurfaceView(boolean z) {
            this.f9274for = z;
            return this;
        }

        public Builder setUserID(String str) {
            this.f9346const = str;
            return this;
        }

        public Builder setVolume(float f) {
            this.f9276if = f;
            return this;
        }
    }

    public GMAdSlotSplash(Builder builder, AnonymousClass1 anonymousClass1) {
        super(builder);
        this.f9336class = builder.f9344catch;
        this.f9337const = builder.f9345class;
        this.f9338final = builder.f9346const;
        this.f9341super = builder.f9347final;
        this.f9342throw = builder.f9349super;
        this.f9343while = builder.f9350throw;
        this.f9339import = builder.f9351while;
        this.f9340native = builder.f9348import;
    }

    public int getHeight() {
        return this.f9337const;
    }

    @Deprecated
    public int getSplashButtonType() {
        return this.f9343while;
    }

    public boolean getSplashShakeButton() {
        return this.f9340native;
    }

    public int getTimeOut() {
        return this.f9342throw;
    }

    public String getUserID() {
        return this.f9338final;
    }

    public int getWidth() {
        return this.f9336class;
    }

    public boolean isForceLoadBottom() {
        return this.f9339import;
    }

    public boolean isSplashPreLoad() {
        return this.f9341super;
    }
}
