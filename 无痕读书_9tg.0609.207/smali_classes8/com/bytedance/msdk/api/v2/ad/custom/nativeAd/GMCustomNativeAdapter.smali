.class public abstract Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;
.super Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;
.source "GMCustomNativeAdapter.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/base/IGMCustomLoadNativeCall;


# instance fields
.field public goto:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->isCallLoadFailCall()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz v0, :cond_3

    .line 3
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const v2, 0xbf72

    .line 4
    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;->getCode()I

    move-result v4

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_2

    :cond_2
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    .line 8
    invoke-static {p1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final callLoadSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->isCallLoadSuccessCall()Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_2

    const-string v0, "\u81ea\u5b9a\u4e49Adapter callLoadSuccess"

    .line 2
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;

    .line 6
    invoke-virtual {v3, p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->setGMCustomBaseAdapter(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;)V

    .line 7
    iget-object v4, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->t()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->setAdType(I)V

    .line 8
    iget-object v4, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->s()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->setExpressAd(Z)V

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoadedCustom(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    const-string p1, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    .line 12
    invoke-static {v1, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final isExpressRender()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;->goto:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->getAdStyleType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isNativeAd()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;->goto:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->getAdStyleType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public abstract load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
.end method

.method public final loadCustom(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
    .locals 1

    .line 1
    iput-object p3, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;->goto:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;

    .line 2
    instance-of v0, p2, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;->load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const p2, -0x1869f

    const-string p3, "ClassCastException\uff1aload ad fail adSlot is not GMAdSlotNative"

    invoke-direct {p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method
