.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/custom/base/IGMCustomLoadDrawCall;
.super Ljava/lang/Object;
.source "IGMCustomLoadDrawCall.java"


# virtual methods
.method public abstract callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V
.end method

.method public abstract callLoadSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;",
            ">;)V"
        }
    .end annotation
.end method
