.class public Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMLiveAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2;->onTokenInvalid(Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2$1;->do:Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuth(Lcom/bytedance/msdk/api/v2/GMLiveToken;)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2$1;->do:Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;

    iget-object v2, p1, Lcom/bytedance/msdk/api/v2/GMLiveToken;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/msdk/api/v2/GMLiveToken;->accessToken:Ljava/lang/String;

    iget-object v4, p1, Lcom/bytedance/msdk/api/v2/GMLiveToken;->openId:Ljava/lang/String;

    iget-wide v5, p1, Lcom/bytedance/msdk/api/v2/GMLiveToken;->expireAt:J

    iget-object v7, p1, Lcom/bytedance/msdk/api/v2/GMLiveToken;->refreshToken:Ljava/lang/String;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v8}, Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;->onAuth(Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;)V

    :cond_0
    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$2$1;->do:Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/live/TTLiveAuthCallback;->onFailed(Ljava/lang/Throwable;)V

    return-void
.end method
