.class public Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;
    }
.end annotation


# instance fields
.field public extends:Landroid/content/Context;

.field public finally:I

.field public package:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;->finally:I

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
    .locals 8
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

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;->extends:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->mGMAdSlotSplash:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    const-string p1, "ad_load_timeout"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;->finally:I

    :goto_0
    iput p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;->finally:I

    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;->package:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;->extends:Landroid/content/Context;

    .line 3
    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p2

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    .line 4
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 5
    iget-object v2, v0, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->mGMAdSlotSplash:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    .line 6
    iget-object v4, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mWaterfallAbTestParam:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getClientReqId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->mGMAdSlotSplash:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->mGMAdSlotSplash:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    .line 8
    iget-object v3, v2, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;->extends:Landroid/content/Context;

    .line 9
    iget-object v2, v2, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->mGMAdSlotSplash:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2}, Lcom/bytedance/msdk/adapter/util/UIUtils;->px2dip(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    .line 10
    iget-object v4, v3, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;->extends:Landroid/content/Context;

    .line 11
    iget-object v3, v3, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->mGMAdSlotSplash:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4, v3}, Lcom/bytedance/msdk/adapter/util/UIUtils;->px2dip(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    iget-object v1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->for:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    .line 12
    iget p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;->finally:I

    .line 13
    invoke-interface {p2, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    throw p1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_3
    :goto_1
    return-void
.end method
