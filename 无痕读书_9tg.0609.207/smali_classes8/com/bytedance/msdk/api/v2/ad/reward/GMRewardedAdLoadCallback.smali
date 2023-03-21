.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdLoadCallback;
.super Ljava/lang/Object;
.source "GMRewardedAdLoadCallback.java"


# virtual methods
.method public abstract onRewardVideoAdLoad()V
.end method

.method public abstract onRewardVideoCached()V
.end method

.method public abstract onRewardVideoLoadFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
