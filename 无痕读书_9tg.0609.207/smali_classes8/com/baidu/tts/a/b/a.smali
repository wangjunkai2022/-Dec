.class public Lcom/baidu/tts/a/b/a;
.super Ljava/lang/Object;
.source "SpeechSynthesizerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/a/b/a$a;,
        Lcom/baidu/tts/a/b/a$c;,
        Lcom/baidu/tts/a/b/a$b;
    }
.end annotation


# instance fields
.field public a:Lcom/baidu/tts/aop/tts/ITts;

.field public b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

.field public c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public d:Lcom/baidu/tts/aop/ttslistener/TtsListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/baidu/tts/a/b/a$1;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/b/a$1;-><init>(Lcom/baidu/tts/a/b/a;)V

    iput-object v0, p0, Lcom/baidu/tts/a/b/a;->d:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 3
    invoke-direct {p0}, Lcom/baidu/tts/a/b/a;->g()Lcom/baidu/tts/aop/tts/ITts;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/a/b/a;->d:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    invoke-interface {v0, v1}, Lcom/baidu/tts/aop/tts/ITts;->setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/concurrent/Callable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lcom/baidu/tts/tools/ResourceTools;->isTextValid(Ljava/lang/String;)Lcom/baidu/tts/f/n;

    move-result-object p1

    if-nez p1, :cond_0

    .line 23
    invoke-direct {p0, p2}, Lcom/baidu/tts/a/b/a;->a(Ljava/util/concurrent/Callable;)I

    move-result p1

    return p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method private a(Ljava/util/concurrent/Callable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .line 25
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/tts/a/b/a;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 26
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeechSynthesizerAdapter"

    invoke-static {v0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget p1, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_QUEUE_IS_FULL:I

    return p1

    .line 29
    :catch_1
    invoke-direct {p0}, Lcom/baidu/tts/a/b/a;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 30
    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    .line 32
    sget p1, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_QUEUE_IS_FULL:I

    return p1
.end method

.method public static synthetic a(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/aop/tts/ITts;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    return-object p0
.end method

.method public static synthetic a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/baidu/tts/m/h;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->f()Lcom/baidu/tts/m/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/baidu/tts/m/i;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "SpeechSynthesizerAdapter"

    const-string v0, "getUtteranceId null"

    .line 35
    invoke-static {p1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic b(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Lcom/baidu/tts/client/SpeechError;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/client/SpeechError;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/client/SpeechError;
    .locals 2

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->g()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailCode()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailMessage()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v1, Lcom/baidu/tts/client/SpeechError;

    invoke-direct {v1}, Lcom/baidu/tts/client/SpeechError;-><init>()V

    .line 16
    iput v0, v1, Lcom/baidu/tts/client/SpeechError;->code:I

    .line 17
    iput-object p1, v1, Lcom/baidu/tts/client/SpeechError;->description:Ljava/lang/String;

    return-object v1

    :cond_0
    const-string p1, "SpeechSynthesizerAdapter"

    const-string v0, "ttsError is null"

    .line 18
    invoke-static {p1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    new-instance p1, Lcom/baidu/tts/client/SpeechError;

    invoke-direct {p1}, Lcom/baidu/tts/client/SpeechError;-><init>()V

    .line 20
    sget-object v0, Lcom/baidu/tts/f/n;->al:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    iput v0, p1, Lcom/baidu/tts/client/SpeechError;->code:I

    .line 21
    sget-object v0, Lcom/baidu/tts/f/n;->al:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/tts/client/SpeechError;->description:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/baidu/tts/a/b/a;->b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    return-object p0
.end method

.method private g()Lcom/baidu/tts/aop/tts/ITts;
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/tts/aop/tts/TtsFactory;

    invoke-direct {v0}, Lcom/baidu/tts/aop/tts/TtsFactory;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/aop/AProxyFactory;->makeProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/aop/tts/ITts;

    return-object v0
.end method

.method private declared-synchronized h()Ljava/util/concurrent/ExecutorService;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/baidu/tts/c/a;

    const/16 v1, 0x3a98

    const-string v2, "bdtts-SpeechSynthesizerPoolThread"

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v3}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/tts/c/a;-><init>(ILjava/lang/String;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 5

    const-string v0, "SpeechSynthesizerAdapter"

    .line 1
    iget-object v1, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v2, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v2}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTerminated="

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

    .line 6
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/baidu/tts/a/b/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/aop/tts/ITts;->setStereoVolume(FF)I

    move-result p1

    return p1
.end method

.method public a(I)I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setAudioStreamType(I)I

    move-result p1

    return p1
.end method

.method public a(II)I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/aop/tts/ITts;->setAudioAttributes(II)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    .line 12
    new-instance v0, Lcom/baidu/tts/m/e;

    invoke-direct {v0}, Lcom/baidu/tts/m/e;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/e;->a(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {p1, v0}, Lcom/baidu/tts/aop/tts/ITts;->loadCustomResource(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/baidu/tts/f/g;->valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/g;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/aop/tts/ITts;->setParam(Lcom/baidu/tts/f/g;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 11
    :catch_0
    sget-object p1, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    .line 15
    new-instance p3, Lcom/baidu/tts/a/b/a$b;

    invoke-direct {p3, p0, p1, p2}, Lcom/baidu/tts/a/b/a$b;-><init>(Lcom/baidu/tts/a/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/baidu/tts/a/b/a;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)I"
        }
    .end annotation

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 17
    new-instance v0, Lcom/baidu/tts/a/b/a$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/a/b/a$a;-><init>(Lcom/baidu/tts/a/b/a;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/baidu/tts/a/b/a;->a(Ljava/util/concurrent/Callable;)I

    move-result p1

    return p1

    .line 18
    :cond_0
    sget p1, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_LIST_IS_TOO_LONG:I

    return p1
.end method

.method public a(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-virtual {p1}, Lcom/baidu/tts/client/TtsMode;->getTtsEnum()Lcom/baidu/tts/f/m;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setMode(Lcom/baidu/tts/f/m;)V

    .line 7
    iget-object p1, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {p1}, Lcom/baidu/tts/j/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 8
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/h/b/b;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/baidu/tts/a/b/a;->b:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/baidu/tts/j/b;->d()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setAudioSampleRate(I)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 5
    new-instance v0, Lcom/baidu/tts/m/g;

    invoke-direct {v0}, Lcom/baidu/tts/m/g;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/g;->b(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/g;->a(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {p1, v0}, Lcom/baidu/tts/aop/tts/ITts;->loadModel(Lcom/baidu/tts/m/g;)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    .line 9
    new-instance p3, Lcom/baidu/tts/a/b/a$c;

    invoke-direct {p3, p0, p1, p2}, Lcom/baidu/tts/a/b/a$c;-><init>(Lcom/baidu/tts/a/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/baidu/tts/a/b/a;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/auth/AuthInfo;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-virtual {p1}, Lcom/baidu/tts/client/TtsMode;->getTtsEnum()Lcom/baidu/tts/f/m;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->auth(Lcom/baidu/tts/f/m;)Lcom/baidu/tts/auth/AuthInfo;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/baidu/tts/j/b;->c()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 3
    new-instance v0, Lcom/baidu/tts/m/f;

    invoke-direct {v0}, Lcom/baidu/tts/m/f;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/f;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/f;->b(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {p1, v0}, Lcom/baidu/tts/aop/tts/ITts;->loadEnglishModel(Lcom/baidu/tts/m/f;)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/a/b/a;->i()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/baidu/tts/j/b;->e()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/a/b/a;->i()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->f()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/b/a;->a:Lcom/baidu/tts/aop/tts/ITts;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/tts/aop/tts/ITts;->freeCustomResource(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method
