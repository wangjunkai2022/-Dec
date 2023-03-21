.class public Lcom/apk/i50;
.super Lcom/apk/h70;
.source "CsjProviderReward.java"


# instance fields
.field public break:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

.field public catch:Lcom/apk/z60;

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
    iget-object v0, p0, Lcom/apk/i50;->catch:Lcom/apk/z60;

    invoke-virtual {p0, p1, v0}, Lcom/apk/e70;->c(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public j(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/i50;->n(Landroid/app/Activity;)Z

    return-void
.end method

.method public final n(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/i50;->break:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/apk/i50;->break:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/apk/i50;->this:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/i50;->catch:Lcom/apk/z60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/h70;->k(Ljava/lang/String;Lcom/apk/b70;)V

    return p1
.end method
