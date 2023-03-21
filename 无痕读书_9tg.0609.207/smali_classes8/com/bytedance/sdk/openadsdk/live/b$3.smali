.class public Lcom/bytedance/sdk/openadsdk/live/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/android/live/base/api/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/live/b;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/android/live/base/api/callback/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

.field public final synthetic b:Lcom/bytedance/sdk/openadsdk/live/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/live/b;Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/b$3;->b:Lcom/bytedance/sdk/openadsdk/live/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/live/b$3;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b$3;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "live_room_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/b$3;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdEvent;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/live/b$3;->a(Ljava/lang/Boolean;)V

    return-void
.end method
