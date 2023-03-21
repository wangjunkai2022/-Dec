.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;
.super Ljava/lang/Object;
.source "GMSplashAdLoadCallback.java"


# virtual methods
.method public abstract onAdLoadTimeout()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSplashAdLoadFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSplashAdLoadSuccess()V
.end method
