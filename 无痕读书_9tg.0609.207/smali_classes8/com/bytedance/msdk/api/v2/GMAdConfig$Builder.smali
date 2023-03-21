.class public Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
.super Ljava/lang/Object;
.source "GMAdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/GMAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public break:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public case:Lcom/bytedance/msdk/api/v2/GMPangleOption;

.field public catch:Z

.field public class:Z

.field public const:Lorg/json/JSONObject;

.field public do:Ljava/lang/String;

.field public else:Lcom/bytedance/msdk/api/v2/GMGdtOption;

.field public final:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

.field public for:Z

.field public goto:Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

.field public if:Ljava/lang/String;

.field public new:Ljava/lang/String;

.field public this:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->for:Z

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->new:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->try:Z

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->catch:Z

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->class:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/msdk/api/v2/GMAdConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/v2/GMAdConfig;-><init>(Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;Lcom/bytedance/msdk/api/v2/GMAdConfig$1;)V

    return-object v0
.end method

.method public injectionAuth(Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->final:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->do:Ljava/lang/String;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->if:Ljava/lang/String;

    return-object p0
.end method

.method public setConfigUserInfoForSegment(Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->goto:Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

    return-object p0
.end method

.method public setCustomLocalConfig(Lorg/json/JSONObject;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->const:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setDebug(Z)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->for:Z

    return-object p0
.end method

.method public setGdtOption(Lcom/bytedance/msdk/api/v2/GMGdtOption;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/v2/GMGdtOption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->else:Lcom/bytedance/msdk/api/v2/GMGdtOption;

    return-object p0
.end method

.method public setHttps(Z)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->catch:Z

    return-object p0
.end method

.method public setIsOpenPangleCustom(Z)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->class:Z

    return-object p0
.end method

.method public setLocalExtra(Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->break:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public setOpenAdnTest(Z)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->try:Z

    return-object p0
.end method

.method public setPangleOption(Lcom/bytedance/msdk/api/v2/GMPangleOption;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/v2/GMPangleOption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->case:Lcom/bytedance/msdk/api/v2/GMPangleOption;

    return-object p0
.end method

.method public setPrivacyConfig(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->this:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    return-object p0
.end method

.method public setPublisherDid(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->new:Ljava/lang/String;

    return-object p0
.end method
