.class public abstract Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;
.super Ljava/lang/Object;
.source "TTBaseAdapterConfiguration.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;


# static fields
.field public static final APP_ID_EXTRA_KEY:Ljava/lang/String; = "app_id"

.field public static final APP_KEY_EXTRA_KEY:Ljava/lang/String; = "app_key"

.field public static final APP_NAME_EXTRA_KEY:Ljava/lang/String; = "app_name"

.field public static final BAIDU_HTTPS:Ljava/lang/String; = "baidu_https"

.field public static final PANGLE_APP_NAME:Ljava/lang/String; = "pangle_app_name"

.field public static final PANGLE_DATA:Ljava/lang/String; = "pangle_data"

.field public static final PANGLE_DIRECT_DOWNLOAD_NETWORKTYPE:Ljava/lang/String; = "pangle_direct_download_networktype"

.field public static final PANGLE_IS_PANGLE_ALLOW_SHOW_NOTIFY:Ljava/lang/String; = "pangle_is_pangle_allow_show_notify"

.field public static final PANGLE_IS_PANGLE_ALLOW_SHOW_PAGE_WHEN_SCREEN_LOCK:Ljava/lang/String; = "pangle_is_pangle_allow_show_page_when_screen_lock"

.field public static final PANGLE_IS_PANGLE_PAID:Ljava/lang/String; = "pangle_is_pangle_paid"

.field public static final PANGLE_IS_PANGLE_USE_TEXTURE_VIEW:Ljava/lang/String; = "pangle_is_pangle_use_texture_view"

.field public static final PANGLE_KEYWORDS:Ljava/lang/String; = "pangle_keywords"

.field public static final PANGLE_NEED_CLEAR_TASK_RESET:Ljava/lang/String; = "pangle_need_clear_task_reset"

.field public static final PANGLE_PLUGIN_UPDATE_CONFIG:Ljava/lang/String; = "pangle_plugin_update_config"

.field public static final PANGLE_TITLE_BAR_THEME:Ljava/lang/String; = "pangle_title_bar_theme"

.field public static TT_MSDK_ADSLOT_INFO:Ljava/lang/String; = "tt_msdk_adslot_info"

.field public static TT_MSDK_CLIENT_REQ_ID:Ljava/lang/String; = "tt_msdk_client_req_id"

.field public static TT_MSDK_THEME_STATUS:Ljava/lang/String; = "tt_msdk_theme_status"

.field public static TT_MSDK_WATER_FALL_AB_TEST:Ljava/lang/String; = "tt_msdk_water_fall_ab_test"

.field public static TT_MSDK_WATER_ORIGIN_TYPE:Ljava/lang/String; = "tt_msdk_water_orgin_type"

.field public static TT_MSDK_WATER_SUB_AD_TYPE:Ljava/lang/String; = "tt_msdk_water_sub_ad_type"


# instance fields
.field public volatile do:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->do:Z

    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    :cond_2
    const-string v0, "v"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "V"

    if-nez v4, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    const-string v0, "\\."

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 10
    array-length v0, p0

    array-length v4, p1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_a

    .line 11
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v6, p1, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_8

    .line 12
    aget-object v5, p0, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return v5

    .line 13
    :cond_8
    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 14
    :cond_a
    array-length v0, p0

    array-length v4, p1

    if-ne v0, v4, :cond_b

    return v1

    .line 15
    :cond_b
    array-length p0, p0

    array-length p1, p1

    if-le p0, p1, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2
.end method


# virtual methods
.method public checkVersion()V
    .locals 9

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getGroMoreSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.6.0"

    .line 2
    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->do(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "3.6.0.1"

    const-string v3, ".x \uff0c\u5f53\u524d\u662f"

    const-string v4, "Adapter\u7248\u672c\u53f7\uff1a"

    const-string v5, " , "

    const-string v6, "\u7248\u672c\u53f7\uff1a"

    const-string v7, "TTMediationSDK_InitChecker"

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getAdNetworkName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getAdNetworkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getAdapterVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , GroMore\u7248\u672c\u4e0d\u7b26\u5408\uff0c\u8981\u6c42\u7b49\u4e8e"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getAdNetworkName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getAdNetworkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getAdapterVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , GroMore\u7248\u672c\u6b63\u5e38 \uff0c\u8981\u6c42\u7b49\u4e8e"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getMsdkRequestOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/bytedance/msdk/adapter/config/TTOnNetworkInitializationFinishedListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/msdk/adapter/config/TTOnNetworkInitializationFinishedListener;
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
            "Lcom/bytedance/msdk/adapter/config/TTOnNetworkInitializationFinishedListener;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public isInitedSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->do:Z

    return v0
.end method

.method public isNewInitFunction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setInitedSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->do:Z

    return-void
.end method

.method public setInjectionAuth(Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;)V
    .locals 0

    return-void
.end method

.method public setMsdkRequestOptions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPrivacyConfig(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V
    .locals 0

    return-void
.end method

.method public setThemeStatus(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public showOpenOrInstallAppDialog(Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
