.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;
.super Ljava/lang/Object;
.source "AdSlotInner.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public ifTest:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->c:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->d:I

    .line 4
    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->ifTest:I

    return-void
.end method

.method public static getShallowCopy(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/AdSlot;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isSupportDeepLink()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getMediaExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setCustomData(Ljava/util/Map;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTTVideoOption(Lcom/bytedance/msdk/api/TTVideoOption;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTTRequestExtraParams(Lcom/bytedance/msdk/api/TTRequestExtraParams;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdStyleType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getBannerSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setBannerSize(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdmobNativeAdOptions()Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdmobNativeAdOptions(Lcom/bytedance/msdk/api/AdmobNativeAdOptions;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getGdtNativeAdLogoParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setGdtNativeAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getSplashButtonType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setSplashButtonType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isBidNotify()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isForceLoadBottom()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setForceLoadBottom(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTestSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isV2Request()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setV2Request(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 24
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v0

    .line 25
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->a()Ljava/util/List;

    move-result-object v1

    const-string v2, "mAdWidth"

    .line 26
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mAdHeight"

    .line 27
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mSupportDeepLink"

    .line 28
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mAdCount"

    .line 29
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mRewardName"

    .line 30
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mRewardAmount"

    .line 31
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mMediaExtra"

    .line 32
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mCustomData"

    .line 33
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mUserID"

    .line 34
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mOrientation"

    .line 35
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mAdType"

    .line 36
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mTTVideoOption"

    .line 37
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mRequestParams"

    .line 38
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mAdStyleType"

    .line 39
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mBannerSize"

    .line 40
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mAdmobNativeAdOptions"

    .line 41
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "gdtNativeAdLogoParams"

    .line 42
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mSplashButtonType"

    .line 43
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mDownloadType"

    .line 44
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mBidNotify"

    .line 45
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mForceLoadBottom"

    .line 46
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mTestSlotId"

    .line 47
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "mV2Request"

    .line 48
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/AdSlot;->setAdUnitId(Ljava/lang/String;)V

    const-string v2, "mAdUnitId"

    .line 50
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/AdSlot;->setVersion(Ljava/lang/String;)V

    const-string v2, "version"

    .line 52
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getWaterfallId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/msdk/api/AdSlot;->setWaterfallId(J)V

    const-string v2, "waterfallId"

    .line 54
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getAdloadSeq()I

    move-result v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setAdloadSeq(I)V

    const-string v2, "mAdloadSeq"

    .line 56
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setLinkedId(Ljava/lang/String;)V

    const-string v2, "mLinkedId"

    .line 58
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getSegmentId()I

    move-result v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setSegmentId(I)V

    const-string v2, "segmentId"

    .line 60
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getSegmentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setSegmentVersion(Ljava/lang/String;)V

    const-string v2, "segmentVersion"

    .line 62
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getReqType()I

    move-result v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setReqType(I)V

    const-string v2, "reqType"

    .line 64
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getmWaterfallExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setmWaterfallExtra(Ljava/lang/String;)V

    const-string v2, "mWaterfallExtra"

    .line 66
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getTransparentParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setTransparentParams(Ljava/lang/String;)V

    const-string v2, "mTransparentParams"

    .line 68
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getIfTest()I

    move-result v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setIfTest(I)V

    const-string v2, "ifTest"

    .line 70
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getBidFloor()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/msdk/api/AdSlot;->setBidFloor(D)V

    const-string v2, "mBidFloor"

    .line 72
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getParalleType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/AdSlot;->setParalleType(I)V

    const-string v2, "mParalleType"

    .line 74
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getReqParallelNum()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/AdSlot;->setReqParallelNum(I)V

    const-string v2, "mReqParallelNum"

    .line 76
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getSplashShakeButton()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/AdSlot;->setSplashShakeButton(Z)V

    const-string v2, "mSplashShakeButton"

    .line 78
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network_ad_num_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getNetWorkNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setNetWorkNum(Ljava/lang/String;)V

    const-string v2, "mNetWorkNum"

    .line 80
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getScenarioId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/api/AdSlot;->setScenarioId(Ljava/lang/String;)V

    const-string p0, "mScenarioId"

    .line 82
    invoke-static {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->b(Ljava/util/List;Ljava/lang/String;)V

    const-string p0, "AdSlot"

    .line 83
    invoke-static {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/k;->a(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAdloadSeq()I
    .locals 1

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->b:I

    return v0
.end method

.method public getIfTest()I
    .locals 1

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->ifTest:I

    return v0
.end method

.method public getLinkedId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetWorkNum()I
    .locals 1

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->i:I

    return v0
.end method

.method public getPrimeRitReqType()I
    .locals 1

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->c:I

    return v0
.end method

.method public getReqType()I
    .locals 1

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->d:I

    return v0
.end method

.method public getSegmentId()I
    .locals 1

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->e:I

    return v0
.end method

.method public getSegmentVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTransparentParams()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getmWaterfallExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setAdloadSeq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->b:I

    return-void
.end method

.method public setIfTest(I)V
    .locals 0

    .line 1
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->ifTest:I

    return-void
.end method

.method public setLinkedId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->a:Ljava/lang/String;

    return-void
.end method

.method public setNetWorkNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/s;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->i:I

    return-void
.end method

.method public setPrimeRitReqType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->c:I

    return-void
.end method

.method public setReqType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->d:I

    return-void
.end method

.method public setSegmentId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->e:I

    return-void
.end method

.method public setSegmentVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->f:Ljava/lang/String;

    return-void
.end method

.method public setTransparentParams(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->g:Ljava/lang/String;

    return-void
.end method

.method public setmWaterfallExtra(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->h:Ljava/lang/String;

    return-void
.end method
