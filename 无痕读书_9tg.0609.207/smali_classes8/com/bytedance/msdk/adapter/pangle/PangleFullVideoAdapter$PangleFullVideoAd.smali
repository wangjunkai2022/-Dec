.class public Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PangleFullVideoAd"
.end annotation


# instance fields
.field public do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

.field public for:Z

.field public if:Z

.field public new:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

.field public final synthetic try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->new:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    return-void
.end method

.method public static do(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;
    .locals 2

    :goto_0
    const/16 v0, 0x5d

    const/16 v1, 0x5d

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    if-gt v1, v0, :cond_0

    goto :goto_0

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 1
    :cond_0
    :pswitch_2
    iget-object p0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    check-cast p0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;

    return-object p0

    :goto_2
    :pswitch_3
    packed-switch v1, :pswitch_data_2

    goto :goto_3

    :pswitch_4
    const/16 v0, 0x5e

    const/16 v1, 0x4b

    goto :goto_1

    :goto_3
    const/16 v1, 0x5b

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_4
        :pswitch_4
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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediaExtraInfo()Ljava/util/Map;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediaExtraInfo()Ljava/util/Map;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediaExtraInfo()Ljava/util/Map;

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
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediaExtraInfo()Ljava/util/Map;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

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

    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->for:Z

    return v0
.end method

.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getExpirationTimestamp()J

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

.method public loadAd()V
    .locals 9
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    .line 1
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;->extends:Landroid/content/Context;

    .line 2
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    .line 3
    iget-object v2, v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 4
    iget-object v3, v1, Lcom/bytedance/msdk/adapter/ad/GMFullVideoBaseAdapter;->mGMAdSlotFullVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    .line 5
    iget-object v5, v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mWaterfallAbTestParam:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getClientReqId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    iget-object v3, v3, Lcom/bytedance/msdk/adapter/ad/GMFullVideoBaseAdapter;->mGMAdSlotFullVideo:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->new:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getRitScenes(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    move-result-object v0

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getCustomRitScenes(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v1, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
