.class public interface abstract Lcom/bytedance/msdk/api/v2/GMDislikeCallback;
.super Ljava/lang/Object;
.source "GMDislikeCallback.java"


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onRefuse()V
.end method

.method public abstract onSelected(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onShow()V
.end method
