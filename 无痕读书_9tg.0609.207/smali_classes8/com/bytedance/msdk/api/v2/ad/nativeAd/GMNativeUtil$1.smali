.class public final Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;
.super Ljava/lang/Object;
.source "GMNativeUtil.java"

# interfaces
.implements Lcom/bytedance/msdk/api/nativeAd/TTNativeAd;


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canAdReuse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->canAdReuse()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancelDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->cancelDownload()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->destroy()V

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->dislikeClick(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getActionText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdImageMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getAdImageMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdLogoView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getAdLogoView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdNetworkPlatformId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getAdNetworkPlatformId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdNetworkPlatformName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getAdNetworkPlatformName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdNetworkRitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getAdNetworkRitId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBestEcpm()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getBestEcpm()Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/msdk/api/v2/GMAdDislike;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;

    move-result-object p1

    return-object p1
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

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDownloadStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getDownloadStatus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getExpressView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getExpressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraMsg()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getExtraMsg()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGMNativeCustomVideoReporter()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeCustomVideoReporter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getGMNativeCustomVideoReporter()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeCustomVideoReporter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getImageHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getImageWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getInteractionType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreEcpm()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getPreEcpm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSdkNumType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getSdkNumType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getShowEcpm()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getShowEcpm()Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStarRating()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getStarRating()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTTBaseAd()Lcom/bytedance/msdk/base/TTBaseAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getTTBaseAd()Lcom/bytedance/msdk/base/TTBaseAd;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDislike()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->hasDislike()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExpressAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->isExpressAd()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHasShown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->isHasShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->isReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isServerBidding()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->isServerBidding()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->onPause()V

    :cond_0
    return-void
.end method

.method public pauseAppDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->pauseAppDownload()V

    :cond_0
    return-void
.end method

.method public registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
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

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 4
    invoke-interface/range {v0 .. v5}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    :cond_0
    return-void
.end method

.method public registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;",
            ")V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 6
    invoke-interface/range {v0 .. v6}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    :cond_0
    return-void
.end method

.method public registerView(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
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

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->registerView(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    :cond_0
    return-void
.end method

.method public render()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->render()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->resume()V

    :cond_0
    return-void
.end method

.method public resumeAppDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->resumeAppDownload()V

    :cond_0
    return-void
.end method

.method public setAppDownloadListener(Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->setTTAdAppDownloadListener(Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;)V

    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V

    :cond_0
    return-void
.end method

.method public setNativeAdListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->setTTNativeAdListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;)V

    return-void
.end method

.method public setTTAdAppDownloadListener(Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->setAppDownloadListener(Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;)V

    :cond_0
    return-void
.end method

.method public setTTAdatperCallback(Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;)V
    .locals 0

    return-void
.end method

.method public setTTNativeAdListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->setNativeAdListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;)V

    :cond_0
    return-void
.end method

.method public setTTVideoListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->setVideoListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;)V

    :cond_0
    return-void
.end method

.method public setUseCustomVideo(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->setUseCustomVideo(Z)V

    :cond_0
    return-void
.end method

.method public setVideoListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->setTTVideoListener(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;)V

    return-void
.end method

.method public unregisterView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;->do:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;->unregisterView()V

    :cond_0
    return-void
.end method
