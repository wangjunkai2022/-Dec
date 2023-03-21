.class public interface abstract Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;
.super Ljava/lang/Object;
.source "ITTAdapterConfiguration.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/config/IGMInitAdn;


# virtual methods
.method public abstract checkVersion()V
.end method

.method public abstract getAdNetworkName()Ljava/lang/String;
.end method

.method public abstract getAdapterVersion()Ljava/lang/String;
.end method

.method public abstract getBiddingToken(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
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
.end method

.method public abstract getBiddingTokenMap(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
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
.end method

.method public abstract getGroMoreSdkVersion()Ljava/lang/String;
.end method

.method public abstract getMsdkRequestOptions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetworkSdkVersion()Ljava/lang/String;
.end method

.method public abstract initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/bytedance/msdk/adapter/config/TTOnNetworkInitializationFinishedListener;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isNewInitFunction()Z
.end method

.method public abstract setInjectionAuth(Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;)V
.end method

.method public abstract setMsdkRequestOptions(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPrivacyConfig(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V
.end method

.method public abstract setThemeStatus(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showOpenOrInstallAppDialog(Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;)I
.end method
