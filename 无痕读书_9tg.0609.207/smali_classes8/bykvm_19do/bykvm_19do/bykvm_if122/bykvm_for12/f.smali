.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;
.super Landroid/os/HandlerThread;
.source "AdEventThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;,
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;",
        ">",
        "Landroid/os/HandlerThread;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:J

.field public f:Z

.field public g:I

.field public h:Landroid/os/Handler;

.field public final i:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;

.field public final j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

.field public k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a<",
            "TT;>;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a<",
            "TT;>;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;",
            ")V"
        }
    .end annotation

    const-string v0, "gm_t_adevent_"

    .line 1
    invoke-static {v0, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x4

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const-string v0, "AdEventThread-\u3010"

    .line 2
    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a:Ljava/lang/String;

    const-string v2, "\u3011"

    invoke-static {v0, v1, p1, v2}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a:Ljava/lang/String;

    const-string v0, "V3"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->k:Z

    const-string v0, "tag="

    .line 5
    invoke-static {v0, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 6
    iput-object p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    .line 7
    iput-object p5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->i:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;

    .line 8
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    .line 9
    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    .line 10
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 3

    .line 20
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(ILjava/util/List;)V

    .line 21
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private a(IJ)V
    .locals 1

    .line 22
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 23
    iput p1, v0, Landroid/os/Message;->what:I

    .line 24
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(ILjava/lang/Object;)V

    .line 12
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    if-eqz v0, :cond_0

    const-string p1, "\u5982\u679c\u5728\u5bb9\u707e\u72b6\u6001\uff0c\u76f4\u63a5\u8fd4\u56de.......mIsServerBusy="

    .line 13
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "onHandleReceivedAdEvent"

    .line 14
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/util/List;)V

    .line 17
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onHandleReceivedAdEvent upload"

    .line 18
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f()V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->a()I

    move-result v0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    const-string v1, "start and return, checkAndDeleteEvent local size:"

    .line 3
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u5c0f\u4e8e:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v0, "start checkAndDeleteEvent local size,deleteCnt:"

    .line 5
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end checkAndDeleteEvent local size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->d:Z

    return p0
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    .line 11
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(IZ)V

    .line 12
    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g:I

    .line 13
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(II)V

    .line 14
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;

    .line 4
    invoke-interface {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;

    .line 6
    invoke-interface {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    const-string p1, "reloadCacheList adEventList is empty======"

    .line 8
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public static b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;)Z
    .locals 1

    .line 9
    iget p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->b:I

    const/16 v0, 0x1fd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Ljava/util/List;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->e()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-interface {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;->a(Ljava/util/List;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .locals 3

    .line 5
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget-wide v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->b:J

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(IJ)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(IJ)V

    return-void
.end method

.method private e()V
    .locals 3

    const-string v0, "\u666e\u901a\u5931\u8d25 \uff0c\u89e6\u53d1\u91cd\u8bd5\u673a\u5236\uff1a"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget-wide v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u6beb\u79d2\u540e \u91cd\u8bd5....."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget-wide v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->c:J

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(IJ)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/w;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->e:J

    .line 5
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->c()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->i:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;

    invoke-interface {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "doRoutineUpload no net, wait retry"

    .line 7
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->e()V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->c(Ljava/util/List;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    iget-boolean v1, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->a:Z

    if-eqz v1, :cond_2

    const-string v0, "doRoutineUpload success: "

    .line 11
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a()V

    .line 13
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->o()V

    .line 14
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->p()V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "doRoutineUpload serverbusy"

    .line 16
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->i()V

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u670d\u52a1\u7aef\u8fd4\u56dedata error \u629b\u5f03\u6570\u636e , \u6e05\u7a7a\u672c\u6b21\u65e5\u5fd7\uff0c\u91cd\u7f6e\u4e0a\u4f20\u72b6\u6001...."

    .line 19
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a()V

    .line 21
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->o()V

    goto :goto_0

    .line 22
    :cond_4
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    if-nez v0, :cond_5

    .line 23
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->e()V

    const-string v0, "doRoutineUpload net fail retry"

    .line 24
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private g()J
    .locals 4

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g:I

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget-wide v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->f:J

    mul-long v0, v0, v2

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u670d\u52a1\u5668\u7e41\u5fd9\uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\u6beb\u79d2\u540e\u8fdb\u884c\u91cd\u8bd5,\u5f53\u524d\u91cd\u8bd5\u6b21\u6570\uff1amServerBusyRetryCount="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0cmServerBusyRetryBaseInternal="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget-wide v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->f:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g:I

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget-wide v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->f:J

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private h()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(IZ)V

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d()V

    return-void
.end method

.method private j()Z
    .locals 5

    const-string v0, "mCacheList.size():"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mPolicy.mMaxCacheCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",System.currentTimeMillis() - mLastSuccessUploadTime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->e:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mPolicy.mMaxCacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget-wide v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->e:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget-wide v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->b:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()V
    .locals 5

    const-string v0, "onHandleInitEvent \u521d\u59cb\u5316\u65e5\u5fd7\u7ec4\u4ef6.....\u7ebf\u7a0b\u4f18\u5148\u7ea7\uff1a"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->d:I

    iget-wide v3, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->e:J

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(IIJ)V

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v1

    invoke-interface {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v1

    invoke-interface {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->b(I)I

    move-result v0

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g:I

    .line 5
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "onHandleInitEvent serverBusy, retryCount = "

    .line 6
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d()V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->a()I

    move-result v2

    const-string v3, "_id"

    invoke-interface {v0, v1, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/bytedance/msdk/adapter/util/Logger;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b(Ljava/util/List;)V

    const-string v0, "onHandleInitEvent cacheData count = "

    .line 12
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f()V

    :goto_1
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5982\u679c\u5728\u5bb9\u707e\u72b6\u6001\uff0c\u76f4\u63a5\u8fd4\u56de, \u5b89\u5168\u8d77\u89c1\u8fd9\u91cc\u5224\u65ad\u4e00\u4e0b,mIsServerBusy="

    .line 2
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "onHandleRoutineRetryEvent"

    .line 3
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f()V

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5982\u679c\u5728\u5bb9\u707e\u72b6\u6001\uff0c\u76f4\u63a5\u8fd4\u56de, \u5b89\u5168\u8d77\u89c1\u8fd9\u91cc\u5224\u65ad\u4e00\u4e0b,mIsServerBusy="

    .line 2
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "onHandleRoutineUploadEvent"

    .line 3
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->f()V

    return-void
.end method

.method private n()V
    .locals 10

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->i:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;

    invoke-interface {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget-wide v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->c:J

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(IJ)V

    const-string v0, "onHandleServerBusyRetryEvent, no net"

    .line 3
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->a()I

    move-result v2

    const-string v3, "_id"

    invoke-interface {v0, v1, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(IILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 5
    invoke-direct {p0, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/util/List;)V

    const-string v0, "\u6570\u636e\u5e93\u67e5\u8be2\u51fa\u6765\u7684size="

    .line 6
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 7
    invoke-static {v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/w;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onHandleServerBusyRetryEvent, empty list start routine"

    .line 8
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b()V

    .line 10
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->c()V

    return-void

    .line 11
    :cond_2
    invoke-direct {p0, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->c(Ljava/util/List;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 12
    iget-boolean v1, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->a:Z

    if-eqz v1, :cond_3

    const-string v0, "onHandleServerBusyRetryEvent, success"

    .line 13
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a()V

    .line 15
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->o()V

    .line 16
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->p()V

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g:I

    .line 19
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v1

    iget v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g:I

    invoke-interface {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(II)V

    .line 20
    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v5

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    iget v7, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->d:I

    iget-wide v8, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->e:J

    invoke-interface/range {v4 .. v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(ILjava/util/List;IJ)V

    .line 21
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d()V

    const-string v0, "onHandleServerBusyRetryEvent, serverbusy, count = "

    .line 22
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "onHandleServerBusyRetryEvent, ---\u300b data Error\u76f4\u63a5\u629b\u5f03\u6570\u636e "

    .line 24
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a()V

    .line 26
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->o()V

    goto :goto_1

    .line 27
    :cond_5
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->e()V

    const-string v0, "onHandleServerBusyRetryEvent, net fail"

    .line 28
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->e:J

    .line 2
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b()V

    .line 3
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->c()V

    return-void
.end method

.method private p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->j:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->a()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    .line 2
    :cond_0
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h()I

    move-result v3

    const-string v4, "_id"

    invoke-interface {v2, v3, v0, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;->a(IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "\uff09\uff0c\u505c\u6b62\u4e0a\u4f20\uff0c\u7b49\u5f85\u65b0\u4ea7\u751f\u7684\u4e8b\u4ef6"

    if-eqz v2, :cond_2

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4
    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v4, "\u6570\u636e\u5e93\u65e5\u5fd7\u6570\u91cf: "

    if-lt v2, v0, :cond_1

    .line 6
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \u5927\u4e8e\u7b49\u4e8ebatchSize/2\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff09\uff0c\u7ee7\u7eed\u4e0a\u4f20."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \u5c0f\u4e8ebatchSize/2\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "\u6570\u636e\u5e93\u65e5\u5fd7\u6570\u91cf: 0, \u5c0f\u4e8ebatchSize/2\uff08"

    .line 10
    invoke-static {v1, v0, v3}, Lcom/apk/goto;->instanceof(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->k()V

    goto :goto_0

    :cond_1
    const-string p1, "\u89e6\u53d1\u670d\u52a1\u5668\u7e41\u5fd9\u91cd\u8bd5\u673a\u5236....."

    .line 3
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->n()V

    goto :goto_0

    :cond_2
    const-string p1, "routine\u89e6\u53d1\u5931\u8d25\u91cd\u8bd5....."

    .line 5
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->l()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->m()V

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;)V

    :goto_0
    return v1
.end method

.method public onLooperPrepared()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->e:J

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f;->h:Landroid/os/Handler;

    return-void
.end method
