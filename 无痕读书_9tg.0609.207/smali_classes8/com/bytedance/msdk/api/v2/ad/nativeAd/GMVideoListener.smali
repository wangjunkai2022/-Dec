.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMVideoListener;
.super Ljava/lang/Object;
.source "GMVideoListener.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;


# virtual methods
.method public abstract onProgressUpdate(JJ)V
.end method

.method public abstract onVideoCompleted()V
.end method

.method public abstract onVideoError(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onVideoPause()V
.end method

.method public abstract onVideoResume()V
.end method

.method public abstract onVideoStart()V
.end method
