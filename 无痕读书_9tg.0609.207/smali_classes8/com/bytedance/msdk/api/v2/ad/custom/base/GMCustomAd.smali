.class public Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;
.super Ljava/lang/Object;
.source "GMCustomAd.java"


# instance fields
.field public do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    return-void
.end method


# virtual methods
.method public getTTAdapterCallback()Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->getTTAdapterCallback()Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    move-result-object v0

    return-object v0
.end method

.method public getTTBaseAd()Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    return-object v0
.end method

.method public setAdType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdType(I)V

    return-void
.end method

.method public setCpm(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    return-void
.end method

.method public setGMCustomBaseAdapter(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->setGMCustomBaseAdapter(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;)V

    :cond_0
    return-void
.end method

.method public setMediaExtraInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;->setMediaExtraInfo(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
