.class public Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GdtFullVideoAd"
.end annotation


# instance fields
.field public final synthetic case:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;

.field public do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

.field public for:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

.field public if:Z

.field public new:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

.field public try:Lcom/qq/e/ads/interstitial2/ADRewardListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->case:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$1;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->for:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$2;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$2;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->new:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$3;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$3;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->try:Lcom/qq/e/ads/interstitial2/ADRewardListener;

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
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

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
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

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
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->destroy()V

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    :cond_0
    iput-object v1, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onDestroy()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
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

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->showFullScreenAD(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
