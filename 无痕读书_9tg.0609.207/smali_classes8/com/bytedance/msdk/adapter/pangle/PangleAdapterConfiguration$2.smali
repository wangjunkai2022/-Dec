.class public Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTokenInfo()Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;
    .locals 9

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->case:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;->getTokenInfo()Lcom/bytedance/msdk/api/v2/GMLiveToken;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;

    iget-object v2, v0, Lcom/bytedance/msdk/api/v2/GMLiveToken;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/bytedance/msdk/api/v2/GMLiveToken;->accessToken:Ljava/lang/String;

    iget-object v4, v0, Lcom/bytedance/msdk/api/v2/GMLiveToken;->openId:Ljava/lang/String;

    iget-wide v5, v0, Lcom/bytedance/msdk/api/v2/GMLiveToken;->expireAt:J

    iget-object v7, v0, Lcom/bytedance/msdk/api/v2/GMLiveToken;->refreshToken:Ljava/lang/String;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v8

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLogin()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->case:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;->isLogin()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTokenInvalid(Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;",
            "Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->case:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    new-instance v8, Lcom/bytedance/msdk/api/v2/GMLiveToken;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->accessToken:Ljava/lang/String;

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->openId:Ljava/lang/String;

    iget-wide v5, p1, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->expireAt:J

    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->refreshToken:Ljava/lang/String;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/msdk/api/v2/GMLiveToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v8, v0

    :goto_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2$1;

    invoke-direct {v0, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 3
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->case:Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

    .line 4
    invoke-interface {p1, v8, v0, p3, p4}, Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;->onTokenInvalid(Lcom/bytedance/msdk/api/v2/GMLiveToken;Lcom/bytedance/msdk/api/v2/GMLiveAuthCallback;Landroid/app/Activity;Ljava/util/Map;)V

    :cond_2
    return-void
.end method
