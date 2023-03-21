.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;
.super Ljava/lang/Object;
.source "GMDrawAdLoadCallback.java"


# virtual methods
.method public abstract onAdLoadFail(Lcom/bytedance/msdk/api/AdError;)V
.end method

.method public abstract onAdLoadSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;",
            ">;)V"
        }
    .end annotation
.end method
