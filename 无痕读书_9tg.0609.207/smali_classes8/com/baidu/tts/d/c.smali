.class public Lcom/baidu/tts/d/c;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Lcom/baidu/tts/j/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/d/c$a;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/baidu/tts/d/c;


# instance fields
.field public b:Lcom/baidu/tts/l/a;

.field public c:Lcom/baidu/tts/d/b/a;

.field public d:Lcom/baidu/tts/d/a/b;

.field public e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    .line 3
    new-instance v0, Lcom/baidu/tts/d/a/b;

    invoke-direct {v0}, Lcom/baidu/tts/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    return-void
.end method

.method public static a()Lcom/baidu/tts/d/c;
    .locals 2

    .line 2
    sget-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/baidu/tts/d/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/baidu/tts/d/c;

    invoke-direct {v1}, Lcom/baidu/tts/d/c;-><init>()V

    sput-object v1, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

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
    sget-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    return-object v0
.end method

.method public static synthetic a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/l/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/l/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    return-object p0
.end method

.method private declared-synchronized h()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/baidu/tts/client/model/DownloadHandler;)Lcom/baidu/tts/client/model/DownloadHandler;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Downloader"

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/baidu/tts/d/c$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/d/c$a;-><init>(Lcom/baidu/tts/d/c;Lcom/baidu/tts/client/model/DownloadHandler;)V

    .line 13
    invoke-direct {p0}, Lcom/baidu/tts/d/c;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/baidu/tts/client/model/DownloadHandler;->setCheckFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/baidu/tts/l/a;)V
    .locals 1

    .line 8
    iput-object p1, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/l/a;

    .line 9
    iget-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    invoke-virtual {p1}, Lcom/baidu/tts/l/a;->e()Lcom/baidu/tts/database/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/a;->a(Lcom/baidu/tts/database/a;)V

    .line 10
    iget-object p1, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    iget-object v0, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/l/a;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/l/a;)V

    return-void
.end method

.method public declared-synchronized b()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    monitor-enter p0

    .line 2
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "Downloader"

    const-string v1, "enter stop"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/a;->c()V

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->e()V

    const-string v0, "Downloader"

    const-string v1, "after engine stop"

    .line 7
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    const-string v0, "Downloader"

    const-string v1, "before awaitTermination"

    .line 8
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v1}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const-string v1, "Downloader"

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after awaitTermination isTermination="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    .line 11
    :try_start_2
    iput-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    :cond_1
    const-string v0, "Downloader"

    const-string v1, "end stop"

    .line 12
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/tts/d/c;->h()Ljava/util/concurrent/ExecutorService;

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
