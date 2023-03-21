.class public final Lcom/apk/lg0;
.super Ljava/lang/Object;
.source "Dispatcher.kt"


# instance fields
.field public final case:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/apk/xh0;",
            ">;"
        }
    .end annotation
.end field

.field public do:I

.field public for:Ljava/util/concurrent/ExecutorService;

.field public if:I

.field public final new:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/apk/xh0$do;",
            ">;"
        }
    .end annotation
.end field

.field public final try:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/apk/xh0$do;",
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
    iput v0, p0, Lcom/apk/lg0;->do:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/apk/lg0;->if:I

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/apk/lg0;->new:Ljava/util/ArrayDeque;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/apk/lg0;->try:Ljava/util/ArrayDeque;

    .line 6
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/apk/lg0;->case:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final do(Ljava/util/Deque;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    monitor-exit p0

    .line 4
    invoke-virtual {p0}, Lcom/apk/lg0;->for()Z

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
.end method

.method public final for()Z
    .locals 15

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Thread "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/apk/lg0;->new:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "readyAsyncCalls.iterator()"

    invoke-static {v1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/xh0$do;

    .line 8
    iget-object v3, p0, Lcom/apk/lg0;->try:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    iget v4, p0, Lcom/apk/lg0;->do:I

    if-lt v3, v4, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    iget-object v3, v2, Lcom/apk/xh0$do;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lcom/apk/lg0;->if:I

    if-lt v3, v4, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 12
    iget-object v3, v2, Lcom/apk/xh0$do;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v3, "asyncCall"

    .line 14
    invoke-static {v2, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v3, p0, Lcom/apk/lg0;->try:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    :goto_2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 17
    :try_start_1
    iget-object v1, p0, Lcom/apk/lg0;->try:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget-object v2, p0, Lcom/apk/lg0;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/2addr v1, v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v2, 0x0

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 18
    :goto_3
    monitor-exit p0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_a

    .line 20
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apk/xh0$do;

    .line 21
    monitor-enter p0

    .line 22
    :try_start_3
    iget-object v6, p0, Lcom/apk/lg0;->for:Ljava/util/concurrent/ExecutorService;

    if-nez v6, :cond_6

    .line 23
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const-wide/16 v10, 0x3c

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    new-instance v13, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v13}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/apk/jh0;->this:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " Dispatcher"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "name"

    .line 25
    invoke-static {v7, v14}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v14, Lcom/apk/ih0;

    invoke-direct {v14, v7, v2}, Lcom/apk/ih0;-><init>(Ljava/lang/String;Z)V

    move-object v7, v6

    .line 27
    invoke-direct/range {v7 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v6, p0, Lcom/apk/lg0;->for:Ljava/util/concurrent/ExecutorService;

    .line 28
    :cond_6
    iget-object v6, p0, Lcom/apk/lg0;->for:Ljava/util/concurrent/ExecutorService;

    invoke-static {v6}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    if-eqz v5, :cond_9

    const-string v7, "executorService"

    .line 29
    invoke-static {v6, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v7, v5, Lcom/apk/xh0$do;->for:Lcom/apk/xh0;

    .line 31
    iget-object v7, v7, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 32
    iget-object v7, v7, Lcom/apk/xg0;->do:Lcom/apk/lg0;

    .line 33
    sget-boolean v8, Lcom/apk/jh0;->goto:Z

    if-eqz v8, :cond_8

    invoke-static {v7}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_5

    .line 34
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Thread "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 35
    :cond_8
    :goto_5
    :try_start_4
    invoke-interface {v6, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v6

    .line 36
    :try_start_5
    new-instance v7, Ljava/io/InterruptedIOException;

    const-string v8, "executor rejected"

    invoke-direct {v7, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v7, v6}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 38
    iget-object v6, v5, Lcom/apk/xh0$do;->for:Lcom/apk/xh0;

    invoke-virtual {v6, v7}, Lcom/apk/xh0;->catch(Ljava/io/IOException;)Ljava/io/IOException;

    .line 39
    iget-object v6, v5, Lcom/apk/xh0$do;->if:Lcom/apk/ag0;

    iget-object v8, v5, Lcom/apk/xh0$do;->for:Lcom/apk/xh0;

    invoke-interface {v6, v8, v7}, Lcom/apk/ag0;->new(Lcom/apk/zf0;Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 40
    iget-object v6, v5, Lcom/apk/xh0$do;->for:Lcom/apk/xh0;

    .line 41
    iget-object v6, v6, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 42
    iget-object v6, v6, Lcom/apk/xg0;->do:Lcom/apk/lg0;

    .line 43
    invoke-virtual {v6, v5}, Lcom/apk/lg0;->if(Lcom/apk/xh0$do;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :goto_7
    iget-object v1, v5, Lcom/apk/xh0$do;->for:Lcom/apk/xh0;

    .line 44
    iget-object v1, v1, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 45
    iget-object v1, v1, Lcom/apk/xg0;->do:Lcom/apk/lg0;

    .line 46
    invoke-virtual {v1, v5}, Lcom/apk/lg0;->if(Lcom/apk/xh0$do;)V

    throw v0

    :cond_9
    const/4 v0, 0x0

    .line 47
    throw v0

    :catchall_1
    move-exception v0

    .line 48
    monitor-exit p0

    throw v0

    :cond_a
    return v1

    :catchall_2
    move-exception v0

    .line 49
    :try_start_6
    monitor-exit p0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    .line 50
    monitor-exit p0

    throw v0
.end method

.method public final if(Lcom/apk/xh0$do;)V
    .locals 1
    .param p1    # Lcom/apk/xh0$do;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/apk/xh0$do;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    iget-object v0, p0, Lcom/apk/lg0;->try:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0, p1}, Lcom/apk/lg0;->do(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void
.end method
