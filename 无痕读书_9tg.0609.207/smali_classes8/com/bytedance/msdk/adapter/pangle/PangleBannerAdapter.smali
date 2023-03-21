.class public Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;,
        Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeExpressAd;,
        Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;
    }
.end annotation


# instance fields
.field public extends:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0"

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 9
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    const/16 v0, 0x5a

    if-eqz p1, :cond_4

    if-eqz p2, :cond_5

    const-string p1, "tt_ad_sub_type"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const-string p1, "tt_ad_origin_type"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mWaterfallAbTestParam:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getClientReqId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getBannerSize()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->getBannerSize(ILcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;)[I

    move-result-object v3

    aget p2, v3, p2

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    invoke-static {v4, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->dp2px(Landroid/content/Context;I)I

    move-result p2

    aget v1, v3, v1

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, p2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    int-to-float p2, p2

    if-lez v1, :cond_0

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, p2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;)V

    invoke-interface {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mWaterfallAbTestParam:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getClientReqId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getBannerSize()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->getBannerSize(ILcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;)[I

    move-result-object v3

    aget p2, v3, p2

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    invoke-static {v4, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->dp2px(Landroid/content/Context;I)I

    move-result p2

    aget v1, v3, v1

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, p2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$2;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$2;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;)V

    invoke-interface {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    goto :goto_1

    .line 3
    :cond_2
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "\u6e32\u67d3\u7c7b\u578b\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->loadAd()V

    const/16 p1, 0x5b

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_5
    :goto_1
    const/16 p1, 0x5a

    :goto_2
    if-eq p1, v0, :cond_6

    goto :goto_1

    :cond_6
    return-void
.end method
