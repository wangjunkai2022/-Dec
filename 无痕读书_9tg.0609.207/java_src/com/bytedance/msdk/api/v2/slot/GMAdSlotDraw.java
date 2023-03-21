package com.bytedance.msdk.api.v2.slot;

import androidx.annotation.NonNull;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotBaiduOption;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMAdSlotDraw extends GMAdSlotBase {

    /* renamed from: class  reason: not valid java name */
    public int f9280class;

    /* renamed from: const  reason: not valid java name */
    public int f9281const;

    /* renamed from: final  reason: not valid java name */
    public int f9282final;

    /* loaded from: classes8.dex */
    public static class Builder extends GMAdSlotBase.Builder {

        /* renamed from: catch  reason: not valid java name */
        public int f9283catch = 640;

        /* renamed from: class  reason: not valid java name */
        public int f9284class = 320;

        /* renamed from: const  reason: not valid java name */
        public int f9285const = 1;

        public GMAdSlotDraw build() {
            return new GMAdSlotDraw(this, null);
        }

        public Builder setAdCount(int i) {
            if (i < 1) {
                this.f9285const = 1;
            } else if (i > 3) {
                this.f9285const = 3;
            } else {
                this.f9285const = i;
            }
            return this;
        }

        public Builder setBidNotify(boolean z) {
            this.f9278this = z;
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
            this.f9283catch = i;
            this.f9284class = i2;
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
    }

    public GMAdSlotDraw(Builder builder, AnonymousClass1 anonymousClass1) {
        super(builder);
        this.f9280class = builder.f9283catch;
        this.f9281const = builder.f9284class;
        this.f9282final = builder.f9285const;
    }

    public int getAdCount() {
        return this.f9282final;
    }

    public int getHeight() {
        return this.f9281const;
    }

    public int getWidth() {
        return this.f9280class;
    }
}
