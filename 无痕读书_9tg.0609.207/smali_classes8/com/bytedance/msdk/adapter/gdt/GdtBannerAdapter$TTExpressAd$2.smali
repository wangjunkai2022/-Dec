.class public Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCached(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onVideoComplete(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public onVideoError(Lcom/qq/e/ads/nativ/NativeExpressADView;Lcom/qq/e/comm/util/AdError;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-virtual {p2}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoError(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {p2}, Lcom/bytedance/msdk/api/AdError;-><init>()V

    invoke-interface {p1, p2}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoError(Lcom/bytedance/msdk/api/AdError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoInit(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->getBoundData()Lcom/qq/e/comm/pi/AdData;

    move-result-object p1

    const-class v1, Lcom/qq/e/comm/pi/AdData$VideoPlayer;

    invoke-interface {p1, v1}, Lcom/qq/e/comm/pi/AdData;->getProperty(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qq/e/comm/pi/AdData$VideoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "{state:"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/qq/e/comm/pi/AdData$VideoPlayer;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "duration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/qq/e/comm/pi/AdData$VideoPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/qq/e/comm/pi/AdData$VideoPlayer;->getCurrentPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    throw v1
.end method

.method public onVideoLoading(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onVideoPageClose(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onVideoPageOpen(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onVideoPause(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public onVideoReady(Lcom/qq/e/ads/nativ/NativeExpressADView;J)V
    .locals 0

    return-void
.end method

.method public onVideoStart(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoStart()V

    :cond_0
    return-void
.end method
