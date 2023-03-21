.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;
.super Ljava/lang/Object;
.source "GMFullVideoAdLoadCallback.java"


# virtual methods
.method public abstract onFullVideoAdLoad()V
.end method

.method public abstract onFullVideoCached()V
.end method

.method public abstract onFullVideoLoadFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
