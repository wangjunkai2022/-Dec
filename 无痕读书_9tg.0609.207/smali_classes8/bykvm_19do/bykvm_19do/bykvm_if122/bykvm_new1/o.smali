.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/o;
.super Ljava/lang/Object;
.source "GMAdUtil.java"


# direct methods
.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Z)Lcom/bytedance/msdk/api/GMAdEcpmInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setAdNetworkPlatformId(I)V

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setAdNetworkPlatformName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCustomAdNetWorkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setCustomAdNetworkPlatformName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setAdNetworkRitId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getLevelTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setLevelTag(Ljava/lang/String;)V

    const-string v1, "-3"

    if-eqz p1, :cond_3

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/o;->b()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isServerBiddingAd()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isMultiBiddingAd()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setPreEcpm(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getNetWorkPlatFormCpm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setPreEcpm(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/o;->a()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isServerBiddingAd()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setPreEcpm(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getMultiCpm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setPreEcpm(Ljava/lang/String;)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getReqId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setRequestId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setReqBiddingType(I)V

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getErrorMsg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/api/GMAdEcpmInfo;->setErrorMsg(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getEventMap()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "waterfall_abtest"

    .line 18
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a()Z
    .locals 1

    .line 16
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->r()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/AdSlot;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Z",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 21
    invoke-static {p0, p1, p2, p3, p9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)V

    const/4 p9, 0x0

    if-nez p4, :cond_8

    .line 22
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    if-eqz p4, :cond_0

    goto/16 :goto_0

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    const-string p5, "isReady-\u300b\u5e7f\u544a\u7c7b\u578b\uff1a"

    const-string v0, "TTMediationSDK"

    const-string v1, ",\u662f\u5426\u5df2\u51c6\u5907\u597d\uff1fisReady()\uff1a"

    const/4 v2, 0x1

    if-lez p4, :cond_2

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz p4, :cond_1

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p6, v4}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p4}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result v4

    invoke-static {v4}, Lcom/apk/eg;->do(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v0, v3}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p4, p6}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p4}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result p4

    if-nez p4, :cond_1

    return v2

    :cond_2
    if-eqz p2, :cond_4

    .line 29
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz p2, :cond_3

    .line 31
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p6, v3}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result v3

    invoke-static {v3}, Lcom/apk/eg;->do(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 33
    invoke-static {v0, p4}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2, p6}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result p2

    if-nez p2, :cond_3

    return v2

    :cond_4
    if-eqz p1, :cond_6

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz p1, :cond_5

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p6, p4}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "isReady--->biding-->\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result p4

    invoke-static {p4}, Lcom/apk/eg;->do(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-static {v0, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1, p6}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_6
    if-eqz p8, :cond_8

    .line 41
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8

    .line 42
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 43
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 45
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object p1

    invoke-virtual {p1, p6, p2, p7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 46
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;Z)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    return v2

    :cond_8
    :goto_0
    return p9
.end method

.method public static b()Z
    .locals 1

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->q()Z

    move-result v0

    return v0
.end method
