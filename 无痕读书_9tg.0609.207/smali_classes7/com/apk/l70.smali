.class public Lcom/apk/l70;
.super Ljava/lang/Object;
.source "GdtProviderReward.java"

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/m70;

.field public final synthetic if:Lcom/apk/z60;


# direct methods
.method public constructor <init>(Lcom/apk/m70;Ljava/lang/String;Lcom/apk/z60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    iput-object p2, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/l70;->if:Lcom/apk/z60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/l70;->if:Lcom/apk/z60;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->catch(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onADClose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/l70;->if:Lcom/apk/z60;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->import(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onADExpose()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/l70;->if:Lcom/apk/z60;

    if-eqz v0, :cond_2

    const-string v0, "\u6fc0\u52b1\u89c6\u9891_"

    const-string v3, "_onExpose"

    .line 4
    invoke-static {v0, v1, v3}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lcom/apk/z60;->do()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6
    throw v0
.end method

.method public onADLoad()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    iget-object v1, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/l70;->if:Lcom/apk/z60;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->finally(Ljava/lang/String;Lcom/apk/z60;)V

    .line 6
    iget-object v3, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    iget-object v4, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    iget-object v8, p0, Lcom/apk/l70;->if:Lcom/apk/z60;

    const-wide/16 v5, 0x1f40

    const/4 v7, 0x1

    .line 7
    invoke-virtual/range {v3 .. v8}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    return-void
.end method

.method public onADShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/h70;->l()V

    .line 4
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    iget-object v1, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/l70;->if:Lcom/apk/z60;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->volatile(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onError(Lcom/qq/e/comm/util/AdError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 4
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/l70;->if:Lcom/apk/z60;

    .line 5
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apk/e70;->new(ILjava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    .line 2
    iget-boolean v0, p1, Lcom/apk/f70;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/l70;->if:Lcom/apk/z60;

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/apk/e70;->a(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onVideoCached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/apk/f70;->new:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/apk/f70;->f()V

    .line 5
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    iget-object v1, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/l70;->if:Lcom/apk/z60;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->c(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/l70;->for:Lcom/apk/m70;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/l70;->do:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/e70;->d(Ljava/lang/String;)V

    return-void
.end method
