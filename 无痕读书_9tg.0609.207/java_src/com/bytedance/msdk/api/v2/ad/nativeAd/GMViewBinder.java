package com.bytedance.msdk.api.v2.ad.nativeAd;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMViewBinder {
    public final int callToActionId;
    public final int decriptionTextId;
    @NonNull
    public final Map<String, Integer> extras;
    public final int groupImage1Id;
    public final int groupImage2Id;
    public final int groupImage3Id;
    public final int iconImageId;
    public final int layoutId;
    public final int logoLayoutId;
    public final int mainImageId;
    public final int mediaViewId;
    public final int sourceId;
    public final int titleId;

    /* loaded from: classes8.dex */
    public static class Builder {

        /* renamed from: break  reason: not valid java name */
        public int f9226break;

        /* renamed from: case  reason: not valid java name */
        public int f9227case;

        /* renamed from: catch  reason: not valid java name */
        public int f9228catch;

        /* renamed from: class  reason: not valid java name */
        public int f9229class;
        @NonNull

        /* renamed from: const  reason: not valid java name */
        public Map<String, Integer> f9230const;

        /* renamed from: do  reason: not valid java name */
        public int f9231do;

        /* renamed from: else  reason: not valid java name */
        public int f9232else;

        /* renamed from: for  reason: not valid java name */
        public int f9233for;

        /* renamed from: goto  reason: not valid java name */
        public int f9234goto;

        /* renamed from: if  reason: not valid java name */
        public int f9235if;

        /* renamed from: new  reason: not valid java name */
        public int f9236new;

        /* renamed from: this  reason: not valid java name */
        public int f9237this;

        /* renamed from: try  reason: not valid java name */
        public int f9238try;

        public Builder(int i) {
            this.f9230const = Collections.emptyMap();
            this.f9231do = i;
            this.f9230const = new HashMap();
        }

        @NonNull
        public Builder addExtra(String str, int i) {
            this.f9230const.put(str, Integer.valueOf(i));
            return this;
        }

        @NonNull
        public Builder addExtras(Map<String, Integer> map) {
            this.f9230const = new HashMap(map);
            return this;
        }

        @NonNull
        public GMViewBinder build() {
            return new GMViewBinder(this);
        }

        @NonNull
        public Builder callToActionId(int i) {
            this.f9236new = i;
            return this;
        }

        @NonNull
        public Builder descriptionTextId(int i) {
            this.f9233for = i;
            return this;
        }

        @NonNull
        public Builder groupImage1Id(int i) {
            this.f9226break = i;
            return this;
        }

        @NonNull
        public Builder groupImage2Id(int i) {
            this.f9228catch = i;
            return this;
        }

        @NonNull
        public Builder groupImage3Id(int i) {
            this.f9229class = i;
            return this;
        }

        @NonNull
        public Builder iconImageId(int i) {
            this.f9238try = i;
            return this;
        }

        @NonNull
        public Builder logoLayoutId(int i) {
            this.f9237this = i;
            return this;
        }

        @NonNull
        public Builder mainImageId(int i) {
            this.f9227case = i;
            return this;
        }

        @NonNull
        public Builder mediaViewIdId(int i) {
            this.f9232else = i;
            return this;
        }

        @NonNull
        public Builder sourceId(int i) {
            this.f9234goto = i;
            return this;
        }

        @NonNull
        public Builder titleId(int i) {
            this.f9235if = i;
            return this;
        }
    }

    public GMViewBinder(@NonNull Builder builder) {
        this.layoutId = builder.f9231do;
        this.titleId = builder.f9235if;
        this.decriptionTextId = builder.f9233for;
        this.callToActionId = builder.f9236new;
        this.iconImageId = builder.f9238try;
        this.mainImageId = builder.f9227case;
        this.mediaViewId = builder.f9232else;
        this.sourceId = builder.f9234goto;
        this.extras = builder.f9230const;
        this.groupImage1Id = builder.f9226break;
        this.groupImage2Id = builder.f9228catch;
        this.groupImage3Id = builder.f9229class;
        this.logoLayoutId = builder.f9237this;
    }
}
