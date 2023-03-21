.class public Lcom/bytedance/msdk/adapter/pangle/PangleDrawAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;
.source ""


# instance fields
.field public finally:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;-><init>()V

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
    .locals 12
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

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawAdapter;->finally:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->mGMAdSlotDraw:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawAdapter;->finally:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v6, p0, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->mGMAdSlotDraw:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mWaterfallAbTestParam:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getClientReqId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->mGMAdSlotDraw:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->mGMAdSlotDraw:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->getHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawAdapter;->finally:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawAdapter;->finally:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    :cond_0
    const-string v2, "tt_ad_origin_type"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "\u6e32\u67d3\u7c7b\u578b\u9519\u8bef"

    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    int-to-float p2, v0

    if-lez v1, :cond_1

    int-to-float v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v5

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader;

    invoke-direct {v1}, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawAdapter;->finally:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v3

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/msdk/adapter/pangle/PangleDrawExpressLoader;->loadAd(Landroid/content/Context;ZLcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V

    goto :goto_3

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v5

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader;

    invoke-direct {v1}, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawAdapter;->finally:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v3

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader;->loadAd(Landroid/content/Context;ZLcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V

    goto :goto_3

    .line 3
    :cond_3
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {p1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {p1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_6
    :pswitch_0
    const/16 p1, 0x5d

    :goto_2
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 p1, 0x5c

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
