package com.bytedance.msdk.api;

@Deprecated
/* loaded from: classes8.dex */
public class TTVideoOption {

    /* renamed from: do  reason: not valid java name */
    public final boolean f8950do;

    /* renamed from: for  reason: not valid java name */
    public float f8951for;

    /* renamed from: if  reason: not valid java name */
    public final boolean f8952if;

    /* renamed from: new  reason: not valid java name */
    public GDTExtraOption f8953new;

    /* renamed from: try  reason: not valid java name */
    public BaiduExtraOptions f8954try;

    /* loaded from: classes8.dex */
    public static final class Builder {
        @Deprecated

        /* renamed from: do  reason: not valid java name */
        public boolean f8955do = true;
        @Deprecated

        /* renamed from: for  reason: not valid java name */
        public GDTExtraOption f8956for;
        @Deprecated

        /* renamed from: if  reason: not valid java name */
        public float f8957if;
        @Deprecated

        /* renamed from: new  reason: not valid java name */
        public boolean f8958new;
        @Deprecated

        /* renamed from: try  reason: not valid java name */
        public BaiduExtraOptions f8959try;

        public final TTVideoOption build() {
            return new TTVideoOption(this, null);
        }

        @Deprecated
        public Builder setAdmobAppVolume(float f) {
            if (f > 1.0f) {
                f = 1.0f;
            } else if (f < 0.0f) {
                f = 0.0f;
            }
            this.f8957if = f;
            return this;
        }

        @Deprecated
        public Builder setBaiduExtraOption(BaiduExtraOptions baiduExtraOptions) {
            this.f8959try = baiduExtraOptions;
            return this;
        }

        @Deprecated
        public Builder setGDTExtraOption(GDTExtraOption gDTExtraOption) {
            this.f8956for = gDTExtraOption;
            return this;
        }

        @Deprecated
        public final Builder setMuted(boolean z) {
            this.f8955do = z;
            return this;
        }

        @Deprecated
        public final Builder useSurfaceView(boolean z) {
            this.f8958new = z;
            return this;
        }
    }

    public TTVideoOption(Builder builder, AnonymousClass1 anonymousClass1) {
        this.f8950do = builder.f8955do;
        this.f8951for = builder.f8957if;
        this.f8953new = builder.f8956for;
        this.f8952if = builder.f8958new;
        this.f8954try = builder.f8959try;
    }

    public float getAdmobAppVolume() {
        return this.f8951for;
    }

    public BaiduExtraOptions getBaiduExtraOption() {
        return this.f8954try;
    }

    public GDTExtraOption getGDTExtraOption() {
        return this.f8953new;
    }

    public boolean isMuted() {
        return this.f8950do;
    }

    public boolean useSurfaceView() {
        return this.f8952if;
    }
}
