.class public final Lcom/apk/zl0;
.super Ljava/lang/Object;
.source "PendingPostQueue.java"


# instance fields
.field public do:Lcom/apk/yl0;

.field public if:Lcom/apk/yl0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized do(Lcom/apk/yl0;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/zl0;->if:Lcom/apk/yl0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/zl0;->if:Lcom/apk/yl0;

    iput-object p1, v0, Lcom/apk/yl0;->for:Lcom/apk/yl0;

    .line 3
    iput-object p1, p0, Lcom/apk/zl0;->if:Lcom/apk/yl0;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/zl0;->do:Lcom/apk/yl0;

    if-nez v0, :cond_1

    .line 5
    iput-object p1, p0, Lcom/apk/zl0;->if:Lcom/apk/yl0;

    iput-object p1, p0, Lcom/apk/zl0;->do:Lcom/apk/yl0;

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Head present, but no tail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized if()Lcom/apk/yl0;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/zl0;->do:Lcom/apk/yl0;

    .line 2
    iget-object v1, p0, Lcom/apk/zl0;->do:Lcom/apk/yl0;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/zl0;->do:Lcom/apk/yl0;

    iget-object v1, v1, Lcom/apk/yl0;->for:Lcom/apk/yl0;

    iput-object v1, p0, Lcom/apk/zl0;->do:Lcom/apk/yl0;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/apk/zl0;->if:Lcom/apk/yl0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
