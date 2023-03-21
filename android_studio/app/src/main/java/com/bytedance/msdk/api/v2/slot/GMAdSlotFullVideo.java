package com.bytedance.msdk.api.v2.slot;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotBaiduOption;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import java.util.Map;

/* loaded from: classes8.dex */
public class GMAdSlotFullVideo extends GMAdSlotBase {

    /* renamed from: class  reason: not valid java name */
    public String f9286class;

    /* renamed from: const  reason: not valid java name */
    public int f9287const;

    /* renamed from: final  reason: not valid java name */
    public String f9288final;

    /* renamed from: super  reason: not valid java name */
    public int f9289super;

    /* renamed from: throw  reason: not valid java name */
    public Map<String, String> f9290throw;

    /* loaded from: classes8.dex */
    public static class Builder extends GMAdSlotBase.Builder {

        /* renamed from: catch  reason: not valid java name */
        public String f9291catch;

        /* renamed from: class  reason: not valid java name */
        public int f9292class;

        /* renamed from: const  reason: not valid java name */
        public String f9293const = "";

        /* renamed from: final  reason: not valid java name */
        public int f9294final = 0;

        /* renamed from: super  reason: not valid java name */
        public Map<String, String> f9295super;

        public GMAdSlotFullVideo build() {
            return new GMAdSlotFullVideo(this, null);
        }

        public Builder setBidNotify(boolean z) {
            this.f9278this = z;
            return this;
        }

        public Builder setCustomData(@NonNull Map<String, String> map) {
            this.f9295super = map;
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
            this.f9292class = i;
            return this;
        }

        public Builder setRewardAmount(int i) {
            this.f9294final = i;
            return this;
        }

        public Builder setRewardName(@NonNull String str) {
            this.f9293const = str;
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
            this.f9291catch = str;
            return this;
        }

        public Builder setVolume(float f) {
            this.f9276if = f;
            return this;
        }
    }

    public GMAdSlotFullVideo(Builder builder, AnonymousClass1 anonymousClass1) {
        super(builder);
        this.f9286class = builder.f9291catch;
        this.f9287const = builder.f9292class;
        this.f9288final = builder.f9293const;
        this.f9289super = builder.f9294final;
        this.f9290throw = builder.f9295super;
    }

    @Nullable
    public Map<String, String> getCustomData() {
        return this.f9290throw;
    }

    public int getOrientation() {
        return this.f9287const;
    }

    public int getRewardAmount() {
        return this.f9289super;
    }

    public String getRewardName() {
        return this.f9288final;
    }

    public String getUserID() {
        return this.f9286class;
    }
}
