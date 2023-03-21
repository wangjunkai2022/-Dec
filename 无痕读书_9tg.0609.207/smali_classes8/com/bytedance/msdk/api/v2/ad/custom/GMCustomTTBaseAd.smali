.class public Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source "GMCustomTTBaseAd.java"


# instance fields
.field public break:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeCustomizeVideoConvert;

.field public case:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeExpressConvert;

.field public catch:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;

.field public do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

.field public else:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;

.field public for:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeDialog;

.field public goto:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeConvert;

.field public if:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

.field public new:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public this:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeIsReadyStatusConvert;

.field public try:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeConvert;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->new:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bidLoseNotify(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->OTHER:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->getLossReason()I

    move-result v0

    :try_start_0
    const-string v1, "bidding_lose_reason"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    if-eqz v1, :cond_1

    .line 4
    check-cast p1, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->getLossReason()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    move v5, v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->receiveBidResult(ZDILjava/util/Map;)V

    :cond_2
    return-void
.end method

.method public bidWinNotify(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v2

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->receiveBidResult(ZDILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public cancelDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->catch:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;->cancelDownload()V

    :cond_0
    return-void
.end method

.method public dislikeClick(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->dislikeClick(Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->for:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeDialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeDialog;->dislikeClick(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;->getAdViewInner()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->case:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeExpressConvert;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeExpressConvert;->getExpressViewInner()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDislikeCallback()Lcom/bytedance/msdk/api/v2/GMDislikeCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->if:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    return-object v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/msdk/api/v2/GMAdDislike;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->for:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeDialog;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->catch:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;->getDownloadStatus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getGMAdAppDownloadListener()Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdAppDownloadListener:Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;

    return-object v0
.end method

.method public getGMDrawAdListener()Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mGMDrawAdListener:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

    return-object v0
.end method

.method public getGMNativeAdListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    return-object v0
.end method

.method public getGMNativeCustomVideoReporter()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeCustomVideoReporter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->break:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeCustomizeVideoConvert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeCustomizeVideoConvert;->getGMNativeCustomVideoReporter()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeCustomVideoReporter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGMVideoListener()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTVideoListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;

    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->new:Ljava/util/Map;

    return-object v0
.end method

.method public getTTAdapterCallback()Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->break:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeCustomizeVideoConvert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeCustomizeVideoConvert;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDestroyed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasDislike()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->goto:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeConvert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeConvert;->hasDislike()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->hasDislike()Z

    move-result v0

    return v0
.end method

.method public final isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->this:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeIsReadyStatusConvert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeIsReadyStatusConvert;->isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->isReadyStatusInner()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0
.end method

.method public final nativeDislikeClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->nativeDislikeClick(Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->else:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;->onDestroyInner()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->else:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;->onPauseInner()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->else:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;->onResumeInner()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pauseAppDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->catch:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;->pauseAppDownload()V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
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
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->try:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeConvert;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-interface/range {v0 .. v6}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeConvert;->registerViewForInteractionInner(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    return-void
.end method

.method public render()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->case:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeExpressConvert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeExpressConvert;->renderInner()V

    :cond_0
    return-void
.end method

.method public resumeAppDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->catch:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;->resumeAppDownload()V

    :cond_0
    return-void
.end method

.method public setCustomNativeConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeConvert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->try:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeConvert;

    return-void
.end method

.method public setCustomNativeCustomizeVideoConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeCustomizeVideoConvert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->break:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeCustomizeVideoConvert;

    return-void
.end method

.method public setCustomNativeDownloadStatusControllerConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->catch:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDownloadStatusControllerConvert;

    return-void
.end method

.method public setCustomNativeExpressConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeExpressConvert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->case:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeExpressConvert;

    return-void
.end method

.method public setCustomNativeLifecycleConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->else:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeLifecycleConvert;

    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V

    .line 2
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->if:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    return-void
.end method

.method public setDislikeDialogCallBack(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->for:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeDialog;

    return-void
.end method

.method public setGMCustomBaseAdapter(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    return-void
.end method

.method public setIGMCustomNativeDislikeConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeConvert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->goto:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeDislikeConvert;

    return-void
.end method

.method public setIGMCustomNativeIsReadyStatusConvert(Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeIsReadyStatusConvert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->this:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeIsReadyStatusConvert;

    return-void
.end method

.method public setMediaExtraInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
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

    .line 1
    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz p2, :cond_0

    .line 2
    instance-of v0, p2, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomVideoAdapter;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomVideoAdapter;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomVideoAdapter;->showAdInner(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public showSplashAd(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;->showAdInner(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public unregisterView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->try:Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeConvert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeConvert;->unregisterViewInner()V

    :cond_0
    return-void
.end method
