.class public Lcom/bytedance/sdk/openadsdk/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/b/a$a;
    }
.end annotation


# static fields
.field public static volatile b:Lcom/bytedance/sdk/openadsdk/b/a;


# instance fields
.field public volatile a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/a$a;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/b/a$a;-><init>()V

    new-instance v8, Lcom/bytedance/sdk/openadsdk/b/a$1;

    invoke-direct {v8, p0}, Lcom/bytedance/sdk/openadsdk/b/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/a;)V

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0x5

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lcom/bytedance/sdk/openadsdk/b/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/b/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/a;->b:Lcom/bytedance/sdk/openadsdk/b/a;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/bytedance/sdk/openadsdk/b/a;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/b/a;->b:Lcom/bytedance/sdk/openadsdk/b/a;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/a;->b:Lcom/bytedance/sdk/openadsdk/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
