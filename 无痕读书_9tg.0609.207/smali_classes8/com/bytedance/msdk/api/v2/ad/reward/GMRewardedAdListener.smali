.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;
.super Ljava/lang/Object;
.source "GMRewardedAdListener.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;


# virtual methods
.method public abstract onRewardClick()V
.end method

.method public abstract onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V
    .param p1    # Lcom/bytedance/msdk/api/reward/RewardItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onRewardedAdClosed()V
.end method

.method public abstract onRewardedAdShow()V
.end method

.method public abstract onRewardedAdShowFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSkippedVideo()V
.end method

.method public abstract onVideoComplete()V
.end method

.method public abstract onVideoError()V
.end method
