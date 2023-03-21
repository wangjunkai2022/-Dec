.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;
.super Ljava/lang/Object;
.source "TTServerBiddingCore.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;",
            ")",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->A()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->A()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->A()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private a(JILcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V
    .locals 2

    if-eqz p4, :cond_0

    iget p3, p4, Lcom/bytedance/msdk/api/AdError;->code:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u5931\u8d25......onFail  result:"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p5}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;

    invoke-direct {p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;-><init>()V

    iput p3, p5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;->f:J

    iput-object p4, p5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;->g:Lcom/bytedance/msdk/api/AdError;

    if-eqz p6, :cond_1

    invoke-interface {p6, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;)V

    :cond_1
    return-void
.end method

.method private a(JLcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;ILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V
    .locals 15

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u8fd4\u56de............."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTMediationSDK"

    invoke-static {v3, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p1

    const/4 v2, 0x1

    const/4 v6, 0x2

    if-eqz v0, :cond_5

    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->d()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->d()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;

    invoke-direct {v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    iput v9, v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;->h:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "winners : {"

    invoke-static {v10}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->h()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    move-result-object v12

    const-string v13, " [ AdnName:"

    invoke-static {v13}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",slotId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",loadSort:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->p()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",showSort:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->y()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v7, "}"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v6, p5

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u5931\u8d25......\uff1a\u6570\u636e\u6709\u8fd4\u56de\uff0c\u4f46\u6ca1\u6709\u8fd4\u56dewinner\u6570\u636e......"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, p0

    goto/16 :goto_4

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u6210\u529f......\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v6, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->c()Ljava/util/List;

    move-result-object v7

    move-object v9, p0

    invoke-direct {p0, v7, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;->a(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u6210\u529f......waterfall+server bidding\u7269\u6599......"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u6210\u529f......server bidding\u7269\u6599......"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_2
    iput-object v6, v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;->a:Ljava/util/List;

    move v6, v0

    goto :goto_4

    :cond_5
    move-object v9, p0

    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v6, p5

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u5931\u8d25......\u6ca1\u6709\u8fd4\u56deserverBiddingModel\u76f8\u5173\u6570\u636e"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_4
    if-eqz p6, :cond_c

    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v8, :cond_7

    new-instance v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;

    invoke-direct {v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;-><init>()V

    move-object v8, v7

    :cond_7
    iput-object v0, v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;->c:Ljava/lang/String;

    :cond_8
    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u53d1\u73b0config\u8fc7\u671f\u4e86\uff0c\u9700\u8981\u91cd\u65b0\u62c9\u53d6\u914d\u7f6e......\uff1a"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_9

    new-instance v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;

    invoke-direct {v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;-><init>()V

    :cond_9
    iput-boolean v2, v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;->b:Z

    :cond_a
    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez v8, :cond_b

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;-><init>()V

    move-object v8, v0

    :cond_b
    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;->d:Ljava/util/List;

    :cond_c
    if-nez v8, :cond_d

    new-instance v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;

    invoke-direct {v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;-><init>()V

    :cond_d
    iput v6, v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;->e:I

    iput-wide v4, v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;->f:J

    if-eqz v1, :cond_e

    invoke-interface {v1, v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;)V

    :cond_e
    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;JILcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;->a(JILcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;JLcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;ILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;->a(JLcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;ILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JLcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V
    .locals 9
    .param p6    # Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;

    move-result-object v0

    new-instance v8, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;JLcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V

    invoke-virtual {v0, p1, v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;)V

    return-void
.end method

.method public a(Ljava/util/Map;Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V
    .locals 16
    .param p4    # Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;",
            ">;",
            "Landroid/content/Context;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v4, p3

    if-eqz v4, :cond_1

    iget-object v0, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->a:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->b:Ljava/util/List;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->a:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u542fserver bidding\u7f51\u7edc\u8bf7\u6c42......\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->a:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v1, v5, v0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;

    move-result-object v7

    iget-object v9, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->a:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v10, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->b:Ljava/util/List;

    iget-object v11, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->c:Ljava/util/List;

    iget-object v12, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    iget v13, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->e:I

    iget-boolean v14, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;->f:Z

    new-instance v15, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$a;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;JLbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/b;[ILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V

    move-object v6, v7

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v6 .. v15}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;IZLbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;)V

    const/16 v0, 0x3d

    const/16 v1, 0x3d

    :pswitch_0
    const/16 v2, 0x55

    const/16 v3, 0x5d

    :goto_1
    const/16 v4, 0x1b

    packed-switch v2, :pswitch_data_0

    goto :goto_6

    :goto_2
    :pswitch_1
    packed-switch v3, :pswitch_data_1

    goto :goto_4

    :goto_3
    :pswitch_2
    packed-switch v1, :pswitch_data_2

    const/16 v1, 0x1b

    goto :goto_3

    :goto_4
    const/16 v3, 0x27

    goto :goto_2

    :pswitch_3
    if-ge v3, v4, :cond_3

    :pswitch_4
    if-le v1, v0, :cond_2

    :goto_5
    nop

    goto :goto_5

    :cond_2
    :pswitch_5
    return-void

    :cond_3
    :goto_6
    :pswitch_6
    const/16 v2, 0x54

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_5
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
