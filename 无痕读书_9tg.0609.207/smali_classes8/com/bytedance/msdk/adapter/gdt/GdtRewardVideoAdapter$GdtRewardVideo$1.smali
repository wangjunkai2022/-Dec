.class public Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClick()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterRewardedAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterRewardedAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onRewardClick()V

    :cond_0
    return-void
.end method

.method public onADClose()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterRewardedAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterRewardedAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onRewardedAdClosed()V

    :cond_0
    return-void
.end method

.method public onADExpose()V
    .locals 0

    return-void
.end method

.method public onADLoad()V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->if:Z

    .line 2
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 4
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 5
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 6
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 7
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v1

    int-to-double v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GDT_clientBidding Reward \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 8
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 9
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isMultiBidding()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 10
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 11
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPMLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setLevelTag(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GDT_\u591a\u9636\u5e95\u4ef7 Reward \u8fd4\u56de\u7684 \u4ef7\u683c\u6807\u7b7e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 12
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 13
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPMLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_ECMP"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    :goto_2
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "eCPM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 14
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 15
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , eCPMLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 16
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 17
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPMLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GdtRewardVideoAdapter"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const-string v2, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_3
    return-void
.end method

.method public onADShow()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterRewardedAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterRewardedAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onRewardedAdShow()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->if:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdError;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterRewardedAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterRewardedAdListener;

    .line 4
    new-instance v1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V

    :cond_0
    return-void
.end method

.method public onVideoCached()V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdVideoCache(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method public onVideoComplete()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterRewardedAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterRewardedAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onVideoComplete()V

    :cond_0
    return-void
.end method
