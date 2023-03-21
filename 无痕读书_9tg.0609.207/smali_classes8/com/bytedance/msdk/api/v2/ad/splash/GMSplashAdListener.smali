.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;
.super Ljava/lang/Object;
.source "GMSplashAdListener.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdDismiss()V
.end method

.method public abstract onAdShow()V
.end method

.method public abstract onAdShowFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdSkip()V
.end method
