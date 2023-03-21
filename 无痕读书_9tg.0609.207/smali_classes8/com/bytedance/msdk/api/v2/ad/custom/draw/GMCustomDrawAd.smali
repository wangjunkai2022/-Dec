.class public abstract Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;
.super Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;
.source "GMCustomDrawAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/draw/IGMCustomDrawEvent;


# instance fields
.field public volatile native:Z

.field public public:I

.field public return:I

.field public static:Z

.field public switch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->native:Z

    .line 3
    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->public:I

    .line 4
    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->return:I

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->static:Z

    return-void
.end method


# virtual methods
.method public callDrawAdClick()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->native:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$6;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$6;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->checkClick(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    return-void
.end method

.method public callDrawAdShow()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$7;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$7;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->checkShow(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V

    return-void
.end method

.method public callDrawDislikeCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getDislikeCallback()Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getDislikeCallback()Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method public callDrawDislikeRefuse()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getDislikeCallback()Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getDislikeCallback()Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onRefuse()V

    :cond_0
    return-void
.end method

.method public callDrawDislikeSelected(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getDislikeCallback()Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getDislikeCallback()Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onSelected(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public callDrawDislikeShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getDislikeCallback()Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getDislikeCallback()Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onShow()V

    :cond_0
    return-void
.end method

.method public callDrawRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMNativeAdListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMDrawAdListener()Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawExpressAdListener;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawExpressAdListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public callDrawRenderSuccess(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMDrawAdListener()Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMDrawAdListener()Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawExpressAdListener;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawExpressAdListener;->onRenderSuccess(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public callDrawVideoCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public callDrawVideoError(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const v2, 0xbf74

    .line 3
    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;->getCode()I

    move-result v4

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoError(Lcom/bytedance/msdk/api/AdError;)V

    :cond_2
    return-void
.end method

.method public callDrawVideoPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public callDrawVideoProgressUpdate(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onProgressUpdate(JJ)V

    :cond_0
    return-void
.end method

.method public callDrawVideoResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public callDrawVideoStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public final checkClick(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->return:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->return:I

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;->callback()V

    goto :goto_0

    :cond_0
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter click\u65b9\u6cd5\u56de\u8c03\u6b21\u6570\u9700\u8981\u5c0f\u4e8e60\u6b21"

    .line 4
    invoke-static {p1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final checkShow(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->static:Z

    const-string v1, "TTMediationSDK"

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->public:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->public:I

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$CheckCallback;->callback()V

    goto :goto_0

    :cond_0
    const-string p1, "\u81ea\u5b9a\u4e49Adapter show\u65b9\u6cd5\u56de\u8c03\u6b21\u6570\u9700\u8981\u5c0f\u4e8e2\u6b21"

    .line 5
    invoke-static {v1, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u81ea\u5b9a\u4e49Adapter show\u65b9\u6cd5\u56de\u8c03\u5fc5\u987b\u7531GroMore\u89e6\u53d1show\u65f6\u624d\u4f1a\u751f\u6548"

    .line 6
    invoke-static {v1, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDirectDownloadViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->switch:Ljava/util/List;

    return-object v0
.end method

.method public getExpressView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExpressViewInner()Landroid/view/View;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->getExpressView()Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTTBaseAd()Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setTitle(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdDescription(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setIconUrl(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageUrl(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getImageWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageWidth(I)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getImageHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageHeight(I)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setVideoWidth(I)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getVideoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setVideoHeight(I)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setActionText(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setPackageName(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getStarRating()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setRating(D)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImages(Ljava/util/List;)V

    .line 13
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setSource(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getAdImageMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getInteractionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setInteractionType(I)V

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAppName(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAuthorName(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->getPackageSizeBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setPackageSizeBytes(J)V

    .line 20
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->getPermissionsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setPermissionsUrl(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->getPrivacyAgreement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setPrivacyAgreement(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/nativeAd/TTNativeAdAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setVersionName(Ljava/lang/String;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$1;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->setCustomNativeConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeConvert;)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$2;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$2;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->setCustomNativeExpressConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeExpressConvert;)V

    .line 25
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$3;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$3;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->setCustomNativeLifecycleConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;)V

    .line 26
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$4;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$4;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->setIGMCustomNativeDislikeConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeConvert;)V

    .line 27
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getBiddingPrice()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 28
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->getBiddingPrice()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$5;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd$5;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->setIGMCustomNativeIsReadyStatusConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeIsReadyStatusConvert;)V

    .line 30
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    return-object v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public render()V
    .locals 0

    return-void
.end method

.method public final renderInner()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->static:Z

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->render()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterView()V
    .locals 0

    return-void
.end method

.method public final unregisterViewInner()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->unregisterView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
