.class public Lcom/apk/h50$do;
.super Ljava/lang/Object;
.source "CsjProviderReward.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/h50;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/h50;


# direct methods
.method public constructor <init>(Lcom/apk/h50;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h50$do;->do:Lcom/apk/h50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h50$do;->do:Lcom/apk/h50;

    iget-object v1, v0, Lcom/apk/h50;->for:Lcom/apk/i50;

    .line 2
    iget-boolean v2, v1, Lcom/apk/f70;->for:Z

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/apk/h50;->do:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/h50;->if:Lcom/apk/z60;

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/apk/e70;->import(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h50$do;->do:Lcom/apk/h50;

    iget-object v0, v0, Lcom/apk/h50;->for:Lcom/apk/i50;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/h70;->l()V

    .line 4
    iget-object v0, p0, Lcom/apk/h50$do;->do:Lcom/apk/h50;

    iget-object v1, v0, Lcom/apk/h50;->for:Lcom/apk/i50;

    iget-object v2, v0, Lcom/apk/h50;->do:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/h50;->if:Lcom/apk/z60;

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/apk/e70;->volatile(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h50$do;->do:Lcom/apk/h50;

    iget-object v1, v0, Lcom/apk/h50;->for:Lcom/apk/i50;

    .line 2
    iget-boolean v2, v1, Lcom/apk/f70;->for:Z

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/apk/h50;->do:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/h50;->if:Lcom/apk/z60;

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/apk/e70;->catch(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/h50$do;->do:Lcom/apk/h50;

    iget-object p2, p1, Lcom/apk/h50;->for:Lcom/apk/i50;

    .line 2
    iget-boolean p3, p2, Lcom/apk/f70;->for:Z

    if-eqz p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p3, p1, Lcom/apk/h50;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/h50;->if:Lcom/apk/z60;

    .line 4
    invoke-virtual {p2, p3, p1}, Lcom/apk/e70;->a(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onSkippedVideo()V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h50$do;->do:Lcom/apk/h50;

    iget-object v1, v0, Lcom/apk/h50;->for:Lcom/apk/i50;

    .line 2
    iget-boolean v2, v1, Lcom/apk/f70;->for:Z

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/apk/h50;->do:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v0}, Lcom/apk/e70;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoError()V
    .locals 0

    return-void
.end method
