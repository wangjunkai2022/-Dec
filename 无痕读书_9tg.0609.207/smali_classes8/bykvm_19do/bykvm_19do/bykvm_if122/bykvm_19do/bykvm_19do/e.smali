.class public abstract Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/f;
.source "TTInterBlockingManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;)V
    .locals 0

    .line 2
    invoke-super {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S()V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;Lcom/bytedance/msdk/api/AdError;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method private e0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->A()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 4
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pangle"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private f0()Lcom/bytedance/msdk/api/AdError;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getShallowCopy(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v0

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setLinkedId(Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/bytedance/msdk/api/error/AdBreakError;

    const v3, 0x9c6f

    invoke-static {v3}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/msdk/api/error/AdBreakError;-><init>(ILjava/lang/String;)V

    .line 5
    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->j()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 7
    invoke-static {v0, v4, v6, v5, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 8
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdError;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    return-object v1
.end method

.method private g0()Lcom/bytedance/msdk/api/AdError;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getShallowCopy(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v0

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setLinkedId(Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/bytedance/msdk/api/error/AdBreakError;

    const v3, 0x9c70

    invoke-static {v3}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/msdk/api/error/AdBreakError;-><init>(ILjava/lang/String;)V

    .line 5
    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->j()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 7
    invoke-static {v0, v4, v6, v5, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 8
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdError;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public S()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e$b;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnThreadPool(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S()V

    :goto_0
    return-void
.end method

.method public d0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;->g0()Lcom/bytedance/msdk/api/AdError;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;->f0()Lcom/bytedance/msdk/api/AdError;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e$a;

    invoke-direct {v1, p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;Lcom/bytedance/msdk/api/AdError;)V

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
