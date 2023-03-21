package com.bytedance.msdk.api.v2.slot;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.GMAdSlotFullVideo;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitial;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotBaiduOption;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMAdSlotInterstitialFull extends GMAdSlotBase {

    /* renamed from: class  reason: not valid java name */
    public int f9300class;

    /* renamed from: const  reason: not valid java name */
    public int f9301const;

    /* renamed from: final  reason: not valid java name */
    public String f9302final;

    /* renamed from: import  reason: not valid java name */
    public Map<String, String> f9303import;

    /* renamed from: super  reason: not valid java name */
    public int f9304super;

    /* renamed from: throw  reason: not valid java name */
    public String f9305throw;

    /* renamed from: while  reason: not valid java name */
    public int f9306while;

    /* loaded from: classes8.dex */
    public static class Builder extends GMAdSlotBase.Builder {

        /* renamed from: catch  reason: not valid java name */
        public int f9307catch = 640;

        /* renamed from: class  reason: not valid java name */
        public int f9308class = 320;

        /* renamed from: const  reason: not valid java name */
        public String f9309const;

        /* renamed from: final  reason: not valid java name */
        public int f9310final;

        /* renamed from: super  reason: not valid java name */
        public String f9311super;

        /* renamed from: throw  reason: not valid java name */
        public int f9312throw;

        /* renamed from: while  reason: not valid java name */
        public Map<String, String> f9313while;

        public GMAdSlotInterstitialFull build() {
            return new GMAdSlotInterstitialFull(this, null);
        }

        public Builder setBidNotify(boolean z) {
            this.f9278this = z;
            return this;
        }

        public Builder setCustomData(@NonNull Map<String, String> map) {
            this.f9313while = map;
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
            this.f9307catch = i;
            this.f9308class = i2;
            return this;
        }

        public Builder setMuted(boolean z) {
            this.f9272do = z;
            return this;
        }

        public Builder setOrientation(int i) {
            this.f9310final = i;
            return this;
        }

        public Builder setRewardAmount(int i) {
            this.f9312throw = i;
            return this;
        }

        public Builder setRewardName(@NonNull String str) {
            this.f9311super = str;
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
            this.f9309const = str;
            return this;
        }

        public Builder setVolume(float f) {
            this.f9276if = f;
            return this;
        }
    }

    public GMAdSlotInterstitialFull(Builder builder, AnonymousClass1 anonymousClass1) {
        super(builder);
        this.f9300class = builder.f9307catch;
        this.f9301const = builder.f9308class;
        this.f9302final = builder.f9309const;
        this.f9304super = builder.f9310final;
        this.f9305throw = builder.f9311super;
        this.f9306while = builder.f9312throw;
        this.f9303import = builder.f9313while;
    }

    @Nullable
    public Map<String, String> getCustomData() {
        return this.f9303import;
    }

    public GMAdSlotFullVideo getGMAdSlotFullVideo() {
        GMAdSlotFullVideo build = new GMAdSlotFullVideo.Builder().setUserID(this.f9302final).setOrientation(this.f9304super).setMuted(isMuted()).setVolume(getVolume()).setUseSurfaceView(isUseSurfaceView()).setGMAdSlotGDTOption(this.f9267new).setGMAdSlotBaiduOption(this.f9269try).setTestSlotId(getTestSlotId()).setDownloadType(getDownloadType()).setBidNotify(isBidNotify()).setRewardName(getRewardName()).setRewardAmount(getRewardAmount()).setCustomData(getCustomData()).build();
        if (build.getParams() != null && getParams() != null) {
            build.getParams().putAll(getParams());
        }
        return build;
    }

    public GMAdSlotInterstitial getGMAdSlotInterstitial() {
        GMAdSlotInterstitial build = new GMAdSlotInterstitial.Builder().setImageAdSize(getWidth(), getHeight()).setMuted(isMuted()).setVolume(getVolume()).setUseSurfaceView(isUseSurfaceView()).setGMAdSlotGDTOption(this.f9267new).setGMAdSlotBaiduOption(this.f9269try).setTestSlotId(getTestSlotId()).setDownloadType(getDownloadType()).setBidNotify(isBidNotify()).build();
        if (build.getParams() != null && getParams() != null) {
            build.getParams().putAll(getParams());
        }
        return build;
    }

    public int getHeight() {
        return this.f9301const;
    }

    public int getOrientation() {
        return this.f9304super;
    }

    public int getRewardAmount() {
        return this.f9306while;
    }

    public String getRewardName() {
        return this.f9305throw;
    }

    public String getUserID() {
        return this.f9302final;
    }

    public int getWidth() {
        return this.f9300class;
    }
}
