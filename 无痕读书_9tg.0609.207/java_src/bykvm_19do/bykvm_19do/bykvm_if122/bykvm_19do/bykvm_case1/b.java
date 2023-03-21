package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1;

import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.k;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.s;
import com.bytedance.msdk.api.AdSlot;
import java.util.List;
import org.litepal.parser.LitePalParser;
/* compiled from: AdSlotInner.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public String f10870a;
    public int b;
    public int e;
    public String f;
    public String g;
    public String h;
    public int i;
    public int c = 1;
    public int d = 0;
    public int ifTest = 0;

    public static AdSlot getShallowCopy(AdSlot adSlot) {
        if (adSlot == null) {
            return null;
        }
        AdSlot.Builder builder = new AdSlot.Builder();
        builder.setImageAdSize(adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight()).setSupportDeepLink(adSlot.isSupportDeepLink()).setAdCount(adSlot.getAdCount()).setRewardName(adSlot.getRewardName()).setRewardAmount(adSlot.getRewardAmount()).setMediaExtra(adSlot.getMediaExtra()).setCustomData(adSlot.getCustomData()).setUserID(adSlot.getUserID()).setOrientation(adSlot.getOrientation()).setAdType(adSlot.getAdType()).setTTVideoOption(adSlot.getTTVideoOption()).setTTRequestExtraParams(adSlot.getReuestParam()).setAdStyleType(adSlot.getAdStyleType()).setBannerSize(adSlot.getBannerSize()).setAdmobNativeAdOptions(adSlot.getAdmobNativeAdOptions()).setGdtNativeAdLogoParams(adSlot.getGdtNativeAdLogoParams()).setSplashButtonType(adSlot.getSplashButtonType()).setDownloadType(adSlot.getDownloadType()).setBidNotify(adSlot.isBidNotify()).setForceLoadBottom(adSlot.isForceLoadBottom()).setTestSlotId(adSlot.getTestSlotId()).setV2Request(adSlot.isV2Request());
        AdSlot build = builder.build();
        List<String> a2 = k.a();
        k.b(a2, "mAdWidth");
        k.b(a2, "mAdHeight");
        k.b(a2, "mSupportDeepLink");
        k.b(a2, "mAdCount");
        k.b(a2, "mRewardName");
        k.b(a2, "mRewardAmount");
        k.b(a2, "mMediaExtra");
        k.b(a2, "mCustomData");
        k.b(a2, "mUserID");
        k.b(a2, "mOrientation");
        k.b(a2, "mAdType");
        k.b(a2, "mTTVideoOption");
        k.b(a2, "mRequestParams");
        k.b(a2, "mAdStyleType");
        k.b(a2, "mBannerSize");
        k.b(a2, "mAdmobNativeAdOptions");
        k.b(a2, "gdtNativeAdLogoParams");
        k.b(a2, "mSplashButtonType");
        k.b(a2, "mDownloadType");
        k.b(a2, "mBidNotify");
        k.b(a2, "mForceLoadBottom");
        k.b(a2, "mTestSlotId");
        k.b(a2, "mV2Request");
        build.setAdUnitId(adSlot.getAdUnitId());
        k.b(a2, "mAdUnitId");
        build.setVersion(adSlot.getVersion());
        k.b(a2, LitePalParser.NODE_VERSION);
        build.setWaterfallId(adSlot.getWaterfallId());
        k.b(a2, "waterfallId");
        build.setAdloadSeq(adSlot.getAdloadSeq());
        k.b(a2, "mAdloadSeq");
        build.setLinkedId(adSlot.getLinkedId());
        k.b(a2, "mLinkedId");
        build.setSegmentId(adSlot.getSegmentId());
        k.b(a2, "segmentId");
        build.setSegmentVersion(adSlot.getSegmentVersion());
        k.b(a2, "segmentVersion");
        build.setReqType(adSlot.getReqType());
        k.b(a2, "reqType");
        build.setmWaterfallExtra(adSlot.getmWaterfallExtra());
        k.b(a2, "mWaterfallExtra");
        build.setTransparentParams(adSlot.getTransparentParams());
        k.b(a2, "mTransparentParams");
        build.setIfTest(adSlot.getIfTest());
        k.b(a2, "ifTest");
        build.setBidFloor(adSlot.getBidFloor());
        k.b(a2, "mBidFloor");
        build.setParalleType(adSlot.getParalleType());
        k.b(a2, "mParalleType");
        build.setReqParallelNum(adSlot.getReqParallelNum());
        k.b(a2, "mReqParallelNum");
        build.setSplashShakeButton(adSlot.getSplashShakeButton());
        k.b(a2, "mSplashShakeButton");
        build.setNetWorkNum("network_ad_num_" + adSlot.getNetWorkNum());
        k.b(a2, "mNetWorkNum");
        build.setScenarioId(adSlot.getScenarioId());
        k.b(a2, "mScenarioId");
        k.a(a2, "AdSlot");
        return build;
    }

    public int getAdloadSeq() {
        return this.b;
    }

    public int getIfTest() {
        return this.ifTest;
    }

    public String getLinkedId() {
        return this.f10870a;
    }

    public int getNetWorkNum() {
        return this.i;
    }

    public int getPrimeRitReqType() {
        return this.c;
    }

    public int getReqType() {
        return this.d;
    }

    public int getSegmentId() {
        return this.e;
    }

    public String getSegmentVersion() {
        return this.f;
    }

    public String getTransparentParams() {
        return this.g;
    }

    public String getmWaterfallExtra() {
        return this.h;
    }

    public void setAdloadSeq(int i) {
        this.b = i;
    }

    public void setIfTest(int i) {
        this.ifTest = i;
    }

    public void setLinkedId(String str) {
        this.f10870a = str;
    }

    public void setNetWorkNum(String str) {
        this.i = s.a(str);
    }

    public void setPrimeRitReqType(int i) {
        this.c = i;
    }

    public void setReqType(int i) {
        this.d = i;
    }

    public void setSegmentId(int i) {
        this.e = i;
    }

    public void setSegmentVersion(String str) {
        this.f = str;
    }

    public void setTransparentParams(String str) {
        this.g = str;
    }

    public void setmWaterfallExtra(String str) {
        this.h = str;
    }
}
