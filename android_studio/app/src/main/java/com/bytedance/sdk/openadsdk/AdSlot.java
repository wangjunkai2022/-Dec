package com.bytedance.sdk.openadsdk;

import com.apk.Cgoto;
import com.bytedance.sdk.openadsdk.api.a;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class AdSlot implements TTAdSlot {

    /* renamed from: a  reason: collision with root package name */
    public String f11394a;
    public int b;
    public int c;
    public float d;
    public float e;
    public int f;
    public boolean g;
    public boolean h;
    public String i;
    public String j;
    public int k;
    public int l;
    public int m;
    public int n;
    public boolean o;
    public int[] p;
    public String q;
    public int r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;
    public String x;
    public TTAdLoadType y;

    /* loaded from: classes8.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public String f11395a;
        public String g;
        public int j;
        public String k;
        public int l;
        public float m;
        public float n;
        public int[] p;
        public int q;
        public String r;
        public String s;
        public String t;
        public String v;
        public String w;
        public String x;
        public int b = 640;
        public int c = 320;
        public boolean d = true;
        public boolean e = false;
        public int f = 1;
        public String h = "defaultUser";
        public int i = 2;
        public boolean o = true;
        public TTAdLoadType u = TTAdLoadType.UNKNOWN;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.f11394a = this.f11395a;
            adSlot.f = this.f;
            adSlot.g = this.d;
            adSlot.h = this.e;
            adSlot.b = this.b;
            adSlot.c = this.c;
            float f = this.m;
            if (f <= 0.0f) {
                adSlot.d = this.b;
                adSlot.e = this.c;
            } else {
                adSlot.d = f;
                adSlot.e = this.n;
            }
            adSlot.i = this.g;
            adSlot.j = this.h;
            adSlot.k = this.i;
            adSlot.m = this.j;
            adSlot.o = this.o;
            adSlot.p = this.p;
            adSlot.r = this.q;
            adSlot.s = this.r;
            adSlot.q = this.k;
            adSlot.u = this.v;
            adSlot.v = this.w;
            adSlot.w = this.x;
            adSlot.l = this.l;
            adSlot.t = this.s;
            adSlot.x = this.t;
            adSlot.y = this.u;
            return adSlot;
        }

        public Builder setAdCount(int i) {
            if (i <= 0) {
                i = 1;
                a.c("TT_AD_SDK", "setAdCount: adCount must greater than 0 ");
            }
            if (i > 20) {
                a.c("TT_AD_SDK", "setAdCount: adCount must less than or equal to 20 ");
                i = 20;
            }
            this.f = i;
            return this;
        }

        public Builder setAdId(String str) {
            this.v = str;
            return this;
        }

        public Builder setAdLoadType(TTAdLoadType tTAdLoadType) {
            this.u = tTAdLoadType;
            return this;
        }

        public Builder setAdType(int i) {
            this.l = i;
            return this;
        }

        public Builder setAdloadSeq(int i) {
            this.q = i;
            return this;
        }

        public Builder setCodeId(String str) {
            this.f11395a = str;
            return this;
        }

        public Builder setCreativeId(String str) {
            this.w = str;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f, float f2) {
            this.m = f;
            this.n = f2;
            return this;
        }

        public Builder setExt(String str) {
            this.x = str;
            return this;
        }

        public Builder setExternalABVid(int... iArr) {
            this.p = iArr;
            return this;
        }

        public Builder setExtraParam(String str) {
            this.k = str;
            return this;
        }

        public Builder setImageAcceptedSize(int i, int i2) {
            this.b = i;
            this.c = i2;
            return this;
        }

        public Builder setIsAutoPlay(boolean z) {
            this.o = z;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.g = str;
            return this;
        }

        public Builder setNativeAdType(int i) {
            this.j = i;
            return this;
        }

        public Builder setOrientation(int i) {
            this.i = i;
            return this;
        }

        public Builder setPrimeRit(String str) {
            this.r = str;
            return this;
        }

        public Builder setSupportDeepLink(boolean z) {
            this.d = z;
            return this;
        }

        public Builder setUserData(String str) {
            this.t = str;
            return this;
        }

        public Builder setUserID(String str) {
            this.h = str;
            return this;
        }

        public Builder supportRenderControl() {
            this.e = true;
            return this;
        }

        public Builder withBid(String str) {
            if (str == null) {
                return this;
            }
            this.s = str;
            return this;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getAdCount() {
        return this.f;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getAdId() {
        return this.u;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public TTAdLoadType getAdLoadType() {
        return this.y;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getAdType() {
        return this.l;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getAdloadSeq() {
        return this.r;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getBidAdm() {
        return this.t;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getCodeId() {
        return this.f11394a;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getCreativeId() {
        return this.v;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getDurationSlotType() {
        return this.n;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public float getExpressViewAcceptedHeight() {
        return this.e;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public float getExpressViewAcceptedWidth() {
        return this.d;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getExt() {
        return this.w;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int[] getExternalABVid() {
        return this.p;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getExtraSmartLookParam() {
        return this.q;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getImgAcceptedHeight() {
        return this.c;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getImgAcceptedWidth() {
        return this.b;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getMediaExtra() {
        return this.i;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getNativeAdType() {
        return this.m;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getOrientation() {
        return this.k;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getPrimeRit() {
        String str = this.s;
        return str == null ? "" : str;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getUserData() {
        return this.x;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getUserID() {
        return this.j;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public boolean isAutoPlay() {
        return this.o;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public boolean isSupportDeepLink() {
        return this.g;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public boolean isSupportRenderConrol() {
        return this.h;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public void setAdCount(int i) {
        this.f = i;
    }

    public void setAdLoadType(TTAdLoadType tTAdLoadType) {
        this.y = tTAdLoadType;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public void setDurationSlotType(int i) {
        this.n = i;
    }

    public void setExternalABVid(int... iArr) {
        this.p = iArr;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public void setNativeAdType(int i) {
        this.m = i;
    }

    public void setUserData(String str) {
        this.x = str;
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.f11394a);
            jSONObject.put("mIsAutoPlay", this.o);
            jSONObject.put("mImgAcceptedWidth", this.b);
            jSONObject.put("mImgAcceptedHeight", this.c);
            jSONObject.put("mExpressViewAcceptedWidth", this.d);
            jSONObject.put("mExpressViewAcceptedHeight", this.e);
            jSONObject.put("mAdCount", this.f);
            jSONObject.put("mSupportDeepLink", this.g);
            jSONObject.put("mSupportRenderControl", this.h);
            jSONObject.put("mMediaExtra", this.i);
            jSONObject.put("mUserID", this.j);
            jSONObject.put("mOrientation", this.k);
            jSONObject.put("mNativeAdType", this.m);
            jSONObject.put("mAdloadSeq", this.r);
            jSONObject.put("mPrimeRit", this.s);
            jSONObject.put("mExtraSmartLookParam", this.q);
            jSONObject.put("mAdId", this.u);
            jSONObject.put("mCreativeId", this.v);
            jSONObject.put("mExt", this.w);
            jSONObject.put("mBidAdm", this.t);
            jSONObject.put("mUserData", this.x);
            jSONObject.put("mAdLoadType", this.y);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("AdSlot{mCodeId='");
        Cgoto.m987abstract(m1016super, this.f11394a, '\'', ", mImgAcceptedWidth=");
        m1016super.append(this.b);
        m1016super.append(", mImgAcceptedHeight=");
        m1016super.append(this.c);
        m1016super.append(", mExpressViewAcceptedWidth=");
        m1016super.append(this.d);
        m1016super.append(", mExpressViewAcceptedHeight=");
        m1016super.append(this.e);
        m1016super.append(", mAdCount=");
        m1016super.append(this.f);
        m1016super.append(", mSupportDeepLink=");
        m1016super.append(this.g);
        m1016super.append(", mSupportRenderControl=");
        m1016super.append(this.h);
        m1016super.append(", mMediaExtra='");
        Cgoto.m987abstract(m1016super, this.i, '\'', ", mUserID='");
        Cgoto.m987abstract(m1016super, this.j, '\'', ", mOrientation=");
        m1016super.append(this.k);
        m1016super.append(", mNativeAdType=");
        m1016super.append(this.m);
        m1016super.append(", mIsAutoPlay=");
        m1016super.append(this.o);
        m1016super.append(", mPrimeRit");
        m1016super.append(this.s);
        m1016super.append(", mAdloadSeq");
        m1016super.append(this.r);
        m1016super.append(", mAdId");
        m1016super.append(this.u);
        m1016super.append(", mCreativeId");
        m1016super.append(this.v);
        m1016super.append(", mExt");
        m1016super.append(this.w);
        m1016super.append(", mUserData");
        m1016super.append(this.x);
        m1016super.append(", mAdLoadType");
        m1016super.append(this.y);
        m1016super.append('}');
        return m1016super.toString();
    }

    public AdSlot() {
        this.k = 2;
        this.o = true;
    }
}
