.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/custom/base/IGMCustomLoadNativeCall;
.super Ljava/lang/Object;
.source "IGMCustomLoadNativeCall.java"


# virtual methods
.method public abstract callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V
.end method

.method public abstract callLoadSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;",
            ">;)V"
        }
    .end annotation
.end method
