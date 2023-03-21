package com.bytedance.msdk.api.v2.slot;

import androidx.annotation.NonNull;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotBaiduOption;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import java.util.Map;

/* loaded from: classes8.dex */
public class GMAdSlotInterstitial extends GMAdSlotBase {

    /* renamed from: class  reason: not valid java name */
    public int f9296class;

    /* renamed from: const  reason: not valid java name */
    public int f9297const;

    /* loaded from: classes8.dex */
    public static class Builder extends GMAdSlotBase.Builder {

        /* renamed from: catch  reason: not valid java name */
        public int f9298catch = 640;

        /* renamed from: class  reason: not valid java name */
        public int f9299class = 320;

        public GMAdSlotInterstitial build() {
            return new GMAdSlotInterstitial(this, null);
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
            this.f9298catch = i;
            this.f9299class = i2;
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

        public Builder setVolume(float f) {
            this.f9276if = f;
            return this;
        }
    }

    public GMAdSlotInterstitial(Builder builder, AnonymousClass1 anonymousClass1) {
        super(builder);
        this.f9296class = builder.f9298catch;
        this.f9297const = builder.f9299class;
    }

    public int getHeight() {
        return this.f9297const;
    }

    public int getWidth() {
        return this.f9296class;
    }
}
