.class public Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PangleNativeAd"
.end annotation


# instance fields
.field public final synthetic case:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

.field public do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

.field public for:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

.field public volatile if:Z

.field public new:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

.field public try:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 4

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->case:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->if:Z

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$3;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$3;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;)V

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->for:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$4;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$4;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;)V

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->new:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$5;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$5;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;)V

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->try:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setAppName(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getDeveloperName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setAuthorName(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setPrivacyAgreement(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setVersionName(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPermissionsMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setPermissionsMap(Ljava/util/Map;)V

    :cond_1
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setTitle(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdDescription(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setActionText(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setIconUrl(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setInteractionType(I)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setSource(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAppScore()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setRating(D)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setIsAppDownload(Z)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setExpressAd(Z)V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v1

    const/16 v3, 0x10

    if-eq v1, v3, :cond_6

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setImages(Ljava/util/List;)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageHeight(I)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageWidth(I)V

    :cond_7
    :goto_4
    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string p2, "price"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getValue(Ljava/lang/Object;)D

    move-result-wide p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pangle native \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_ECMP"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_8

    goto :goto_5

    :cond_8
    move-wide p1, v0

    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    :cond_9
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->new:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->try:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    return-void
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getAdId(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCreativeId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getCreativeId(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCreativeId()J

    move-result-wide v0

    return-wide v0
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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    new-instance p2, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V

    return-object p2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;

    move-result-object p1

    return-object p1
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "coupon"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "live_room"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getReqId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getReqId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdViewHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdViewWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->if:Z

    return v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->if:Z

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$2;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onDestroy()V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/base/TTBaseAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    instance-of v0, p1, Lcom/bytedance/msdk/api/format/TTNativeAdView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->for:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    :cond_0
    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    const/4 p3, -0x1

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p4, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->logoLayoutId:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->case:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    .line 1
    iget-object v2, v2, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    .line 2
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->case:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    .line 3
    iget-object v3, v3, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    const/high16 v4, 0x42180000    # 38.0f

    .line 4
    invoke-static {v3, v4}, Lcom/bytedance/msdk/adapter/util/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->case:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    .line 5
    iget-object v3, v3, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    .line 6
    invoke-static {v3, v4}, Lcom/bytedance/msdk/adapter/util/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    iget p2, p4, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->mediaViewId:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/api/format/TTMediaView;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->removeSelfFromParent(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_4
    return-void
.end method
