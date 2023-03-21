.class public Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TTBannerView"
.end annotation


# instance fields
.field public case:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field public do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field public final synthetic else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

.field public final for:Ljava/lang/Object;

.field public if:Landroid/view/View;

.field public new:Z

.field public volatile try:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->for:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->try:Z

    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$4;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->case:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-void
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getAdId(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdId()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getAdView()Landroid/view/View;
    .locals 6
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    monitor-enter p0

    :goto_0
    :pswitch_0
    const/16 v0, 0x5f

    const/16 v1, 0x5f

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x27

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->for:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->if:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    add-long/2addr v3, v1

    :goto_3
    iget-boolean v5, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->new:Z

    if-nez v5, :cond_1

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->for:Ljava/lang/Object;

    sub-long v1, v3, v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->if:Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :goto_4
    :pswitch_4
    const/16 v0, 0x5e

    const/16 v1, 0x7d

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getCreativeId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

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

    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->try:Z

    return v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadAd()V
    .locals 9
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    .line 1
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;->extends:Landroid/content/Context;

    .line 2
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    .line 3
    iget-object v2, v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    .line 4
    iget-object v3, v1, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    .line 5
    iget-object v5, v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mWaterfallAbTestParam:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getClientReqId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdm()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    iget-object v3, v2, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getBannerSize()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->else:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter;

    iget-object v4, v4, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->getBannerSize(ILcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    new-instance v2, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$1;

    invoke-direct {v2, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    const/16 v0, 0x3d

    const/16 v1, 0xc

    const/16 v2, 0x3d

    :goto_0
    :pswitch_0
    const/16 v3, 0x8

    const/16 v4, 0x9

    const/16 v5, 0x9

    :goto_1
    const/4 v6, 0x7

    const/16 v7, 0x1b

    if-eq v5, v6, :cond_1

    if-eq v5, v3, :cond_0

    if-eq v5, v4, :cond_3

    goto :goto_0

    :cond_0
    :goto_2
    packed-switch v2, :pswitch_data_0

    const/16 v2, 0x27

    goto :goto_2

    :cond_1
    if-ge v2, v7, :cond_2

    :goto_3
    :pswitch_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :pswitch_2
    return-void

    :goto_4
    const/16 v1, 0x1b

    goto :goto_3

    :cond_2
    if-le v1, v0, :cond_3

    :goto_5
    nop

    goto :goto_5

    :cond_3
    :pswitch_3
    const/16 v2, 0x25

    const/16 v5, 0x8

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->try:Z

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$3;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onDestroy()V

    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$2;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView$2;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$TTBannerView;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    const/16 p1, 0x5c

    const/16 p2, 0x5c

    goto :goto_2

    :cond_0
    :goto_0
    :pswitch_0
    const/16 p1, 0xf

    const/16 p2, 0x5f

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    return-void

    :pswitch_3
    const/16 p1, 0x48

    goto :goto_0

    :goto_2
    const/16 p1, 0xe

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
