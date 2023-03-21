.class public Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GdtRewardVideo"
.end annotation


# instance fields
.field public do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

.field public for:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

.field public if:Z

.field public final synthetic new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->for:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    return-void
.end method


# virtual methods
.method public adnHasAdVideoCachedApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bidLoseNotify(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    const-string v0, "bidding_lose_reason"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;->getBiddingLossReason(Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/qq/e/ads/LiteAbstractAD;->sendLossNotification(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public bidWinNotify(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/LiteAbstractAD;->sendWinNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public hasDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    iput-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {p2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p2}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/qq/e/ads/LiteAbstractAD;->setBidECPM(I)V

    :cond_0
    iget-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
