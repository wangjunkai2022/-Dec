.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;
.super Ljava/lang/Object;
.source "GMInterstitialAdListener.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;


# virtual methods
.method public abstract onAdLeftApplication()V
.end method

.method public abstract onAdOpened()V
.end method

.method public abstract onInterstitialAdClick()V
.end method

.method public abstract onInterstitialClosed()V
.end method

.method public abstract onInterstitialShow()V
.end method

.method public abstract onInterstitialShowFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
