.class public Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;
    }
.end annotation


# instance fields
.field public extends:Landroid/content/Context;

.field public finally:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

.field public package:I

.field public private:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;-><init>()V

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
    .locals 3
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

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;->mGMAdSlotInterstitial:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;->extends:Landroid/content/Context;

    if-eqz p2, :cond_6

    const-string p1, "minVideoDuration"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;->package:I

    const-string p1, "maxVideoDuration"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;->private:I

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;->mGMAdSlotInterstitial:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;->finally:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    .line 1
    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;)V

    const-string p2, "TTMediationSDK"

    const-string v0, "GdtIntersitialAd load"

    .line 2
    invoke-static {p2, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    .line 3
    iget-object v0, p2, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;->extends:Landroid/content/Context;

    .line 4
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->for:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    invoke-direct {v1, v0, p2, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    iput-object v1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    .line 5
    iget-object p2, p2, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;->finally:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    .line 6
    invoke-static {p2}, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;->getGMVideoOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p2

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    .line 7
    iget p2, p2, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;->private:I

    if-lez p2, :cond_2

    .line 8
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMaxVideoDuration(I)V

    :cond_2
    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    .line 9
    iget p2, p2, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;->package:I

    if-lez p2, :cond_3

    .line 10
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMinVideoDuration(I)V

    :cond_3
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadAD()V

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter$GdtIntersitialAd;->new:Lcom/bytedance/msdk/adapter/gdt/GdtInterstitialAdapter;

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GDT--\u63d2\u5c4f-\u4f20\u5165mContext \u4e0d\u662f Activity \u8bf7\u6c42\u4e2d\u65ad"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK_interisitial"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_6
    :goto_1
    return-void
.end method
