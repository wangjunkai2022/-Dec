.class public Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v0, p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    .line 4
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onVideoError()V

    :cond_0
    return-void
.end method

.method public onVideoInit()V
    .locals 0

    return-void
.end method

.method public onVideoLoading()V
    .locals 0

    return-void
.end method

.method public onVideoPageClose()V
    .locals 0

    return-void
.end method

.method public onVideoPageOpen()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoReady(J)V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
