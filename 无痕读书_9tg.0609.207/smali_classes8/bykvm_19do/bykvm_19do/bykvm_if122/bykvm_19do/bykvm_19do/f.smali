.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;
.source "TTInterDrawAdManager.java"


# instance fields
.field public f0:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/Logger;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TTMediationSDK"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v6, "show"

    invoke-static {v5, v6}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u8fd4\u56de\u7ed9\u5f00\u53d1\u8005\u6700\u7ec8\u5e7f\u544a\uff1aslotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",slotType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",cpm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result v5

    invoke-static {v5}, Lcom/apk/eg;->do(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",ImageMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getImageMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",showSort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",isExpressAd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isExpressAd()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_try19/a;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    new-instance v5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f$a;

    invoke-direct {v5, p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;Ljava/util/List;)V

    invoke-direct {v3, v2, v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_try19/a;-><init>(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_try19/a$c;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(Ljava/util/List;)V

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;Z)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0, p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->c(Lcom/bytedance/msdk/base/TTBaseAd;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->L:Z

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private e0()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->K()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v3

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    :goto_1
    invoke-direct {p0, v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->c()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v0, "TMe"

    const-string v1, "--==-- sorted ok"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-direct {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->f(Ljava/util/List;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-direct {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->f(Ljava/util/List;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-direct {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->f(Ljava/util/List;)V

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->e0()V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->u()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public B()V
    .locals 1

    invoke-super {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->B()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->f0:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;

    return-void
.end method

.method public O()V
    .locals 7

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->f0:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->f0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/Logger;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u8fd4\u56de\u7ed9\u5916\u90e8\u5f00\u53d1\u8005\u7684\u5e7f\u544a\u6570\u91cf\uff1asumList.size="

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;

    if-eqz v2, :cond_1

    instance-of v3, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_try19/a;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_try19/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_try19/a;->a(Z)V

    :cond_2
    invoke-interface {v2}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;->canAdReuse()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v3

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-interface {v2}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;->getAdNetworkRitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;->getTTBaseAd()Lcom/bytedance/msdk/base/TTBaseAd;

    move-result-object v3

    invoke-interface {v2}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;->getAdNetworkRitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->f0:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;

    invoke-interface {v1, v0}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;->onAdLoadSuccess(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public P()V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;)V
    .locals 1

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;->d0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getShallowCopy(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz p1, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdType(I)V

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {p1}, Lcom/bytedance/msdk/api/TTVideoOptionUtil;->setFeedTTVideoOptionIfNeed(Lcom/bytedance/msdk/api/AdSlot;)V

    :cond_2
    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->f0:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->w:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;->S()V

    :cond_3
    return-void
.end method

.method public a(Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;I)V
    .locals 10

    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;->getTTBaseAd()Lcom/bytedance/msdk/base/TTBaseAd;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->canAdReuse()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;->getAdNetworkRitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAd;->getAdNetworkRitId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->r:Ljava/util/Map;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    iget-object v7, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->v:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v9, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->w:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    invoke-virtual/range {v1 .. v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/Map;ZLcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/bytedance/msdk/api/AdError;)V
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/f;->f0:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdLoadCallback;->onAdLoadFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_0
    return-void
.end method
