.class public final Lcom/apk/hl0;
.super Ljava/lang/Object;
.source "SegmentPool.kt"


# static fields
.field public static final do:Lcom/apk/gl0;

.field public static final for:[Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/apk/gl0;",
            ">;"
        }
    .end annotation
.end field

.field public static final if:I

.field public static final new:Lcom/apk/hl0;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/apk/hl0;

    invoke-direct {v0}, Lcom/apk/hl0;-><init>()V

    sput-object v0, Lcom/apk/hl0;->new:Lcom/apk/hl0;

    .line 2
    new-instance v0, Lcom/apk/gl0;

    const/4 v7, 0x0

    new-array v2, v7, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/apk/gl0;-><init>([BIIZZ)V

    sput-object v0, Lcom/apk/hl0;->do:Lcom/apk/gl0;

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    sput v0, Lcom/apk/hl0;->if:I

    .line 4
    new-array v1, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    if-ge v7, v0, :cond_0

    .line 5
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/apk/hl0;->for:[Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final do(Lcom/apk/gl0;)V
    .locals 8
    .param p0    # Lcom/apk/gl0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "segment"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/gl0;->else:Lcom/apk/gl0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    iget-boolean v0, p0, Lcom/apk/gl0;->new:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v2, "Thread.currentThread()"

    invoke-static {v0, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    sget v0, Lcom/apk/hl0;->if:I

    int-to-long v4, v0

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    and-long/2addr v2, v4

    long-to-int v0, v2

    .line 4
    sget-object v2, Lcom/apk/hl0;->for:[Ljava/util/concurrent/atomic/AtomicReference;

    aget-object v0, v2, v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/gl0;

    .line 6
    sget-object v3, Lcom/apk/hl0;->do:Lcom/apk/gl0;

    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    if-eqz v2, :cond_3

    .line 7
    iget v3, v2, Lcom/apk/gl0;->for:I

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_4

    return-void

    .line 8
    :cond_4
    iput-object v2, p0, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    .line 9
    iput v1, p0, Lcom/apk/gl0;->if:I

    add-int/lit16 v3, v3, 0x2000

    .line 10
    iput v3, p0, Lcom/apk/gl0;->for:I

    .line 11
    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    :cond_5
    return-void

    .line 12
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final if()Lcom/apk/gl0;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget v2, Lcom/apk/hl0;->if:I

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    long-to-int v1, v0

    .line 2
    sget-object v0, Lcom/apk/hl0;->for:[Ljava/util/concurrent/atomic/AtomicReference;

    aget-object v0, v0, v1

    .line 3
    sget-object v1, Lcom/apk/hl0;->do:Lcom/apk/gl0;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/gl0;

    .line 4
    sget-object v2, Lcom/apk/hl0;->do:Lcom/apk/gl0;

    if-ne v1, v2, :cond_0

    .line 5
    new-instance v0, Lcom/apk/gl0;

    invoke-direct {v0}, Lcom/apk/gl0;-><init>()V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lcom/apk/gl0;

    invoke-direct {v0}, Lcom/apk/gl0;-><init>()V

    return-object v0

    .line 8
    :cond_1
    iget-object v3, v1, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    iput-object v2, v1, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    const/4 v0, 0x0

    .line 10
    iput v0, v1, Lcom/apk/gl0;->for:I

    return-object v1
.end method
