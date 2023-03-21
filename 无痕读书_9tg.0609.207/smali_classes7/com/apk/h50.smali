.class public Lcom/apk/h50;
.super Ljava/lang/Object;
.source "CsjProviderReward.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/i50;

.field public final synthetic if:Lcom/apk/z60;


# direct methods
.method public constructor <init>(Lcom/apk/i50;Ljava/lang/String;Lcom/apk/z60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h50;->for:Lcom/apk/i50;

    iput-object p2, p0, Lcom/apk/h50;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/h50;->if:Lcom/apk/z60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h50;->for:Lcom/apk/i50;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/h50;->for:Lcom/apk/i50;

    iget-object v1, p0, Lcom/apk/h50;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/h50;->if:Lcom/apk/z60;

    .line 5
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/apk/e70;->new(ILjava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/h50;->for:Lcom/apk/i50;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p1, v0, Lcom/apk/i50;->break:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 4
    new-instance v0, Lcom/apk/h50$do;

    invoke-direct {v0, p0}, Lcom/apk/h50$do;-><init>(Lcom/apk/h50;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 5
    iget-object p1, p0, Lcom/apk/h50;->for:Lcom/apk/i50;

    .line 6
    invoke-virtual {p1}, Lcom/apk/f70;->f()V

    .line 7
    iget-object p1, p0, Lcom/apk/h50;->for:Lcom/apk/i50;

    iget-object v0, p0, Lcom/apk/h50;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/h50;->if:Lcom/apk/z60;

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/apk/e70;->finally(Ljava/lang/String;Lcom/apk/z60;)V

    .line 9
    iget-object v2, p0, Lcom/apk/h50;->for:Lcom/apk/i50;

    iget-object v3, p0, Lcom/apk/h50;->do:Ljava/lang/String;

    iget-object v7, p0, Lcom/apk/h50;->if:Lcom/apk/z60;

    const-wide/16 v4, 0x1f40

    const/4 v6, 0x1

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    return-void
.end method

.method public onRewardVideoCached()V
    .locals 0

    return-void
.end method

.method public onRewardVideoCached(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h50;->for:Lcom/apk/i50;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/apk/f70;->new:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-object p1, v0, Lcom/apk/i50;->break:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 5
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 6
    iget-object p1, p0, Lcom/apk/h50;->for:Lcom/apk/i50;

    iget-object v0, p0, Lcom/apk/h50;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/h50;->if:Lcom/apk/z60;

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/apk/e70;->c(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method
