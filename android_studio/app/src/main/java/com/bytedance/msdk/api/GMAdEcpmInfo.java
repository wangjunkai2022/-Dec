package com.bytedance.msdk.api;

import android.text.TextUtils;
import com.apk.Cgoto;

/* loaded from: classes8.dex */
public class GMAdEcpmInfo {

    /* renamed from: case  reason: not valid java name */
    public String f8895case;

    /* renamed from: do  reason: not valid java name */
    public int f8896do;

    /* renamed from: else  reason: not valid java name */
    public int f8897else;

    /* renamed from: for  reason: not valid java name */
    public String f8898for;

    /* renamed from: goto  reason: not valid java name */
    public String f8899goto;

    /* renamed from: if  reason: not valid java name */
    public String f8900if;

    /* renamed from: new  reason: not valid java name */
    public String f8901new;

    /* renamed from: this  reason: not valid java name */
    public String f8902this;

    /* renamed from: try  reason: not valid java name */
    public String f8903try;

    @Deprecated
    public int getAdNetworkPlatformId() {
        return this.f8896do;
    }

    public String getAdNetworkPlatformName() {
        return this.f8900if;
    }

    public String getAdNetworkRitId() {
        return this.f8901new;
    }

    public String getAdnName() {
        return TextUtils.isEmpty(this.f8898for) ? this.f8900if : this.f8898for;
    }

    public String getCustomAdNetworkPlatformName() {
        return this.f8898for;
    }

    public String getErrorMsg() {
        return this.f8899goto;
    }

    public String getLevelTag() {
        return this.f8903try;
    }

    public String getPreEcpm() {
        return this.f8895case;
    }

    public int getReqBiddingType() {
        return this.f8897else;
    }

    public String getRequestId() {
        return this.f8902this;
    }

    public void setAdNetworkPlatformId(int i) {
        this.f8896do = i;
    }

    public void setAdNetworkPlatformName(String str) {
        this.f8900if = str;
    }

    public void setAdNetworkRitId(String str) {
        this.f8901new = str;
    }

    public void setCustomAdNetworkPlatformName(String str) {
        this.f8898for = str;
    }

    public void setErrorMsg(String str) {
        this.f8899goto = str;
    }

    public void setLevelTag(String str) {
        this.f8903try = str;
    }

    public void setPreEcpm(String str) {
        this.f8895case = str;
    }

    public void setReqBiddingType(int i) {
        this.f8897else = i;
    }

    public void setRequestId(String str) {
        this.f8902this = str;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("{mSdkNum='");
        m1016super.append(this.f8896do);
        m1016super.append('\'');
        m1016super.append(", mSlotId='");
        Cgoto.m987abstract(m1016super, this.f8901new, '\'', ", mLevelTag='");
        Cgoto.m987abstract(m1016super, this.f8903try, '\'', ", mEcpm=");
        m1016super.append(this.f8895case);
        m1016super.append(", mReqBiddingType=");
        m1016super.append(this.f8897else);
        m1016super.append('\'');
        m1016super.append(", mRequestId=");
        m1016super.append(this.f8902this);
        m1016super.append('}');
        return m1016super.toString();
    }
}
