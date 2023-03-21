.class public Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$4;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClicked()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$4;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onVideoCompleted()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$4;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$4;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoError(Lcom/bytedance/msdk/api/AdError;)V

    :cond_0
    return-void
.end method

.method public onVideoInit()V
    .locals 0

    return-void
.end method

.method public onVideoLoaded(I)V
    .locals 0

    return-void
.end method

.method public onVideoLoading()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$4;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public onVideoReady()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$4;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public onVideoStart()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$4;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public onVideoStop()V
    .locals 0

    return-void
.end method
