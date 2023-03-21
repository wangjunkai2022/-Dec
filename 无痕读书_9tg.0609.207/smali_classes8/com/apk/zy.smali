.class public Lcom/apk/zy;
.super Ljava/lang/Object;
.source "DownloadThreadPool.java"


# static fields
.field public static final for:Ljava/util/concurrent/TimeUnit;


# instance fields
.field public do:I

.field public if:Lcom/apk/dz;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/apk/zy;->for:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/apk/zy;->do:I

    return-void
.end method


# virtual methods
.method public do()Lcom/apk/dz;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/apk/zy;->if:Lcom/apk/dz;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/zy;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/apk/zy;->if:Lcom/apk/dz;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/dz;

    iget v3, p0, Lcom/apk/zy;->do:I

    const/4 v4, 0x5

    const-wide/16 v5, 0x1

    sget-object v7, Lcom/apk/zy;->for:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/apk/az;

    invoke-direct {v8}, Lcom/apk/az;-><init>()V

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/apk/dz;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/apk/zy;->if:Lcom/apk/dz;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/zy;->if:Lcom/apk/dz;

    return-object v0
.end method
