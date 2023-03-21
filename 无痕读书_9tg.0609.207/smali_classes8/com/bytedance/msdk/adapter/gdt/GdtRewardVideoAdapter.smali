.class public Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;
    }
.end annotation


# instance fields
.field public extends:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;-><init>()V

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
    .locals 6
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

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    if-eqz v0, :cond_6

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;->extends:Landroid/content/Context;

    if-eqz p2, :cond_7

    const-string p1, "tt_ad_network_config_appid"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1
    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;)V

    .line 2
    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    iget-object p2, p2, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isMuted()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {p2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    .line 3
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;->extends:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->for:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;ZLjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    .line 5
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;->extends:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->for:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-direct {p2, v1, v0, v2, v4}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    :goto_1
    iput-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    iget-object p2, p2, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    if-eqz p2, :cond_5

    new-instance p2, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p2}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getUserID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    :cond_2
    iget-object v1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->new:Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getCustomData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "gdt"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p2, v2}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p2}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    :cond_5
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtRewardVideoAdapter$GdtRewardVideo;->do:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V

    goto :goto_2

    .line 7
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_7
    :goto_2
    return-void
.end method
