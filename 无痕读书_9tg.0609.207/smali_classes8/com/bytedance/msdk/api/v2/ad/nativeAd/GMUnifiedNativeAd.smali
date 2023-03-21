.class public Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;
.super Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;
.source "GMUnifiedNativeAd.java"


# instance fields
.field public if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;-><init>()V

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    invoke-direct {v0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;->B()V

    :cond_0
    return-void
.end method

.method public getAdLoadInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/AdLoadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->C()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCacheList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/GMAdEcpmInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiBiddingEcpm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/GMAdEcpmInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    if-eqz v0, :cond_5

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c5f

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;->onAdLoadedFail(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdStyleType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->x()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_1

    .line 7
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c63

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;->onAdLoadedFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdStyleType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 9
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->B()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 10
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c66

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;->onAdLoadedFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_3
    return-void

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->getAdSlot()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;)V

    :cond_5
    return-void
.end method

.method public loadAdByAdm(Ljava/lang/String;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;)V

    :cond_0
    return-void
.end method

.method public loadToken(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/GMAdTokenCallback;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-super {p0, p1, v0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    if-eqz v0, :cond_5

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c5f

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/GMAdTokenCallback;->onAdTokenLoadedFail(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdStyleType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->x()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_1

    .line 7
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c63

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/GMAdTokenCallback;->onAdTokenLoadedFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdStyleType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 9
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->B()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 10
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c66

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/GMAdTokenCallback;->onAdTokenLoadedFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_3
    return-void

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->getAdSlot()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/h;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/GMAdTokenCallback;)V

    :cond_5
    return-void
.end method
