.class public interface abstract Lcom/bytedance/msdk/api/base/TTLoadBase;
.super Ljava/lang/Object;
.source "TTLoadBase.java"


# virtual methods
.method public abstract getAdLoadInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/AdLoadInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdNetworkPlatformId()I
.end method

.method public abstract getAdNetworkRitId()Ljava/lang/String;
.end method

.method public abstract getBestEcpm()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
.end method

.method public abstract getCacheList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/GMAdEcpmInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMultiBiddingEcpm()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/GMAdEcpmInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreEcpm()Ljava/lang/String;
.end method

.method public abstract getShowEcpm()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
.end method
