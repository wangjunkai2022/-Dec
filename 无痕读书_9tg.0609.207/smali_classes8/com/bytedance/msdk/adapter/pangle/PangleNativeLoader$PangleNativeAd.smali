.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PangleNativeAd"
.end annotation


# instance fields
.field public do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

.field public for:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

.field public if:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

.field public new:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field public final synthetic try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 4

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$4;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->if:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$5;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$5;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->for:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$6;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$6;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->new:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAppName(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getDeveloperName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAuthorName(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setPrivacyAgreement(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setVersionName(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPermissionsMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setPermissionsMap(Ljava/util/Map;)V

    :cond_1
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setTitle(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdDescription(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setActionText(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setIconUrl(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setInteractionType(I)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setSource(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAppScore()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setRating(D)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setIsAppDownload(Z)V

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setExpressAd(Z)V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDislikeInfo()Lcom/bytedance/sdk/openadsdk/DislikeInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "pangle_dislike_info"

    invoke-virtual {p0, v3, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_a

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setImages(Ljava/util/List;)V

    goto/16 :goto_5

    :cond_7
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_b

    :cond_8
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getVideoCoverImage()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTImage;

    :cond_9
    if-eqz v0, :cond_b

    goto :goto_4

    :cond_a
    :goto_3
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTImage;

    :goto_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageHeight(I)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageWidth(I)V

    .line 1
    :cond_b
    :goto_5
    iget-boolean p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->do:Z

    if-eqz p1, :cond_d

    .line 2
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_d

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

    if-lez v2, :cond_c

    goto :goto_6

    :cond_c
    move-wide p1, v0

    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    :cond_d
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->for:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->new:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/DownloadStatusController;->cancelDownload()V

    :cond_0
    return-void
.end method

.method public getAdId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

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
    .locals 3
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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "pangle_custom_dialog"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "TTMediationSDK"

    const-string p2, "---pangle_getDislikeDialog_custom_dialog---"

    invoke-static {p1, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$2;

    invoke-direct {p1, v0}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$2;-><init>(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    return-object p1

    :cond_1
    new-instance p2, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V

    return-object p2

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadStatus()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    .line 1
    iget v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->new:I

    return v0
.end method

.method public getGMNativeCustomVideoReporter()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeCustomVideoReporter;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isUseCustomVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdViewHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isUseCustomVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onDestroy()V

    return-void
.end method

.method public pauseAppDownload()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    .line 1
    iget v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->new:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/DownloadStatusController;->changeDownloadStatus()V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

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

    invoke-super {p0, p2, p3, p4, p6}, Lcom/bytedance/msdk/base/TTBaseAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    instance-of p1, p2, Lcom/bytedance/msdk/api/format/TTNativeAdView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->if:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    const/4 p3, -0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p1, p6, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->logoLayoutId:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_1

    move-object p4, p1

    check-cast p4, Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p5, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->if:Landroid/content/Context;

    .line 2
    invoke-direct {p5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    .line 3
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->if:Landroid/content/Context;

    const/high16 v2, 0x42180000    # 38.0f

    .line 4
    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    .line 5
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->if:Landroid/content/Context;

    .line 6
    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4, p5, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    instance-of p4, p1, Landroid/widget/ImageView;

    if-eqz p4, :cond_2

    check-cast p1, Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isUseCustomVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    iget p1, p6, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->mediaViewId:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/api/format/TTMediaView;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_4

    const/16 p1, 0x14

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->removeSelfFromParent(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :goto_1
    const/16 p1, 0x13

    :goto_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :cond_5
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 7
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

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    return-void
.end method

.method public resumeAppDownload()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    .line 1
    iget v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->new:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/DownloadStatusController;->changeDownloadStatus()V

    :cond_0
    return-void
.end method
