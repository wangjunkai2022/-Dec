.class public Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;
.source ""


# instance fields
.field public extends:Landroid/content/Context;

.field public finally:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;


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

.method public final else()V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    invoke-direct {v0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdLoadCount()I

    move-result v1

    .line 1
    iput v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->if:I

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->do:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->mGMAdSlotNative:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getWidth()I

    move-result v1

    .line 5
    iput v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->else:I

    .line 6
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->mGMAdSlotNative:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getHeight()I

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;->finally:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    .line 7
    iput-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    .line 8
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;->extends:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->loadAd(Landroid/content/Context;ZLcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V

    return-void
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .locals 1

    const-string v0, "gdt"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0"

    return-object v0
.end method

.method public final goto()V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;

    invoke-direct {v0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdLoadCount()I

    move-result v1

    .line 1
    iput v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->new:I

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->for:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;->finally:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    .line 5
    iput-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->goto:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getNativeAdLogoParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->break:Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;->extends:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader;->loadAd(Landroid/content/Context;ZLcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V

    return-void
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
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

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;->extends:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->mGMAdSlotNative:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;->finally:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    const-string p1, "tt_ad_origin_type"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;->goto()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;->else()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->mGMAdSlotNative:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdStyleType()I

    move-result p1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;->else()V

    goto :goto_1

    :cond_3
    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeAdapter;->goto()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_5
    :goto_1
    return-void
.end method
