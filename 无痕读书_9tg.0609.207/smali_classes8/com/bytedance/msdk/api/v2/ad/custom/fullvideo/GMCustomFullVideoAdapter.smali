.class public abstract Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;
.super Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomVideoAdapter;
.source "GMCustomFullVideoAdapter.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/IGMCustomFullVideoEvent;


# instance fields
.field public volatile goto:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomVideoAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;->goto:Z

    return-void
.end method


# virtual methods
.method public final callAdVideoCache()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdVideoCache(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;Lcom/bytedance/msdk/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final callFullVideoAdClick()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;->goto:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$2;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->checkLoadSuccess(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    :cond_1
    return-void
.end method

.method public final callFullVideoAdClosed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;->goto:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$3;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->checkLoadSuccess(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    :cond_1
    return-void
.end method

.method public final callFullVideoAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$1;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->checkLoadSuccess(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    :cond_0
    return-void
.end method

.method public final callFullVideoComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;->goto:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$4;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->checkLoadSuccess(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    :cond_1
    return-void
.end method

.method public final callFullVideoError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$5;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$5;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->checkLoadSuccess(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    :cond_0
    return-void
.end method

.method public final callFullVideoRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;->goto:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$7;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$7;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;Lcom/bytedance/msdk/api/reward/RewardItem;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->checkLoadSuccess(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    :cond_2
    return-void
.end method

.method public final callFullVideoSkippedVideo()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;->goto:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$6;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter$6;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->checkLoadSuccess(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    :cond_1
    return-void
.end method

.method public final callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->isCallLoadFailCall()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz v0, :cond_3

    .line 3
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const v2, 0xbf6e

    const v3, 0xbf6f

    .line 4
    invoke-static {v3}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;->getCode()I

    move-result v4

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_2

    :cond_2
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    .line 8
    invoke-static {p1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final callLoadSuccess()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;->callLoadSuccess(D)V

    return-void
.end method

.method public final callLoadSuccess(D)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->isCallLoadSuccessCall()Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_1

    const-string v0, "\u81ea\u5b9a\u4e49Adapter callLoadSuccess"

    .line 3
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAd;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAd;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    .line 5
    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->else:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->setMediaExtraInfo(Ljava/util/Map;)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->setAdType(I)V

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->setCpm(D)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    invoke-virtual {p1, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->setGMCustomBaseAdapter(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz p1, :cond_2

    .line 11
    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->new:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    .line 12
    invoke-static {v1, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
.end method

.method public loadCustom(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;

    .line 3
    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getGMAdSlotFullVideo()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;->load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p2, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    if-eqz v0, :cond_1

    .line 6
    check-cast p2, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;->load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const p2, -0x1869f

    const-string p3, "ClassCastException\uff1aload ad fail adSlot is not GMAdSlotInterstitialFull or GMAdSlotFullVideo"

    invoke-direct {p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    :goto_0
    return-void
.end method

.method public final setMediaExtraInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->else:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
