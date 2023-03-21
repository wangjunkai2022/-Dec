.class public Lcom/apk/az;
.super Ljava/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/az$if;,
        Lcom/apk/az$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/concurrent/locks/Condition;

.field public final do:I

.field public final else:Ljava/util/concurrent/locks/ReentrantLock;

.field public transient for:Lcom/apk/az$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/az<",
            "TE;>.if<TE;>;"
        }
    .end annotation
.end field

.field public final goto:Ljava/util/concurrent/locks/Condition;

.field public final if:Ljava/util/concurrent/atomic/AtomicInteger;

.field public transient new:Lcom/apk/az$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/az<",
            "TE;>.if<TE;>;"
        }
    .end annotation
.end field

.field public final try:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/apk/az;->try:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/az;->case:Ljava/util/concurrent/locks/Condition;

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/apk/az;->else:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/az;->goto:Ljava/util/concurrent/locks/Condition;

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Lcom/apk/az;->do:I

    .line 8
    new-instance v0, Lcom/apk/az$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apk/az$if;-><init>(Lcom/apk/az;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    iput-object v0, p0, Lcom/apk/az;->new:Lcom/apk/az$if;

    return-void
.end method


# virtual methods
.method public case(Lcom/apk/az$if;Lcom/apk/az$if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/az<",
            "TE;>.if<TE;>;",
            "Lcom/apk/az<",
            "TE;>.if<TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/apk/az$if;->if(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    iput-object v0, p2, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    .line 3
    iget-object v0, p0, Lcom/apk/az;->new:Lcom/apk/az$if;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lcom/apk/az;->new:Lcom/apk/az$if;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    iget p2, p0, Lcom/apk/az;->do:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/apk/az;->goto:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/az;->do()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    :goto_0
    iget-object v1, v0, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, v0, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, v0}, Lcom/apk/az$if;->if(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/az;->new:Lcom/apk/az$if;

    iput-object v0, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    .line 6
    iget-object v0, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/apk/az;->do:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/apk/az;->goto:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/apk/az;->if()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/apk/az;->if()V

    .line 8
    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/apk/az;->do()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    :cond_1
    iget-object v1, v1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/apk/az$if;->do()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0}, Lcom/apk/az;->if()V

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/apk/az;->if()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/apk/az;->if()V

    .line 5
    throw p1
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/az;->else:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/apk/az;->try:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/az;->drainTo(Ljava/util/Collection;I)I

    move-result p1

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-eq p1, p0, :cond_6

    const/4 v1, 0x0

    if-gtz p2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/apk/az;->try:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5
    iget-object v3, p0, Lcom/apk/az;->for:Lcom/apk/az$if;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, p2, :cond_2

    .line 6
    :try_start_1
    iget-object v6, v3, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    .line 7
    invoke-virtual {v6}, Lcom/apk/az$if;->do()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v6, v0}, Lcom/apk/az$if;->if(Ljava/lang/Object;)V

    .line 9
    iput-object v3, v3, Lcom/apk/az$if;->for:Lcom/apk/az$if;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    move-object v3, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    if-lez v4, :cond_1

    .line 10
    :try_start_2
    iput-object v3, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    .line 11
    iget-object p2, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v4

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p2

    iget v0, p0, Lcom/apk/az;->do:I

    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    .line 12
    :cond_1
    throw p1

    :cond_2
    if-lez v4, :cond_3

    .line 13
    iput-object v3, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    .line 14
    iget-object p1, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v4

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    iget v0, p0, Lcom/apk/az;->do:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v0, :cond_3

    const/4 v1, 0x1

    .line 15
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/apk/az;->try()V

    :cond_4
    return p2

    :catchall_1
    move-exception p1

    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/apk/az;->try()V

    .line 19
    :cond_5
    throw p1

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 21
    :cond_7
    throw v0
.end method

