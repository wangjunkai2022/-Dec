.class public Lcom/bytedance/msdk/api/v2/ad/draw/GMUnifiedDrawAd;
.super Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;
.source "GMUnifiedDrawAd.java"


# instance fields
.field public if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;-><init>()V

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;

    invoke-direct {v0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/draw/GMUnifiedDrawAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/draw/GMUnifiedDrawAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->B()V

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/draw/GMUnifiedDrawAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/draw/GMUnifiedDrawAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/draw/GMUnifiedDrawAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->getAdCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/draw/GMUnifiedDrawAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/draw/GMUnifiedDrawAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->l()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 6
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c5f

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;->onAdLoadFail(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/draw/GMUnifiedDrawAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->getAdSlot()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;)V

    :cond_2
    return-void
.end method
