.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;
.super Ljava/lang/Object;
.source "GroMoreEventUploadImpl.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/c;


# instance fields
.field public a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;Ljava/util/List;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;->a(Ljava/util/List;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;)",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;"
        }
    .end annotation

    .line 30
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->e()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 32
    :cond_0
    :goto_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_1
    invoke-interface {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;->a(Ljava/util/List;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "event_extra"

    if-eqz p1, :cond_1

    .line 22
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "size"

    .line 25
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p2, "batchId"

    .line 26
    :try_start_2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p2, "batchIndex"

    .line 27
    :try_start_3
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p2, "preEventId"

    if-eqz p6, :cond_0

    :try_start_4
    const-string p3, "event_id"

    .line 28
    invoke-virtual {p6, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_0
    const-string p3, "-1"

    :goto_0
    :try_start_5
    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private b(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V
    .locals 8

    const-string v0, "params"

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v7, p1

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;->a(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;)V
    .locals 15
    .param p2    # Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;",
            ">;",
            "Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    if-eqz v0, :cond_3

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v8, v3

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;

    .line 6
    invoke-interface {v13}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;->d()Lorg/json/JSONObject;

    move-result-object v14

    .line 7
    invoke-interface {v13}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;->e()B

    move-result v2

    .line 8
    invoke-interface {v13}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;->b()B

    move-result v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move-object v2, p0

    move-object v3, v14

    move-wide v5, v9

    move v7, v12

    invoke-direct/range {v2 .. v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;->b(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V

    .line 10
    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/i;

    invoke-interface {v13}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v14}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/i;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-ne v2, v4, :cond_1

    if-nez v3, :cond_1

    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move-object v2, p0

    move-object v3, v14

    move-wide v5, v9

    move v7, v12

    invoke-direct/range {v2 .. v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;->a(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V

    .line 13
    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;

    invoke-interface {v13}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v14}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "not_v1v3"

    .line 16
    invoke-virtual {v2, v3, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "batchId"

    .line 17
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "batchIndex"

    .line 18
    :try_start_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move-object v8, v14

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 21
    invoke-static {}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->getLogUploadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;

    move-object v4, p0

    move-object/from16 v5, p2

    invoke-direct {v3, p0, v1, v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    move-object v4, p0

    :goto_2
    return-void
.end method
