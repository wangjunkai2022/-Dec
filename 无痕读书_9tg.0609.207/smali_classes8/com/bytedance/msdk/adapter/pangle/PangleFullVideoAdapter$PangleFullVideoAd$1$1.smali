.class public Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onFullVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onFullVideoAdShow()V

    :cond_0
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onFullVideoAdClick()V

    :cond_0
    return-void
.end method

.method public onSkippedVideo()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onSkippedVideo()V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onVideoComplete()V

    :cond_0
    return-void
.end method
