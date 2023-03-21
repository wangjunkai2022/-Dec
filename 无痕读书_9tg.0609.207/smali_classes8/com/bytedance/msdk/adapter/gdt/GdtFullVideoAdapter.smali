.class public Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMFullVideoBaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;
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

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/ad/GMFullVideoBaseAdapter;-><init>()V

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

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMFullVideoBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/ad/GMFullVideoBaseAdapter;->mGMAdSlotFullVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    if-eqz v0, :cond_7

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;->extends:Landroid/content/Context;

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;->finally:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMinVideoDuration()I

    move-result p1

    iput p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;->package:I

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;->finally:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMaxVideoDuration()I

    move-result p1

    iput p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;->private:I

    .line 1
    :cond_0
    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;)V

    .line 2
    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->case:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;

    .line 3
    iget-object v0, p2, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;->extends:Landroid/content/Context;

    .line 4
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_8

    new-instance v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->for:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    invoke-direct {v1, v0, p2, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    iput-object v1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->case:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;

    .line 5
    iget-object p2, p2, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;->finally:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    .line 6
    invoke-static {p2}, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;->getGMVideoOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p2

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->case:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;

    .line 7
    iget p2, p2, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;->private:I

    if-lez p2, :cond_1

    .line 8
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMaxVideoDuration(I)V

    :cond_1
    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->case:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;

    .line 9
    iget p2, p2, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;->package:I

    if-lez p2, :cond_2

    .line 10
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMinVideoDuration(I)V

    :cond_2
    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->case:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;

    iget-object p2, p2, Lcom/bytedance/msdk/adapter/ad/GMFullVideoBaseAdapter;->mGMAdSlotFullVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    if-eqz p2, :cond_6

    new-instance p2, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p2}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->case:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/ad/GMFullVideoBaseAdapter;->mGMAdSlotFullVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->getUserID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    :cond_3
    iget-object v1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->case:Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/ad/GMFullVideoBaseAdapter;->mGMAdSlotFullVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->getCustomData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "gdt"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {p2, v2}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p2}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    :cond_6
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtFullVideoAdapter$GdtFullVideoAd;->do:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadFullScreenAD()V

    goto :goto_0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMFullVideoBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_8
    :goto_0
    return-void
.end method
