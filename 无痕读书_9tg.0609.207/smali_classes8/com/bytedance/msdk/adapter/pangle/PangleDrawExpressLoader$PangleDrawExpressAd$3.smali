.class public Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickRetry()V
    .locals 4
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    :pswitch_0
    const/16 v0, 0x5e

    const/16 v1, 0x4b

    const/16 v2, 0x5d

    :goto_0
    const/16 v3, 0x5c

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :goto_1
    :pswitch_1
    const/16 v0, 0x5d

    const/16 v1, 0x5d

    goto :goto_0

    :cond_1
    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_2
    return-void

    :goto_3
    const/16 v1, 0x5b

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onProgressUpdate(JJ)V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onProgressUpdate(JJ)V

    :cond_0
    return-void
.end method

.method public onVideoAdComplete()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public onVideoAdContinuePlay()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public onVideoAdPaused()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public onVideoAdStartPlay()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public onVideoError(II)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader$PangleDrawExpressAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const-string v2, "MediaPlayer inter error code:"

    invoke-static {v2, p2}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoError(Lcom/bytedance/msdk/api/AdError;)V

    const/16 p1, 0x37

    const/4 p2, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v0, 0x48

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x34

    if-eq p2, v0, :cond_0

    const/16 v0, 0x35

    if-eq p2, v0, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    packed-switch p1, :pswitch_data_1

    const/16 p1, 0x1e

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x39

    if-gt p2, v0, :cond_2

    goto :goto_4

    :cond_2
    :goto_3
    :pswitch_3
    const/16 v0, 0x49

    const/16 p2, 0x10

    goto :goto_1

    :cond_3
    :goto_4
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoLoad()V
    .locals 0

    return-void
.end method
