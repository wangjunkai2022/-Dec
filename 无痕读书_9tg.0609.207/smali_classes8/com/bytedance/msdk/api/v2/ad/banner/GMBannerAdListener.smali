.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;
.super Ljava/lang/Object;
.source "GMBannerAdListener.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdClosed()V
.end method

.method public abstract onAdLeftApplication()V
.end method

.method public abstract onAdOpened()V
.end method

.method public abstract onAdShow()V
.end method

.method public abstract onAdShowFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
