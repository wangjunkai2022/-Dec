package com.bytedance.msdk.api.v2.ad.custom.nativeAd;

import android.view.View;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomTTBaseAd;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomAd;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdAppInfo;
import java.util.List;
/* loaded from: classes8.dex */
public class GMCustomBaseNativeAd extends GMCustomAd {

    /* renamed from: break  reason: not valid java name */
    public int f9169break;

    /* renamed from: case  reason: not valid java name */
    public int f9170case;

    /* renamed from: catch  reason: not valid java name */
    public String f9171catch;

    /* renamed from: class  reason: not valid java name */
    public double f9172class;

    /* renamed from: const  reason: not valid java name */
    public List<String> f9173const;

    /* renamed from: else  reason: not valid java name */
    public int f9174else;

    /* renamed from: final  reason: not valid java name */
    public String f9175final;

    /* renamed from: for  reason: not valid java name */
    public String f9176for;

    /* renamed from: goto  reason: not valid java name */
    public String f9177goto;

    /* renamed from: if  reason: not valid java name */
    public String f9178if;

    /* renamed from: import  reason: not valid java name */
    public double f9179import;

    /* renamed from: new  reason: not valid java name */
    public String f9180new;

    /* renamed from: super  reason: not valid java name */
    public int f9181super;

    /* renamed from: this  reason: not valid java name */
    public int f9182this;

    /* renamed from: throw  reason: not valid java name */
    public int f9183throw;

    /* renamed from: try  reason: not valid java name */
    public String f9184try;

    /* renamed from: while  reason: not valid java name */
    public GMNativeAdAppInfo f9185while;

    public String getActionText() {
        return this.f9177goto;
    }

    public int getAdImageMode() {
        return this.f9181super;
    }

    public double getBiddingPrice() {
        return this.f9179import;
    }

    public String getDescription() {
        return this.f9176for;
    }

    public View getExpressView() {
        return null;
    }

    public String getIconUrl() {
        return this.f9180new;
    }

    public int getImageHeight() {
        return this.f9174else;
    }

    public List<String> getImageList() {
        return this.f9173const;
    }

    public String getImageUrl() {
        return this.f9184try;
    }

    public int getImageWidth() {
        return this.f9170case;
    }

    public int getInteractionType() {
        return this.f9183throw;
    }

    public GMNativeAdAppInfo getNativeAdAppInfo() {
        return this.f9185while;
    }

    public String getPackageName() {
        return this.f9171catch;
    }

    public String getSource() {
        return this.f9175final;
    }

    public double getStarRating() {
        return this.f9172class;
    }

    public String getTitle() {
        return this.f9178if;
    }

    public int getVideoHeight() {
        return this.f9169break;
    }

    public int getVideoWidth() {
        return this.f9182this;
    }

    public boolean isServerBidding() {
        return this.f9102do.getAdNetworkSlotType() == 2;
    }

    public void setActionText(String str) {
        this.f9177goto = str;
    }

    public void setAdImageMode(int i) {
        this.f9181super = i;
    }

    public void setBiddingPrice(double d) {
        this.f9179import = d;
    }

    public void setDescription(String str) {
        this.f9176for = str;
    }

    public void setExpressAd(boolean z) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd != null) {
            gMCustomTTBaseAd.setExpressAd(z);
        }
    }

    public void setIconUrl(String str) {
        this.f9180new = str;
    }

    public void setImageHeight(int i) {
        this.f9174else = i;
    }

    public void setImageList(List<String> list) {
        this.f9173const = list;
    }

    public void setImageUrl(String str) {
        this.f9184try = str;
    }

    public void setImageWidth(int i) {
        this.f9170case = i;
    }

    public void setInteractionType(int i) {
        this.f9183throw = i;
    }

    public void setNativeAdAppInfo(GMNativeAdAppInfo gMNativeAdAppInfo) {
        this.f9185while = gMNativeAdAppInfo;
    }

    public void setPackageName(String str) {
        this.f9171catch = str;
    }

    public void setSource(String str) {
        this.f9175final = str;
    }

    public void setStarRating(double d) {
        this.f9172class = d;
    }

    public void setTitle(String str) {
        this.f9178if = str;
    }

    public void setVideoHeight(int i) {
        this.f9169break = i;
    }

    public void setVideoWidth(int i) {
        this.f9182this = i;
    }
}
