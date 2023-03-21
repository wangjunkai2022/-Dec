.class public interface abstract Lcom/bytedance/msdk/api/nativeAd/TTNativeAdLoadCallback;
.super Ljava/lang/Object;
.source "TTNativeAdLoadCallback.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
            "Lcom/bytedance/msdk/api/nativeAd/TTNativeAd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoadedFial(Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
