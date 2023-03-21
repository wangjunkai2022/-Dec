package com.bytedance.msdk.api.v2.slot;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotBaiduOption;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMAdSlotRewardVideo extends GMAdSlotBase {

    /* renamed from: class  reason: not valid java name */
    public String f9326class;

    /* renamed from: const  reason: not valid java name */
    public int f9327const;

    /* renamed from: final  reason: not valid java name */
    public Map<String, String> f9328final;

    /* renamed from: super  reason: not valid java name */
    public String f9329super;

    /* renamed from: throw  reason: not valid java name */
    public int f9330throw;

    /* loaded from: classes8.dex */
    public static class Builder extends GMAdSlotBase.Builder {

        /* renamed from: const  reason: not valid java name */
        public Map<String, String> f9333const;

        /* renamed from: super  reason: not valid java name */
        public int f9335super;

        /* renamed from: catch  reason: not valid java name */
        public String f9331catch = "";

        /* renamed from: class  reason: not valid java name */
        public int f9332class = 0;

        /* renamed from: final  reason: not valid java name */
        public String f9334final = "";

        public GMAdSlotRewardVideo build() {
            return new GMAdSlotRewardVideo(this, null);
        }

        public Builder setBidNotify(boolean z) {
            this.f9278this = z;
            return this;
        }

        public Builder setCustomData(@NonNull Map<String, String> map) {
            this.f9333const = map;
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

        public Builder setMuted(boolean z) {
            this.f9272do = z;
            return this;
        }

        public Builder setOrientation(int i) {
            this.f9335super = i;
            return this;
        }

        public Builder setRewardAmount(int i) {
            this.f9332class = i;
            return this;
        }

        public Builder setRewardName(@NonNull String str) {
            this.f9331catch = str;
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
            this.f9334final = str;
            return this;
        }

        public Builder setVolume(float f) {
            this.f9276if = f;
            return this;
        }
    }

    public GMAdSlotRewardVideo(Builder builder, AnonymousClass1 anonymousClass1) {
        super(builder);
        this.f9326class = builder.f9331catch;
        this.f9327const = builder.f9332class;
        this.f9328final = builder.f9333const;
        this.f9329super = builder.f9334final;
        this.f9330throw = builder.f9335super;
    }

    @Nullable
    public Map<String, String> getCustomData() {
        return this.f9328final;
    }

    public int getOrientation() {
        return this.f9330throw;
    }

    public int getRewardAmount() {
        return this.f9327const;
    }

    public String getRewardName() {
        return this.f9326class;
    }

    public String getUserID() {
        return this.f9329super;
    }
}
