.class public Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration;
.super Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;
.source ""


# instance fields
.field public if:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration;->if:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    return-void
.end method


# virtual methods
.method public getAdNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "gdt"

    return-object v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.482.1352.0"

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBiddingTokenMap(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
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

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "slot_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTAdSdk;->getGDTAdManger()Lcom/qq/e/comm/managers/IGDTAdManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qq/e/comm/managers/IGDTAdManager;->getBuyerId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/qq/e/comm/managers/GDTAdSdk;->getGDTAdManger()Lcom/qq/e/comm/managers/IGDTAdManager;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/qq/e/comm/managers/IGDTAdManager;->getSDKInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "buyerId"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkInfo"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getGroMoreSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.6.0"

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getIntegrationSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0"

    return-object v0
.end method

.method public initAdn(Landroid/content/Context;Ljava/util/Map;Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V
    .locals 3
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

    const-class v0, Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->isInitedSuccess()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "app_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init GDT SDK start...... appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK_SDK_Init"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/qq/e/comm/managers/GDTAdSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration;->if:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration;->if:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isLimitPersonalAds()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setPersonalizedState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :catchall_0
    :cond_2
    :goto_1
    if-eqz p3, :cond_4

    if-eqz v1, :cond_3

    .line 2
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->setInitedSuccess(Z)V

    invoke-interface {p3}, Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;->success()V

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "gdt init fail"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;->fail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public isNewInitFunction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setPrivacyConfig(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration;->if:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isLimitPersonalAds()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setPersonalizedState(I)V

    return-void
.end method

.method public showOpenOrInstallAppDialog(Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/GDTAdSdk;->getGDTAdManger()Lcom/qq/e/comm/managers/IGDTAdManager;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration$1;

    invoke-direct {v1, p1}, Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration$1;-><init>(Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;)V

    invoke-interface {v0, v1}, Lcom/qq/e/comm/managers/IGDTAdManager;->showOpenOrInstallAppDialog(Lcom/qq/e/ads/dfa/GDTAppDialogClickListener;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
