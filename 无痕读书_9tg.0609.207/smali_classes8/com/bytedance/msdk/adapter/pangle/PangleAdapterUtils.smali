.class public Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CPM_DEFLAUT_VALUE:D = 0.0

.field public static final MEDIA_EXTRA_COUPON:Ljava/lang/String; = "coupon"

.field public static final MEDIA_EXTRA_LIVE_ROOM:Ljava/lang/String; = "live_room"

.field public static final MEDIA_EXTRA_PRODUCT:Ljava/lang/String; = "product"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "pangle_vid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getAdloadSeq()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdloadSeq(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setPrimeRit(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isSupportDeepLink()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExternalABVid([I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result p1

    const/4 v0, 0x5

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result p1

    const/16 v0, 0x9

    if-ne v0, p1, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result p0

    goto :goto_1

    :cond_3
    instance-of p0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getRequestCount()I

    move-result p0

    :goto_1
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto :goto_2

    :cond_4
    instance-of p0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    if-eqz p0, :cond_5

    check-cast p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->getAdCount()I

    move-result p0

    goto :goto_1

    :cond_5
    :goto_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    :cond_6
    invoke-static {p2, p3, p4, p6}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->updateData(Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p2
.end method

.method public static buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getAdId(Ljava/util/Map;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "ad_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getCreativeId(Ljava/util/Map;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "creative_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getCustomRitScenes(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;->CUSTOMIZE_RIT_SCENES:Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getPangleData()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getPangleData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReqId(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "request_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRitScenes(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;->RIT_SCENES:Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreRitScenes;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/bytedance/msdk/api/TTAdConstant$GroMoreRitScenes;

    if-nez p0, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    sget-object v1, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils$1;->do:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_FINISH_REWARDS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_MORE_KLLKRTUNITIES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_REDUCE_WAITING:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_START_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_TRY_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_SVIP_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_OPEN_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    :goto_0
    return-object v0

    .line 2
    :cond_2
    instance-of v1, p0, Lcom/bytedance/msdk/api/v2/GMAdConstant$GroMoreRitScenes;

    if-eqz v1, :cond_4

    check-cast p0, Lcom/bytedance/msdk/api/v2/GMAdConstant$GroMoreRitScenes;

    if-nez p0, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    sget-object v1, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils$1;->if:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :pswitch_c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_FINISH_REWARDS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_e
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_MORE_KLLKRTUNITIES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_f
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_REDUCE_WAITING:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_START_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_11
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_TRY_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_14
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_GET_PROPS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_15
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_SVIP_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_16
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->HOME_OPEN_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    goto :goto_1

    :pswitch_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    :cond_4
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public static getValue(Ljava/lang/Object;)D
    .locals 2

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_2
    :try_start_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static setPangleData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->setPangleData(Ljava/lang/String;)V

    return-void
.end method

.method public static setPanglePreviewParam(Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->isTestDemo()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v0, "tt_pangle_preview_ad_id"

    invoke-static {v0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getValueFromPPeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tt_pangle_preview_creative_id"

    invoke-static {v1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getValueFromPPeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tt_pangle_preview_ext"

    invoke-static {v2}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getValueFromPPeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCreativeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExt(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static updateData(Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    invoke-static {}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getPangleData()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getPangleExtraData()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const-string v4, "value"

    const-string v5, "name"

    if-eqz v1, :cond_3

    .line 3
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v4, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "mediation_sdk_version"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "3.6.0.1"

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "mediation_req_type"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "1"

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "waterfall_abtest"

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v2, :cond_5

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "m_req_id"

    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    if-nez p3, :cond_7

    invoke-static {p0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->setPanglePreviewParam(Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;)V

    .line 4
    :cond_7
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getPanglePaid()Z

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->updatePaid(Z)V

    if-eqz p0, :cond_8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    :cond_8
    return-void
.end method
