.class public Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GdtNativeAd"
.end annotation


# instance fields
.field public do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field public for:Lcom/qq/e/ads/nativ/NativeADMediaListener;

.field public volatile if:Z

.field public final synthetic new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 3

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->if:Z

    new-instance v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$4;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->for:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppMiitInfo()Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAppName(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAuthorName(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getPackageSizeBytes()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setPackageSizeBytes(J)V

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getPermissionsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setPermissionsUrl(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getPrivacyAgreement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setPrivacyAgreement(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setVersionName(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setTitle(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdDescription(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getCTAText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setActionText(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setIconUrl(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageUrl(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageWidth(I)V

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageHeight(I)V

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setImages(Ljava/util/List;)V

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppScore()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setRating(D)V

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setSource(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setIsAppDownload(Z)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-interface {p2}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    move-result p1

    int-to-double v0, p1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GDT_clientBidding \u539f\u751fNative \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isMultiBidding()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p2}, Lcom/qq/e/comm/pi/LADI;->getECPMLevel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->setLevelTag(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GDT_\u591a\u9636\u5e95\u4ef7 \u539f\u751fNative \u8fd4\u56de\u7684 \u4ef7\u683c\u6807\u7b7e\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/qq/e/comm/pi/LADI;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK_ECMP"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$1;

    invoke-direct {p1}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$1;-><init>()V

    invoke-interface {p2, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->preloadVideo(Lcom/qq/e/ads/nativ/VideoPreloadListener;)V

    goto :goto_3

    :cond_4
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result p1

    if-eq p1, v2, :cond_6

    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result p1

    if-ne p1, v1, :cond_7

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    :cond_7
    :goto_3
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setInteractionType(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setInteractionType(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method public bidLoseNotify(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    const-string v0, "bidding_lose_reason"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;->getBiddingLossReason(Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/qq/e/comm/pi/IBidding;->sendLossNotification(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public bidWinNotify(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/IBidding;->sendWinNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final do(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 12
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    move-object v0, p0

    move-object v7, p1

    move-object v1, p2

    move-object/from16 v8, p5

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v2, :cond_7

    instance-of v2, v1, Lcom/bytedance/msdk/api/format/TTNativeAdView;

    if-eqz v2, :cond_7

    move-object v9, v1

    check-cast v9, Lcom/bytedance/msdk/api/format/TTNativeAdView;

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    const-string v3, "tt_gdt_developer_view"

    const/4 v10, -0x1

    if-eqz v2, :cond_3

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    :goto_0
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    sget v5, Lcom/bytedance/msdk/adapter/gdt/R$id;->tt_mediation_gdt_developer_view_tag_key:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    move-object v3, v2

    goto :goto_4

    :cond_3
    new-instance v2, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-direct {v2, p1}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/bytedance/msdk/adapter/gdt/R$id;->tt_mediation_gdt_developer_view_root_tag_key:I

    const-string v5, "tt_gdt_developer_view_root"

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    :goto_3
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/bytedance/msdk/adapter/gdt/R$id;->tt_mediation_gdt_developer_view_tag_key:I

    invoke-virtual {v4, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v9, v2, v10, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_2

    :goto_4
    iget v1, v8, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->mediaViewId:I

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/bytedance/msdk/api/format/TTMediaView;

    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    .line 1
    iget-object v4, v2, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;->finally:Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, p1

    move-object v5, p3

    move-object/from16 v6, p4

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;)V

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getImageMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    new-instance v1, Lcom/qq/e/ads/nativ/MediaView;

    invoke-direct {v1, p1}, Lcom/qq/e/ads/nativ/MediaView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v11, v1, v10, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v2, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iget-object v3, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    .line 3
    iget-object v3, v3, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;->package:Lcom/qq/e/ads/cfg/VideoOption;

    .line 4
    iget-object v4, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->for:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-interface {v2, v1, v3, v4}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V

    :cond_5
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getCTAText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, v8, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;->callToActionId:I

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindCTAViews(Ljava/util/List;)V

    :cond_6
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    new-instance v2, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$2;

    invoke-direct {v2, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$2;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;)V

    invoke-interface {v1, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    :cond_7
    return-void
.end method

.method public hasDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->if:Z

    return v0
.end method

.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/LADI;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->if:Z

    new-instance v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd$3;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onPause()V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->pauseVideo()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onResume()V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resume()V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 6
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

    if-eqz p5, :cond_1

    if-nez p4, :cond_0

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p4, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    move-object v4, p4

    invoke-super {p0, p2, p3, v4, p6}, Lcom/bytedance/msdk/base/TTBaseAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    return-void
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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/base/TTBaseAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    .line 1
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;->extends:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;->do(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V

    return-void
.end method

.method public unregisterView()V
    .locals 0

    return-void
.end method
