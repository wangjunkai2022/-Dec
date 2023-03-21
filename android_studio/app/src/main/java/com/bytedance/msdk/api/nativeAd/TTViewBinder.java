package com.bytedance.msdk.api.nativeAd;

import androidx.annotation.NonNull;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import java.util.HashMap;
import java.util.Map;

@Deprecated
/* loaded from: classes8.dex */
public class TTViewBinder extends GMViewBinder {

    /* loaded from: classes8.dex */
    public static class Builder extends GMViewBinder.Builder {
        public Builder(int i) {
            super(i);
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public /* bridge */ /* synthetic */ GMViewBinder.Builder addExtras(Map map) {
            return addExtras((Map<String, Integer>) map);
        }

        @Deprecated
        public final Builder decriptionTextId(int i) {
            this.f9233for = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public final Builder addExtra(String str, int i) {
            this.f9230const.put(str, Integer.valueOf(i));
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public final Builder addExtras(Map<String, Integer> map) {
            this.f9230const = new HashMap(map);
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public TTViewBinder build() {
            return new TTViewBinder(this, null);
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public final Builder callToActionId(int i) {
            this.f9236new = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public Builder descriptionTextId(int i) {
            this.f9233for = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public Builder groupImage1Id(int i) {
            this.f9226break = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public final Builder groupImage2Id(int i) {
            this.f9228catch = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public final Builder groupImage3Id(int i) {
            this.f9229class = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public final Builder iconImageId(int i) {
            this.f9238try = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public Builder logoLayoutId(int i) {
            this.f9237this = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public final Builder mainImageId(int i) {
            this.f9227case = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public final Builder mediaViewIdId(int i) {
            this.f9232else = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public final Builder sourceId(int i) {
            this.f9234goto = i;
            return this;
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder.Builder
        @NonNull
        public Builder titleId(int i) {
            this.f9235if = i;
            return this;
        }
    }

    public TTViewBinder(Builder builder, AnonymousClass1 anonymousClass1) {
        super(builder);
    }
}
