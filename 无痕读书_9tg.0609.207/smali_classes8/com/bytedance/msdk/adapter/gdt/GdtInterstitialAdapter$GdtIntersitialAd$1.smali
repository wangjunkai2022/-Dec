.class public Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;->onInterstitialAdClick()V

    :cond_0
    return-void
.end method

.method public onADClosed()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;->onInterstitialClosed()V

    :cond_0
    return-void
.end method

.method public onADExposure()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;->onInterstitialShow()V

    :cond_0
    return-void
.end method

.method public onADLeftApplication()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onADOpened()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;->onAdOpened()V

    :cond_0
    return-void
.end method

.method public onADReceive()V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->if:Z

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 3
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 4
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 5
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 6
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

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GDT_clientBidding \u63d2\u5c4f \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 7
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 8
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isMultiBidding()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 9
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 10
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPMLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setLevelTag(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GDT_\u591a\u9636\u5e95\u4ef7 \u63d2\u5c4f \u8fd4\u56de\u7684\u4ef7\u683c\u6807\u7b7e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 11
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 12
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPMLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_ECMP"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    .line 13
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 14
    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    const/4 v1, 0x5

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    const/4 v1, 0x3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;)V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->if:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdError;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method

.method public onRenderFail()V
    .locals 0

    return-void
.end method

.method public onRenderSuccess()V
    .locals 0

    return-void
.end method

.method public onVideoCached()V
    .locals 0

    return-void
.end method
