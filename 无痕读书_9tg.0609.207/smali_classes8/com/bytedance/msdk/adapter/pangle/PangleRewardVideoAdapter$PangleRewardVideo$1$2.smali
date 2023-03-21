.class public Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onAdClose"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->if(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onRewardedAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onAdShow"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->if(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onRewardedAdShow()V

    :cond_0
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onAdVideoBarClick"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->if(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onRewardClick()V

    :cond_0
    return-void
.end method

.method public onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onRewardArrived"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->if(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$2;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;ZLandroid/os/Bundle;I)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V

    :cond_0
    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p4, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object p4, p4, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    invoke-static {p4}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->do(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "TTMediationSDK"

    const-string p5, "pangle_reward:onRewardVerify"

    invoke-static {p4, p5}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object p4, p4, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    .line 1
    iget-object p5, p4, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of p5, p5, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    if-eqz p5, :cond_0

    invoke-static {p4}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->if(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    move-result-object p4

    new-instance p5, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;ZILjava/lang/String;)V

    invoke-interface {p4, p5}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V

    :cond_0
    return-void
.end method

.method public onSkippedVideo()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onSkippedVideo"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->if(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onSkippedVideo()V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onVideoComplete"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->if(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onVideoError"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;->if(Lcom/bytedance/msdk/adapter/pangle/PangleRewardVideoAdapter$PangleRewardVideo;)Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;->onVideoError()V

    :cond_0
    return-void
.end method
