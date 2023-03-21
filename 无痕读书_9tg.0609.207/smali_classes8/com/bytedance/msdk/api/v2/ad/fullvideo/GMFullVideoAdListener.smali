.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;
.super Ljava/lang/Object;
.source "GMFullVideoAdListener.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;


# virtual methods
.method public abstract onFullVideoAdClick()V
.end method

.method public abstract onFullVideoAdClosed()V
.end method

.method public abstract onFullVideoAdShow()V
.end method

.method public abstract onFullVideoAdShowFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V
    .param p1    # Lcom/bytedance/msdk/api/reward/RewardItem;
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