.method public final declared-synchronized for(Lcom/apk/az$if;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/az<",
            "TE;>.if<TE;>;)TE;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    .line 2
    iget-object v1, p1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    .line 3
    iput-object p1, p1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    .line 4
    iput-object v1, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    .line 5
    invoke-virtual {v1}, Lcom/apk/az$if;->do()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-virtual {v1, v0}, Lcom/apk/az$if;->if(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 8
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    .line 9
    :goto_0
    iget-object v2, v1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    if-eqz v2, :cond_2

    .line 10
    iget-object v3, v2, Lcom/apk/az$if;->if:Lcom/apk/bz;

    iget v3, v3, Lcom/apk/bz;->do:I

    iget-object v4, p1, Lcom/apk/az$if;->if:Lcom/apk/bz;

    iget v4, v4, Lcom/apk/bz;->do:I

    if-ge v3, v4, :cond_1

    .line 11
    iput-object p1, v1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    .line 12
    iput-object v2, p1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/apk/az;->new:Lcom/apk/az$if;

    iput-object p1, v1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    iput-object p1, p0, Lcom/apk/az;->new:Lcom/apk/az$if;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_3
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/az;->try:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2
    iget-object v0, p0, Lcom/apk/az;->else:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/az$do;

    invoke-direct {v0, p0}, Lcom/apk/az$do;-><init>(Lcom/apk/az;)V

    return-object v0
.end method

.method public final new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/az;->try:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/apk/az;->case:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw v1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/apk/az;->do:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, -0x1

    .line 18
    new-instance v2, Lcom/apk/az$if;

    invoke-direct {v2, p0, p1}, Lcom/apk/az$if;-><init>(Lcom/apk/az;Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/apk/az;->else:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 21
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/apk/az;->do:I

    if-ge v4, v5, :cond_1

    .line 22
    invoke-virtual {p0, v2}, Lcom/apk/az;->for(Lcom/apk/az$if;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 24
    iget v2, p0, Lcom/apk/az;->do:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/apk/az;->goto:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v1, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/apk/az;->new()V

    :cond_2
    if-ltz v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    :catchall_0
    move-exception v0

    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    throw v0

    :cond_4
    const/4 p1, 0x0

    .line 29
    throw p1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    .line 2
    iget-object p4, p0, Lcom/apk/az;->else:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    iget-object v0, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/apk/az;->do:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 7
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/apk/az;->goto:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lcom/apk/az$if;

    invoke-direct {p2, p0, p1}, Lcom/apk/az$if;-><init>(Lcom/apk/az;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/apk/az;->for(Lcom/apk/az$if;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 10
    iget p3, p0, Lcom/apk/az;->do:I

    if-ge p2, p3, :cond_2

    iget-object p2, p0, Lcom/apk/az;->goto:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_2
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/apk/az;->new()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 15
    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/az;->try:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    iget-object v2, v2, Lcom/apk/az$if;->for:Lcom/apk/az$if;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 6
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/apk/az$if;->do()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, -0x1

    .line 17
    iget-object v3, p0, Lcom/apk/az;->try:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 19
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_1

    .line 20
    invoke-virtual {p0, v2}, Lcom/apk/az;->for(Lcom/apk/az$if;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/apk/az;->case:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    iget v0, p0, Lcom/apk/az;->do:I

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/apk/az;->try()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 25
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 2
    iget-object p3, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iget-object v0, p0, Lcom/apk/az;->try:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .line 7
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/apk/az;->case:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Lcom/apk/az;->for(Lcom/apk/az$if;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    .line 10
    iget-object p3, p0, Lcom/apk/az;->case:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12
    iget p3, p0, Lcom/apk/az;->do:I

    if-ne p2, p3, :cond_3

    invoke-virtual {p0}, Lcom/apk/az;->try()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    throw p1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    new-instance v0, Lcom/apk/az$if;

    invoke-direct {v0, p0, p1}, Lcom/apk/az$if;-><init>(Lcom/apk/az;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/az;->else:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    iget-object v1, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lcom/apk/az;->do:I

    if-ne v2, v3, :cond_0

    .line 6
    iget-object v2, p0, Lcom/apk/az;->goto:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/apk/az;->for(Lcom/apk/az$if;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 9
    iget v2, p0, Lcom/apk/az;->do:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/apk/az;->goto:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/apk/az;->new()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    throw v0

    :cond_3
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method public remainingCapacity()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/az;->do:I

    iget-object v1, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/apk/az;->do()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    :cond_1
    iget-object v2, v1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/apk/az$if;->do()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/apk/az;->case(Lcom/apk/az$if;Lcom/apk/az$if;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0}, Lcom/apk/az;->if()V

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/apk/az;->if()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/apk/az;->if()V

    .line 6
    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    iget-object v1, p0, Lcom/apk/az;->try:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/apk/az;->case:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v2}, Lcom/apk/az;->for(Lcom/apk/az$if;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/apk/az;->case:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    iget v1, p0, Lcom/apk/az;->do:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/apk/az;->try()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12
    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/apk/az;->do()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    iget-object v2, v2, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    :goto_0
    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 5
    invoke-virtual {v2}, Lcom/apk/az$if;->do()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 6
    iget-object v2, v2, Lcom/apk/az$if;->for:Lcom/apk/az$if;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/apk/az;->if()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/apk/az;->if()V

    .line 8
    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/apk/az;->do()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/apk/az;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 11
    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lcom/apk/az;->for:Lcom/apk/az$if;

    iget-object v1, v1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 13
    invoke-virtual {v1}, Lcom/apk/az$if;->do()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v0

    .line 14
    iget-object v1, v1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    move v0, v2

    goto :goto_0

    .line 15
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/apk/az;->if()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/apk/az;->if()V

    .line 17
    throw p1
.end method

.method public final try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/az;->else:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/apk/az;->goto:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw v1
.end method
