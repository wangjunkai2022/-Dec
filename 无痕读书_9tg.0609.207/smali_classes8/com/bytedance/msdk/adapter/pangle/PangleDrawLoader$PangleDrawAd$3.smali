.class public Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onProgressUpdate(JJ)V

    :cond_0
    return-void
.end method

.method public onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public onVideoError(II)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const-string v2, "Android MediaPlay Error Code :"

    invoke-static {v2, p2}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoError(Lcom/bytedance/msdk/api/AdError;)V

    const/16 p1, 0x49

    const/16 p2, 0x48

    :goto_0
    if-eq p1, p2, :cond_0

    const/16 p1, 0x48

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    return-void
.end method
