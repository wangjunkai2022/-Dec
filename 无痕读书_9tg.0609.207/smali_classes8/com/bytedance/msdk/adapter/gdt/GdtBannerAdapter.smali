.class public Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;,
        Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtNativeAd;,
        Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;
    }
.end annotation


# instance fields
.field public extends:Landroid/content/Context;

.field public finally:Landroid/widget/FrameLayout$LayoutParams;

.field public package:Lcom/qq/e/ads/cfg/VideoOption;


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

.method public loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
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

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;->extends:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    if-eqz p1, :cond_b

    if-eqz p2, :cond_c

    const-string p1, "tt_ad_network_config_appid"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p1, "tt_ad_sub_type"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_a

    const-string p1, "tt_ad_origin_type"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 1
    new-instance p1, Lcom/qq/e/ads/nativ/NativeExpressAD;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;->extends:Landroid/content/Context;

    .line 2
    iget-object v2, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getBannerSize()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->getBannerSize(ILcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;)[I

    move-result-object v2

    new-instance v3, Lcom/qq/e/ads/nativ/ADSize;

    aget v0, v2, v0

    aget v2, v2, p2

    invoke-direct {v3, v0, v2}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;

    invoke-direct {v2, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;)V

    invoke-direct {p1, v1, v3, v0, v2}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMinVideoDuration()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setMinVideoDuration(I)V

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMaxVideoDuration()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setMaxVideoDuration(I)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;->getGMVideoOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result v0

    if-ne v0, p2, :cond_1

    sget-object v0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->NOConfirm:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/NativeAbstractAD;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_1
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 4
    new-instance p1, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;->extends:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$2;

    invoke-direct {v2, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$2;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getNativeAdLogoParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;->finally:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;->getGMVideoOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;->package:Lcom/qq/e/ads/cfg/VideoOption;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMaxVideoDuration()I

    move-result v1

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMinVideoDuration()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p1, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMinVideoDuration(I)V

    :cond_3
    if-lez v1, :cond_4

    invoke-virtual {p1, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMaxVideoDuration(I)V

    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result v1

    if-ne v1, p2, :cond_6

    sget-object v1, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->NOConfirm:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    :goto_1
    invoke-virtual {p1, v1}, Lcom/qq/e/ads/NativeAbstractAD;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_6
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result v1

    if-nez v1, :cond_7

    sget-object v0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result v0

    if-ne v0, p2, :cond_8

    sget-object v0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->NOConfirm:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/NativeAbstractAD;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_8
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    goto :goto_3

    .line 5
    :cond_9
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "\u6e32\u67d3\u7c7b\u578b\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_3

    :cond_a
    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;)V

    .line 6
    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    .line 7
    iget-object p2, p2, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;->extends:Landroid/content/Context;

    .line 8
    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_c

    new-instance p2, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->new:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    .line 9
    iget-object v2, v1, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;->extends:Landroid/content/Context;

    .line 10
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->for:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    invoke-direct {p2, v2, v1, v3}, Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V

    iput-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->do:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-virtual {p2, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$GdtBanner;->do:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-virtual {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->loadAD()V

    goto :goto_3

    .line 11
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_c
    :goto_3
    return-void
.end method
