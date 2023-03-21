.class public Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PangleRewardVideo"
.end annotation


# instance fields
.field public do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

.field public for:Z

.field public if:Z

.field public new:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

.field public final synthetic try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->new:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    return-void
.end method

.method public static do(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->try:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object p0

    const-string v0, "4.4.0.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static if(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;
    .locals 4

    :pswitch_0
    const/16 v0, 0x5e

    const/16 v1, 0x4b

    const/16 v2, 0x5d

    :goto_0
    const/16 v3, 0x5c

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_1

    goto :goto_2

    :cond_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 1
    :pswitch_1
    iget-object p0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    check-cast p0, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    return-object p0

    :goto_2
    :pswitch_2
    const/16 v0, 0x5d

    const/16 v1, 0x5d

    goto :goto_0

    :goto_3
    const/16 v1, 0x5b

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public adnHasAdVideoCachedApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAdId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getAdId(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCreativeId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getCreativeId(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCreativeId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "coupon"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "live_room"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getReqId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getReqId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdnPreload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->for:Z

    return v0
.end method

.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getExpirationTimestamp()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_EXPIRED:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getRitScenes(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    move-result-object v0

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getCustomRitScenes(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v1, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
