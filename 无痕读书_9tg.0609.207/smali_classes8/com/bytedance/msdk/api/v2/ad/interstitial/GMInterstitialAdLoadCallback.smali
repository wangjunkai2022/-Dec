.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdLoadCallback;
.super Ljava/lang/Object;
.source "GMInterstitialAdLoadCallback.java"


# virtual methods
.method public abstract onInterstitialLoad()V
.end method

.method public abstract onInterstitialLoadFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
