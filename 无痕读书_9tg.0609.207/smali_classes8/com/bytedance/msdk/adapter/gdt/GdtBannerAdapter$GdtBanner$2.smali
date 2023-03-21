.class public Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/banner2/UnifiedBannerADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onADClosed()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onADExposure()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onADLeftApplication()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onADReceive()V
    .locals 4
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    .line 1
    iget-boolean v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->if:Z

    if-nez v1, :cond_3

    .line 2
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->do:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    if-eqz v1, :cond_2

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    .line 4
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->do:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 5
    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->getECPM()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    if-lez v0, :cond_0

    int-to-double v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    iget-object v3, v3, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    invoke-virtual {v3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GDT_clientBidding \u63d2\u5c4f \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isMultiBidding()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    .line 6
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->do:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 7
    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setLevelTag(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    iget-object v3, v3, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    invoke-virtual {v3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GDT_\u591a\u9636\u5e95\u4ef7 \u63d2\u5c4f \u8fd4\u56de\u7684 \u4ef7\u683c\u6807\u7b7e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_ECMP"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->if:Z

    :cond_3
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    .line 1
    iget-boolean v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->if:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->if:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdError;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :cond_1
    :goto_0
    return-void
.end method
