.class public Lcom/apk/y40;
.super Lcom/apk/h70;
.source "CsjProviderFullVideo.java"


# instance fields
.field public break:Lcom/apk/v60;

.field public catch:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

.field public this:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/h70;-><init>()V

    return-void
.end method


# virtual methods
.method public else(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/e70;->else(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/y40;->break:Lcom/apk/v60;

    invoke-virtual {p0, p1, v0}, Lcom/apk/e70;->goto(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public j(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/y40;->n(Landroid/app/Activity;)Z

    return-void
.end method

.method public final n(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/y40;->catch:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->GAME_GIFT_BONUS:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    .line 3
    iput-object v2, p0, Lcom/apk/y40;->catch:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/apk/y40;->this:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/y40;->break:Lcom/apk/v60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/h70;->k(Ljava/lang/String;Lcom/apk/b70;)V

    return p1
.end method
