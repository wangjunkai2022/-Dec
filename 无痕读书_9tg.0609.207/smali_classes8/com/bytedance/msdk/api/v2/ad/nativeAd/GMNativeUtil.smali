.class public Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil;
.super Ljava/lang/Object;
.source "GMNativeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GMsToTTs(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/nativeAd/TTNativeAd;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 4
    :cond_2
    new-instance v2, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;

    invoke-direct {v2, v1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeUtil$1;-><init>(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;)V

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method
