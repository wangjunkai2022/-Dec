.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/interstitialFull/GMInterstitialFullAdLoadCallback;
.super Ljava/lang/Object;
.source "GMInterstitialFullAdLoadCallback.java"


# virtual methods
.method public abstract onInterstitialFullAdLoad()V
.end method

.method public abstract onInterstitialFullCached()V
.end method

.method public abstract onInterstitialFullLoadFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
