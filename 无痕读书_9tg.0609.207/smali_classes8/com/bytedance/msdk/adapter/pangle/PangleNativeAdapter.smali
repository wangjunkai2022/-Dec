.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;
.source ""


# instance fields
.field public extends:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public final else(Lcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;)V
    .locals 6
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v4

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    invoke-direct {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;->extends:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v2

    move-object v3, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->loadAd(Landroid/content/Context;ZLcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V

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

.method public final goto(Lcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;II)V
    .locals 6
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    int-to-float p3, p3

    if-lez p4, :cond_0

    int-to-float p4, p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v4

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;

    invoke-direct {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;->extends:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v2

    move-object v3, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;->loadAd(Landroid/content/Context;ZLcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V

    return-void
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 11
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

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;->extends:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->mGMAdSlotNative:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    const/16 v0, 0x43

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/16 v3, 0x2d

    if-eqz p1, :cond_5

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;->extends:Landroid/content/Context;

    invoke-interface {p1, v4}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v5, p0, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->mGMAdSlotNative:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mWaterfallAbTestParam:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getClientReqId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v4

    const-string v5, "ad_width"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "ad_height"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v5, :cond_0

    if-lez v6, :cond_0

    iget-object v7, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;->extends:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;->extends:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->dp2px(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    :cond_0
    const-string v7, "tt_ad_origin_type"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz p2, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v8, :cond_1

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;->goto(Lcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;II)V

    return-void

    :cond_1
    if-ne p2, v7, :cond_2

    invoke-virtual {p0, p1, v4}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;->else(Lcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;)V

    goto :goto_5

    :cond_2
    const/4 v9, 0x3

    if-ne p2, v9, :cond_3

    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "\u6e32\u67d3\u7c7b\u578b\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    const/16 p1, 0x2a

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->mGMAdSlotNative:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdStyleType()I

    move-result p2

    if-ne p2, v8, :cond_4

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;->goto(Lcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;II)V

    goto :goto_5

    :cond_4
    iget-object p2, p0, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->mGMAdSlotNative:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdStyleType()I

    move-result p2

    if-ne p2, v7, :cond_c

    invoke-virtual {p0, p1, v4}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeAdapter;->else(Lcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :pswitch_0
    const/16 p1, 0xc

    const/16 p1, 0x43

    const/4 p2, 0x4

    const/16 v3, 0xc

    :goto_0
    if-eq p2, v1, :cond_8

    if-eq p2, v2, :cond_9

    const/4 v4, 0x6

    if-eq p2, v4, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :goto_2
    :pswitch_1
    const/4 p2, 0x5

    goto :goto_0

    :cond_7
    :goto_3
    const/16 p1, 0x59

    goto :goto_1

    :cond_8
    const/16 p2, 0x42

    if-eq p1, p2, :cond_b

    if-eq p1, v0, :cond_a

    :cond_9
    return-void

    :cond_a
    :goto_4
    packed-switch v3, :pswitch_data_1

    const/16 v3, 0xb

    goto :goto_4

    :cond_b
    if-ne v3, v2, :cond_c

    :cond_c
    :goto_5
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
