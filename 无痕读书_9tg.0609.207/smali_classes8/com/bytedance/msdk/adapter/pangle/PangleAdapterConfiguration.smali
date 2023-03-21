.class public Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;
.super Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$InitCallback;
    }
.end annotation


# static fields
.field public static final ADN_INIT_ERROR_NO_APPID:I = 0x1

.field public static final AD_PLACEMENT_ID_EXTRA_KEY:Ljava/lang/String; = "ad_placement_id"

.field public static final APP_ID_EXTRA_KEY:Ljava/lang/String; = "app_id"

.field public static final TT_THEME_STATUS_DAY:I = 0x0

.field public static final TT_THEME_STATUS_NIGHT:I = 0x1


# instance fields
.field public case:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

.field public final else:Lcom/bytedance/sdk/openadsdk/TTCustomController;

.field public for:Z

.field public goto:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

.field public if:Z

.field public final new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field public try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->new:Ljava/util/List;

    new-instance v0, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->else:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$4;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->goto:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    return-void
.end method


# virtual methods
.method public final case(Landroid/content/Context;Ljava/util/Map;Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$1;

    invoke-direct {v0, p0, p3}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->new:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->else(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-class p2, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    monitor-enter p2

    const/4 p3, 0x0

    :try_start_1
    iput-boolean p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->if:Z

    iput-boolean p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->for:Z

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    const-string p2, "Invalid Pangle app ID"

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$1;->fail(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final else(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->if:Z

    const/16 v2, 0x753c

    if-nez v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->if:Z

    invoke-virtual {p0, p1, p3, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->if(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->goto()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->goto:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 1
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->new()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "pangle"

    invoke-virtual {p0, v2, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try(ILjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->isInitSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->new()V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->for:Z

    if-eqz p1, :cond_4

    const-string p1, "pangle"

    invoke-virtual {p0, v2, p1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try(ILjava/lang/String;)V

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "value"

    const-string v5, "name"

    if-ge v2, v3, :cond_3

    :try_start_3
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-object p1
.end method

.method public getAdNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.6.0.7.3"

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->isInitSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_21

    sget-object v0, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_ADSLOT_INFO:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_WATER_FALL_AB_TEST:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, p1

    :goto_0
    sget-object v1, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_CLIENT_REQ_ID:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    goto :goto_1

    :cond_2
    move-object v5, p1

    :goto_1
    sget-object v1, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_WATER_SUB_AD_TYPE:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    instance-of v2, v0, Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v2, :cond_21

    check-cast v0, Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result p1

    const/16 v2, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne p1, v2, :cond_5

    if-ne v1, v10, :cond_4

    const/4 p1, 0x2

    goto :goto_3

    :cond_4
    if-ne v1, v9, :cond_5

    const/16 p1, 0x8

    :cond_5
    :goto_3
    const/4 v11, 0x3

    const/4 v12, 0x5

    if-ne p1, v10, :cond_7

    if-ne v1, v11, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    const/4 p1, 0x5

    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->buildPangleAdSlot(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getMediaExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    sget-object v2, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_WATER_ORIGIN_TYPE:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_8

    const/4 p2, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_5
    if-ne p1, v11, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-gtz v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    :cond_a
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v3

    goto :goto_7

    :cond_b
    :goto_6
    const/high16 v2, 0x44870000    # 1080.0f

    const/high16 v3, 0x44f00000    # 1920.0f

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    const/16 v2, 0x438

    const/16 v3, 0x780

    :goto_7
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto/16 :goto_11

    :cond_c
    if-eq p1, v10, :cond_14

    if-ne p1, v9, :cond_d

    goto/16 :goto_9

    :cond_d
    if-ne p1, v12, :cond_1c

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    if-eq p2, v10, :cond_11

    if-ne p2, v9, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result v2

    if-ne v2, v10, :cond_10

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-lez v2, :cond_f

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-gtz v2, :cond_f

    goto/16 :goto_e

    :cond_f
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-lez v2, :cond_1c

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-lez v2, :cond_1c

    goto/16 :goto_10

    :cond_10
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-gtz v2, :cond_a

    goto :goto_a

    :cond_11
    :goto_8
    if-ne p2, v10, :cond_13

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-lez v2, :cond_12

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-gtz v2, :cond_12

    goto/16 :goto_e

    :cond_12
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-lez v2, :cond_1c

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-lez v2, :cond_1c

    goto/16 :goto_10

    :cond_13
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-gtz v2, :cond_a

    goto :goto_a

    :cond_14
    :goto_9
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result v2

    if-eq v2, v10, :cond_17

    if-eq p1, v10, :cond_17

    if-ne p1, v9, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-gtz v2, :cond_a

    :cond_16
    :goto_a
    const/16 v2, 0x280

    const/16 v3, 0x154

    goto/16 :goto_7

    :cond_17
    :goto_b
    if-ne p1, v10, :cond_1a

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getBannerSize()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_c

    .line 1
    :pswitch_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-lez v2, :cond_18

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-lez v2, :cond_18

    new-array v2, v9, [I

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v3

    aput v3, v2, v8

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v3

    aput v3, v2, v10

    goto :goto_d

    :cond_18
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-gez v2, :cond_19

    new-array v2, v9, [I

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v3

    aput v3, v2, v8

    aput v8, v2, v10

    goto :goto_d

    :pswitch_1
    new-array v2, v9, [I

    fill-array-data v2, :array_0

    goto :goto_d

    :pswitch_2
    new-array v2, v9, [I

    fill-array-data v2, :array_1

    goto :goto_d

    :pswitch_3
    new-array v2, v9, [I

    fill-array-data v2, :array_2

    goto :goto_d

    :pswitch_4
    new-array v2, v9, [I

    fill-array-data v2, :array_3

    goto :goto_d

    :cond_19
    :goto_c
    :pswitch_5
    new-array v2, v9, [I

    fill-array-data v2, :array_4

    .line 2
    :goto_d
    aget v3, v2, v8

    int-to-float v3, v3

    aget v2, v2, v10

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto :goto_11

    :cond_1a
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-lez v2, :cond_1b

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-gtz v2, :cond_1b

    :goto_e
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto :goto_11

    :cond_1b
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    if-lez v2, :cond_1c

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    if-lez v2, :cond_1c

    :goto_10
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v3

    int-to-float v3, v3

    goto :goto_f

    :cond_1c
    :goto_11
    if-eqz p2, :cond_1d

    if-ne p2, v10, :cond_1e

    if-ne p1, v12, :cond_1e

    goto :goto_12

    :cond_1d
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result p2

    if-ne p2, v10, :cond_1e

    if-ne p1, v12, :cond_1e

    :goto_12
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    :cond_1e
    if-eq p1, v10, :cond_1f

    if-ne p1, v9, :cond_20

    :cond_1f
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    :cond_20
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    :cond_21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getBiddingToken(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x2d8
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x1d4
        0x3c
    .end array-data

    :array_2
    .array-data 4
        0x12c
        0xfa
    .end array-data

    :array_3
    .array-data 4
        0x140
        0x64
    .end array-data

    :array_4
    .array-data 4
        0x140
        0x32
    .end array-data
.end method

.method public getBiddingTokenMap(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroMoreSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.6.0"

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0"

    return-object v0
.end method

.method public final goto()Z
    .locals 4

    const-string v0, "com.bytedance.sdk.openadsdk.TTAdConstant"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "IS_P"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "TTMediationSDK_SDK_Init"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7a7f\u5c71\u7532\u7248\u672c\uff1aisP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public final if(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/TTAdConfig;"
        }
    .end annotation

    const-string p1, "pangle_is_pangle_use_texture_view"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "pangle_app_name"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "pangle_is_pangle_paid"

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "pangle_title_bar_theme"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "pangle_is_pangle_allow_show_notify"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const-string v6, "pangle_is_pangle_allow_show_page_when_screen_lock"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const-string v7, "pangle_direct_download_networktype"

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const-string v8, "pangle_data"

    invoke-interface {p3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1
    iget-object v9, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    invoke-virtual {v9}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isLimitPersonalAds()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "0"

    goto :goto_4

    :cond_4
    const-string v9, "1"

    :goto_4
    const-string v10, "personal_ads_type"

    invoke-virtual {p0, v8, v10, v9}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->setPangleData(Ljava/lang/String;)V

    const-string v9, "pangle_need_clear_task_reset"

    .line 2
    invoke-interface {p3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const-string v10, "pangle_keywords"

    invoke-interface {p3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "pangle_plugin_update_config"

    invoke-interface {p3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    new-instance v11, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v11}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    invoke-virtual {v11, p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->paid(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    if-nez v4, :cond_5

    const/4 p2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_5
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowPageWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/Logger;->isDebug()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    if-nez v7, :cond_6

    new-array v7, v1, [I

    :cond_6
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    const-string p2, ""

    if-nez v8, :cond_7

    move-object v8, p2

    :cond_7
    invoke-virtual {p1, v8}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->data(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    if-nez v9, :cond_8

    new-array v9, v1, [Ljava/lang/String;

    :cond_8
    invoke-virtual {p1, v9}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->needClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->else:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->customController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    if-nez v10, :cond_9

    move-object v10, p2

    :cond_9
    invoke-virtual {p1, v10}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->keywords(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    const/4 p2, 0x2

    if-nez p3, :cond_a

    const/4 p3, 0x2

    goto :goto_6

    :cond_a
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_6
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->setPluginUpdateConfig(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    if-eqz p3, :cond_c

    sget-object v2, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$5;->do:[I

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->getAgeGroup()Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v2, p3

    if-eq p3, v0, :cond_b

    if-eq p3, p2, :cond_d

    const/4 p2, 0x3

    goto :goto_7

    :cond_b
    const/4 v0, 0x2

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v0, 0x0

    .line 4
    :cond_d
    :goto_8
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->setAgeGroup(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    .line 5
    :try_start_0
    new-instance p2, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2;

    invoke-direct {p2, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->injectionAuth(Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p1

    return-object p1
.end method

.method public initAdn(Landroid/content/Context;Ljava/util/Map;Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/util/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/bytedance/msdk/adapter/util/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-class v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->isInitedSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;->success()V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->isInitedSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "app_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "TTMediationSDK_SDK_Init"

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init Pangle SDK start......appId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->case(Landroid/content/Context;Ljava/util/Map;Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    nop

    if-eqz p3, :cond_1

    :try_start_3
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "configuration is empty"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;->fail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public isNewInitFunction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final new()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$InitCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$InitCallback;->success()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setInjectionAuth(Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->case:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

    return-void
.end method

.method public setPrivacyConfig(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V
    .locals 2

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isLimitPersonalAds()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    const-string v0, "personal_ads_type"

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getPangleData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->setPangleData(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->data(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->updateAdConfig(Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setThemeStatus(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->setThemeStatus(Ljava/util/Map;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_THEME_STATUS:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-ne v0, p1, :cond_3

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setThemeStatus(I)V

    :cond_3
    return-void
.end method

.method public final try(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$InitCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$InitCallback;->fail(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->new:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->for:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->if:Z

    return-void
.end method
