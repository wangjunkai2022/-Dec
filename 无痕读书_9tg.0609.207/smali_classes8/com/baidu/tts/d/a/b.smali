.class public Lcom/baidu/tts/d/a/b;
.super Lcom/baidu/tts/j/a;
.source "DownloadEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/d/a/b$a;
    }
.end annotation


# instance fields
.field public volatile a:Lcom/baidu/tts/d/a/a;

.field public b:Lcom/baidu/tts/d/a/i;

.field public c:Lcom/baidu/tts/d/a/f;

.field public f:Lcom/baidu/tts/d/a/d;

.field public g:Lcom/baidu/tts/d/a/h;

.field public h:Ljava/util/concurrent/ThreadPoolExecutor;

.field public i:Lcom/baidu/tts/l/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/j/a;-><init>()V

    .line 2
    new-instance v0, Lcom/baidu/tts/d/a/i;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/i;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->b:Lcom/baidu/tts/d/a/i;

    .line 3
    new-instance v0, Lcom/baidu/tts/d/a/f;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/f;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->c:Lcom/baidu/tts/d/a/f;

    .line 4
    new-instance v0, Lcom/baidu/tts/d/a/d;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/d;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->f:Lcom/baidu/tts/d/a/d;

    .line 5
    new-instance v0, Lcom/baidu/tts/d/a/h;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/h;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->g:Lcom/baidu/tts/d/a/h;

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->b:Lcom/baidu/tts/d/a/i;

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    .line 7
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    return-void
.end method

.method public static synthetic a(Lcom/baidu/tts/d/a/b;)Lcom/baidu/tts/l/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/d/a/b;->i:Lcom/baidu/tts/l/a;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/baidu/tts/d/a/a;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/a/a;->a(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/tts/d/a/a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    return-void
.end method

.method public a(Lcom/baidu/tts/l/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/d/a/b;->i:Lcom/baidu/tts/l/a;

    return-void
.end method

.method public b(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;
    .locals 4

    .line 1
    new-instance v0, Lcom/baidu/tts/d/a/b$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/d/a/b$a;-><init>(Lcom/baidu/tts/d/a/b;Lcom/baidu/tts/d/a/c;)V

    .line 2
    invoke-virtual {p1}, Lcom/baidu/tts/d/a/c;->c()V

    const-string v1, "DownloadEngine"

    const-string v2, "before submit"

    .line 3
    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "submit exception"

    .line 5
    invoke-static {v1, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v3, Lcom/baidu/tts/f/n;->ak:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v3, v2}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    const/4 p1, 0x0

    .line 8
    :goto_0
    new-instance v1, Lcom/baidu/tts/d/a/e;

    invoke-direct {v1}, Lcom/baidu/tts/d/a/e;-><init>()V

    .line 9
    invoke-virtual {v1, p1}, Lcom/baidu/tts/d/a/e;->a(Ljava/util/concurrent/Future;)V

    .line 10
    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/e;->a(Lcom/baidu/tts/d/a/b$a;)V

    return-object v1
.end method

.method public g()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->a()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->c()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->d()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->e()V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->f()V

    return-void
.end method

.method public m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    iget-object v1, p0, Lcom/baidu/tts/d/a/b;->g:Lcom/baidu/tts/d/a/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    iget-object v1, p0, Lcom/baidu/tts/d/a/b;->c:Lcom/baidu/tts/d/a/f;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o()Lcom/baidu/tts/d/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->b:Lcom/baidu/tts/d/a/i;

    return-object v0
.end method

.method public p()Lcom/baidu/tts/d/a/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->c:Lcom/baidu/tts/d/a/f;

    return-object v0
.end method

.method public q()Lcom/baidu/tts/d/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->f:Lcom/baidu/tts/d/a/d;

    return-object v0
.end method

.method public r()Lcom/baidu/tts/d/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->g:Lcom/baidu/tts/d/a/h;

    return-object v0
.end method

.method public s()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/tts/g/a/a;

    const-string v1, "bdtts-downloadPoolThread"

    invoke-direct {v0, v1}, Lcom/baidu/tts/g/a/a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public t()V
    .locals 5

    const-string v0, "DownloadEngine"

    const-string v1, "enter stop"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    :try_start_0
    const-string v1, "before awaitTermination"

    .line 5
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v2, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v2}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after awaitTermination isTermination="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    const-string v1, "end stop"

    .line 9
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
