package com.bytedance.msdk.api.v2;
/* loaded from: classes8.dex */
public class GMGdtOption {

    /* renamed from: do  reason: not valid java name */
    public boolean f9041do;

    /* renamed from: for  reason: not valid java name */
    public boolean f9042for;

    /* renamed from: if  reason: not valid java name */
    public String f9043if;

    /* renamed from: new  reason: not valid java name */
    public boolean f9044new;

    /* loaded from: classes8.dex */
    public static class Builder {

        /* renamed from: do  reason: not valid java name */
        public boolean f9045do = false;

        /* renamed from: if  reason: not valid java name */
        public String f9047if = null;

        /* renamed from: for  reason: not valid java name */
        public boolean f9046for = false;

        /* renamed from: new  reason: not valid java name */
        public boolean f9048new = false;

        public GMGdtOption build() {
            return new GMGdtOption(this, null);
        }

        public Builder setOpensdkVer(String str) {
            this.f9047if = str;
            return this;
        }

        public Builder setSupportH265(boolean z) {
            this.f9046for = z;
            return this;
        }

        public Builder setSupportSplashZoomout(boolean z) {
            this.f9048new = z;
            return this;
        }

        public Builder setWxInstalled(boolean z) {
            this.f9045do = z;
            return this;
        }
    }

    public GMGdtOption(Builder builder, AnonymousClass1 anonymousClass1) {
        this.f9041do = builder.f9045do;
        this.f9043if = builder.f9047if;
        this.f9042for = builder.f9046for;
        this.f9044new = builder.f9048new;
    }

    public String getOpensdkVer() {
        return this.f9043if;
    }

    public boolean isSupportH265() {
        return this.f9042for;
    }

    public boolean isSupportSplashZoomout() {
        return this.f9044new;
    }

    public boolean isWxInstalled() {
        return this.f9041do;
    }
}
