.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;
.super Ljava/lang/Object;
.source "GMNativeAdLoadCallback.java"


# virtual methods
.method public abstract onAdLoaded(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoadedFail(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
