.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMPrimeNativeAdLoadCallback;
.super Ljava/lang/Object;
.source "GMPrimeNativeAdLoadCallback.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;


# virtual methods
.method public abstract onSingleAdLoad(Ljava/util/List;Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;",
            ">;",
            "Lcom/bytedance/msdk/api/AdError;",
            ")V"
        }
    .end annotation
.end method
