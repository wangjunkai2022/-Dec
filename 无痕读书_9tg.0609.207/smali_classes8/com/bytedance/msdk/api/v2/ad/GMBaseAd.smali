.class public abstract Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;
.super Ljava/lang/Object;
.source "GMBaseAd.java"


# instance fields
.field public final do:Lcom/bytedance/msdk/api/AdSlot$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    return-void
.end method


# virtual methods
.method public final do(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getScenarioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setScenarioId(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isBidNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 4
    instance-of v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    .line 6
    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->isSplashPreLoad()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->createTTVideoOption(Z)Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTTVideoOption(Lcom/bytedance/msdk/api/TTVideoOption;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->createTTVideoOption(Z)Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTTVideoOption(Lcom/bytedance/msdk/api/TTVideoOption;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getTTRequestExtraParams()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTTRequestExtraParams(Lcom/bytedance/msdk/api/TTRequestExtraParams;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 9
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getDownloadType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 10
    iget-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setV2Request(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    return-void
.end method

.method public getAdSlot()Lcom/bytedance/msdk/api/AdSlot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method public loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V

    .line 2
    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 3
    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 4
    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdStyleType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdStyleType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 5
    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdmobNativeAdOptions()Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdmobNativeAdOptions(Lcom/bytedance/msdk/api/AdmobNativeAdOptions;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 6
    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getNativeAdLogoParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setGdtNativeAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    :cond_0
    return-void
.end method
