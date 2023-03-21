.class public Lcom/bytedance/msdk/api/v2/GMAdConfig;
.super Ljava/lang/Object;
.source "GMAdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;
    }
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
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;Lcom/bytedance/msdk/api/v2/GMAdConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->do:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->if:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->if:Ljava/lang/String;

    .line 6
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->for:Z

    .line 7
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->for:Z

    .line 8
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->new:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->new:Ljava/lang/String;

    .line 10
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->try:Z

    .line 11
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->try:Z

    .line 12
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->case:Lcom/bytedance/msdk/api/v2/GMPangleOption;

    if-eqz p2, :cond_0

    .line 13
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->case:Lcom/bytedance/msdk/api/v2/GMPangleOption;

    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    invoke-direct {p2}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->build()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->case:Lcom/bytedance/msdk/api/v2/GMPangleOption;

    .line 15
    :goto_0
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->else:Lcom/bytedance/msdk/api/v2/GMGdtOption;

    if-eqz p2, :cond_1

    .line 16
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->else:Lcom/bytedance/msdk/api/v2/GMGdtOption;

    goto :goto_1

    .line 17
    :cond_1
    new-instance p2, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;

    invoke-direct {p2}, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/GMGdtOption$Builder;->build()Lcom/bytedance/msdk/api/v2/GMGdtOption;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->else:Lcom/bytedance/msdk/api/v2/GMGdtOption;

    .line 18
    :goto_1
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->goto:Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

    if-eqz p2, :cond_2

    .line 19
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->goto:Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

    goto :goto_2

    .line 20
    :cond_2
    new-instance p2, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

    invoke-direct {p2}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;-><init>()V

    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->goto:Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

    .line 21
    :goto_2
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->this:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 22
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->this:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 23
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->break:Ljava/util/Map;

    .line 24
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->break:Ljava/util/Map;

    .line 25
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->catch:Z

    .line 26
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->catch:Z

    .line 27
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->class:Z

    .line 28
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->class:Z

    .line 29
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->const:Lorg/json/JSONObject;

    .line 30
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->const:Lorg/json/JSONObject;

    .line 31
    iget-object p1, p1, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->final:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

    .line 32
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->final:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getCutstomLocalConfig()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->const:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getGMConfigUserInfoForSegment()Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->goto:Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

    return-object v0
.end method

.method public getGMGdtOption()Lcom/bytedance/msdk/api/v2/GMGdtOption;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->else:Lcom/bytedance/msdk/api/v2/GMGdtOption;

    return-object v0
.end method

.method public getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->case:Lcom/bytedance/msdk/api/v2/GMPangleOption;

    return-object v0
.end method

.method public getGmLiveTokenInjectionAuth()Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->final:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

    return-object v0
.end method

.method public getLocalExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->break:Ljava/util/Map;

    return-object v0
.end method

.method public getPrivacyConfig()Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->this:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    return-object v0
.end method

.method public getPublisherDid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->new:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->for:Z

    return v0
.end method

.method public isHttps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->catch:Z

    return v0
.end method

.method public isOpenAdnTest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->try:Z

    return v0
.end method

.method public isOpenPangleCustom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConfig;->class:Z

    return v0
.end method
