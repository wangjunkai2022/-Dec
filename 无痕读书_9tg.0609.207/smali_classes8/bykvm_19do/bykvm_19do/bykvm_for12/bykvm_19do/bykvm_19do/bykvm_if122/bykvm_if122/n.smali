.class public final Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 2
    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->a:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->b:I

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->e:Ljava/util/Deque;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->f:Ljava/util/Deque;

    .line 6
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->g:Ljava/util/Deque;

    return-void
.end method

.method private a(Ljava/util/Deque;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;Z)V"
        }
    .end annotation

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    .line 15
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->c()V

    .line 16
    :cond_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->b()I

    move-result p1

    .line 17
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->c:Ljava/lang/Runnable;

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 19
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    .line 20
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private c(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;)I
    .locals 4

    .line 10
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;

    .line 11
    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->a:I

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;

    .line 5
    invoke-direct {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->c(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;)I

    move-result v2

    iget v3, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->b:I

    if-ge v2, v3, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->f:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    :cond_3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->f:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget v2, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->a:I

    if-lt v1, v2, :cond_2

    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Dispatcher"

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/bykvm_19do/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->d:Ljava/util/concurrent/ExecutorService;

    .line 4
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 5
    :try_start_0
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->a:I

    .line 6
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;)V
    .locals 2

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->a:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->c(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;)I

    move-result v0

    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->b:I

    if-ge v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->f:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x;)V
    .locals 1

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->g:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()I
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->g:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->f:Ljava/util/Deque;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    return-void
.end method

.method public b(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/x;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->g:Ljava/util/Deque;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/n;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    return-void
.end method
