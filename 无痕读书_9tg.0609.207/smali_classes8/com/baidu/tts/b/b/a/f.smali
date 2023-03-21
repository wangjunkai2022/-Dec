.class public Lcom/baidu/tts/b/b/a/f;
.super Lcom/baidu/tts/b/b/a/a;
.source "PlayExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/b/b/a/f$a;
    }
.end annotation


# instance fields
.field public c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public f:Lcom/baidu/tts/b/b/b/c;

.field public g:Lcom/baidu/tts/b/b/a/h;

.field public h:Lcom/baidu/tts/b/b/a/d;

.field public i:Lcom/baidu/tts/b/b/a/g;

.field public j:Lcom/baidu/tts/b/b/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/b/b/a/a;-><init>()V

    .line 2
    new-instance v0, Lcom/baidu/tts/b/b/a/h;

    invoke-direct {v0, p0}, Lcom/baidu/tts/b/b/a/h;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->g:Lcom/baidu/tts/b/b/a/h;

    .line 3
    new-instance v0, Lcom/baidu/tts/b/b/a/d;

    invoke-direct {v0, p0}, Lcom/baidu/tts/b/b/a/d;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->h:Lcom/baidu/tts/b/b/a/d;

    .line 4
    new-instance v0, Lcom/baidu/tts/b/b/a/g;

    invoke-direct {v0, p0}, Lcom/baidu/tts/b/b/a/g;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->i:Lcom/baidu/tts/b/b/a/g;

    .line 5
    new-instance v0, Lcom/baidu/tts/b/b/a/e;

    invoke-direct {v0, p0}, Lcom/baidu/tts/b/b/a/e;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->j:Lcom/baidu/tts/b/b/a/e;

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->g:Lcom/baidu/tts/b/b/a/h;

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    .line 7
    invoke-static {}, Lcom/baidu/tts/b/b/b;->a()Lcom/baidu/tts/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b;->b()Lcom/baidu/tts/b/b/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    return-void
.end method

.method public static synthetic a(Lcom/baidu/tts/b/b/a/f;)Lcom/baidu/tts/b/b/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    return-object p0
.end method


# virtual methods
.method public b(FF)I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/b/b/b/c;->a(FF)I

    move-result p1

    return p1
.end method

.method public b(II)I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/b/b/b/c;->a(II)I

    move-result p1

    return p1
.end method

.method public b(Lcom/baidu/tts/b/b/a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/baidu/tts/m/a;

    .line 2
    invoke-virtual {p1}, Lcom/baidu/tts/m/a;->a()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/b/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/b/c;->a(I)I

    move-result p1

    return p1
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/b/c;->b(I)I

    move-result p1

    return p1
.end method

.method public e(Lcom/baidu/tts/m/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/tts/b/b/a/f$a;

    invoke-direct {v1, p0, p1}, Lcom/baidu/tts/b/b/a/f$a;-><init>(Lcom/baidu/tts/b/b/a/f;Lcom/baidu/tts/m/h;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f;->j:Lcom/baidu/tts/b/b/a/e;

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

    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f;->h:Lcom/baidu/tts/b/b/a/d;

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

.method public p()Lcom/baidu/tts/b/b/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->g:Lcom/baidu/tts/b/b/a/h;

    return-object v0
.end method

.method public q()Lcom/baidu/tts/b/b/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->h:Lcom/baidu/tts/b/b/a/d;

    return-object v0
.end method

.method public r()Lcom/baidu/tts/b/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->i:Lcom/baidu/tts/b/b/a/g;

    return-object v0
.end method

.method public s()Lcom/baidu/tts/b/b/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->j:Lcom/baidu/tts/b/b/a/e;

    return-object v0
.end method

.method public t()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    new-instance v1, Lcom/baidu/tts/b/b/a/f$1;

    invoke-direct {v1, p0}, Lcom/baidu/tts/b/b/a/f$1;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    invoke-interface {v0, v1}, Lcom/baidu/tts/b/b/b/c;->a(Lcom/baidu/tts/b/b/a;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 3

    .line 1
    new-instance v0, Lcom/baidu/tts/c/a;

    const/16 v1, 0xc8

    const-string v2, "bdtts-PlayExecutorPoolThread"

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/c/a;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->d()V

    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->c()V

    return-void
.end method

.method public x()V
    .locals 5

    const-string v0, "PlayQueueMachine"

    .line 1
    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v1}, Lcom/baidu/tts/b/b/b/c;->e()V

    .line 2
    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    :try_start_0
    const-string v1, "before await"

    .line 5
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v2, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v2}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after await isTer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "InterruptedException"

    .line 8
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/baidu/tts/b/b/a/f;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->f()Lcom/baidu/tts/aop/tts/TtsError;

    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f;->f:Lcom/baidu/tts/b/b/b/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/b/c;->b()V

    return-void
.end method
