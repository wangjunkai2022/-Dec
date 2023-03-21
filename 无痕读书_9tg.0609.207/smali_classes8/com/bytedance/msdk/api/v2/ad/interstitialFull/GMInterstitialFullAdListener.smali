.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/interstitialFull/GMInterstitialFullAdListener;
.super Ljava/lang/Object;
.source "GMInterstitialFullAdListener.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;


# virtual methods
.method public abstract onAdLeftApplication()V
.end method

.method public abstract onAdOpened()V
.end method

.method public abstract onInterstitialFullClick()V
.end method

.method public abstract onInterstitialFullClosed()V
.end method

.method public abstract onInterstitialFullShow()V
.end method

.method public abstract onInterstitialFullShowFail(Lcom/bytedance/msdk/api/AdError;)V
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
