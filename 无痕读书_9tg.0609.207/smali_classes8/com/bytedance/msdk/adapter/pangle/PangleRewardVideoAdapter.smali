.class public Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PgRewardVideoAdapter"

.field public static final VERSION_00:Ljava/lang/String; = "0.0"

.field public static final VERSION_4400:Ljava/lang/String; = "4.4.0.0"


# instance fields
.field public extends:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

.field public finally:Landroid/content/Context;


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

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;->finally:Landroid/content/Context;

    if-eqz p2, :cond_4

    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;->extends:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;->finally:Landroid/content/Context;

    .line 3
    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p2

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getCustomData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "pangle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    .line 4
    iget-object v2, v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 5
    iget-object v3, v1, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    .line 6
    iget-object v5, v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mWaterfallAbTestParam:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getClientReqId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->mGMAdSlotRewardVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->new:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    :cond_1
    const/16 p1, 0x13

    const/16 p2, 0x12

    :goto_1
    if-eq p1, p2, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 p1, 0x12

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMRewardBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_4
    return-void
.end method
