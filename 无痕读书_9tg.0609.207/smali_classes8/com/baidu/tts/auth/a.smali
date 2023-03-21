.class public Lcom/baidu/tts/auth/a;
.super Ljava/lang/Object;
.source "AuthClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/auth/a$a;,
        Lcom/baidu/tts/auth/a$b;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/baidu/tts/auth/a;


# instance fields
.field public b:Lcom/baidu/tts/k/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/tts/k/c<",
            "Lcom/baidu/tts/auth/e;",
            "Lcom/baidu/tts/auth/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/baidu/tts/k/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/tts/k/c<",
            "Lcom/baidu/tts/auth/d;",
            "Lcom/baidu/tts/auth/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/baidu/tts/k/c;

    invoke-direct {v0}, Lcom/baidu/tts/k/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/auth/a;->b:Lcom/baidu/tts/k/c;

    .line 3
    new-instance v0, Lcom/baidu/tts/k/c;

    invoke-direct {v0}, Lcom/baidu/tts/k/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/auth/a;->c:Lcom/baidu/tts/k/c;

    return-void
.end method

.method public static a()Lcom/baidu/tts/auth/a;
    .locals 2

    .line 2
    sget-object v0, Lcom/baidu/tts/auth/a;->a:Lcom/baidu/tts/auth/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/baidu/tts/auth/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/baidu/tts/auth/a;->a:Lcom/baidu/tts/auth/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/baidu/tts/auth/a;

    invoke-direct {v1}, Lcom/baidu/tts/auth/a;-><init>()V

    sput-object v1, Lcom/baidu/tts/auth/a;->a:Lcom/baidu/tts/auth/a;

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
    sget-object v0, Lcom/baidu/tts/auth/a;->a:Lcom/baidu/tts/auth/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/baidu/tts/auth/a;)Lcom/baidu/tts/k/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/auth/a;->b:Lcom/baidu/tts/k/c;

    return-object p0
.end method

.method private a(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lcom/baidu/tts/auth/a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object p1

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 73
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "bdtts-AuthClient"

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public static synthetic b(Lcom/baidu/tts/auth/a;)Lcom/baidu/tts/k/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/auth/a;->c:Lcom/baidu/tts/k/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/f/m;Lcom/baidu/tts/m/j;)Lcom/baidu/tts/auth/AuthInfo;
    .locals 2

    .line 8
    invoke-virtual {p2}, Lcom/baidu/tts/m/j;->a()Lcom/baidu/tts/m/b;

    move-result-object p2

    .line 9
    new-instance v0, Lcom/baidu/tts/auth/AuthInfo;

    invoke-direct {v0}, Lcom/baidu/tts/auth/AuthInfo;-><init>()V

    .line 10
    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/AuthInfo;->setTtsEnum(Lcom/baidu/tts/f/m;)V

    .line 11
    sget-object v1, Lcom/baidu/tts/auth/a$3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/m/b;)Lcom/baidu/tts/auth/AuthInfo;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/tts/m/b;->b()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/auth/d$a;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/AuthInfo;->setOfflineResult(Lcom/baidu/tts/auth/d$a;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p2}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/auth/e$a;

    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/AuthInfo;->setOnlineResult(Lcom/baidu/tts/auth/e$a;)V

    :goto_0
    return-object v0
.end method

.method public a(Lcom/baidu/tts/m/b;)Lcom/baidu/tts/auth/AuthInfo;
    .locals 6

    const-string v0, "AuthClient"

    const-string v1, "enter authMix"

    .line 31
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 33
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/baidu/tts/auth/a$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/baidu/tts/auth/a$1;-><init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/m/b;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 34
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/baidu/tts/auth/a$2;

    invoke-direct {v4, p0, p1, v1}, Lcom/baidu/tts/auth/a$2;-><init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/m/b;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 35
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v4, "bdtts-onlineThread"

    .line 36
    invoke-virtual {p1, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 38
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v4, "bdtts-offlineThread"

    .line 39
    invoke-virtual {p1, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    :try_start_0
    const-string v4, "+ await"

    .line 41
    invoke-static {v0, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    const-string v1, "- await"

    .line 43
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 45
    invoke-virtual {v2, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 46
    invoke-virtual {v3, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 47
    :goto_0
    new-instance v1, Lcom/baidu/tts/auth/e$a;

    invoke-direct {v1}, Lcom/baidu/tts/auth/e$a;-><init>()V

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ mix online get onlineResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/tts/auth/e$a;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v4

    goto :goto_1

    :catch_1
    move-exception v2

    .line 50
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v4

    sget-object v5, Lcom/baidu/tts/f/n;->p:Lcom/baidu/tts/f/n;

    invoke-virtual {v4, v5, v2}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/tts/auth/e$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_1

    :catch_2
    move-exception v2

    .line 51
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v4

    sget-object v5, Lcom/baidu/tts/f/n;->e:Lcom/baidu/tts/f/n;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/tts/auth/e$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_1

    :catch_3
    move-exception v4

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 53
    invoke-virtual {v2, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 54
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v5, Lcom/baidu/tts/f/n;->d:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v5, v4}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/tts/auth/e$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    :goto_1
    const-string v2, "- online get"

    .line 55
    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v2, Lcom/baidu/tts/auth/d$a;

    invoke-direct {v2}, Lcom/baidu/tts/auth/d$a;-><init>()V

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ mix offline get offlineResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/tts/auth/d$a;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v2, v4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 59
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v4, Lcom/baidu/tts/f/n;->I:Lcom/baidu/tts/f/n;

    invoke-virtual {v3, v4, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/baidu/tts/auth/d$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_2

    :catch_5
    move-exception p1

    .line 60
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v4, Lcom/baidu/tts/f/n;->w:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/baidu/tts/auth/d$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_2

    :catch_6
    move-exception v4

    .line 61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 62
    invoke-virtual {v3, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 63
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object p1

    sget-object v3, Lcom/baidu/tts/f/n;->v:Lcom/baidu/tts/f/n;

    invoke-virtual {p1, v3, v4}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/baidu/tts/auth/d$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    :goto_2
    const-string p1, "- offline get"

    .line 64
    invoke-static {v0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/baidu/tts/auth/AuthInfo;

    invoke-direct {p1}, Lcom/baidu/tts/auth/AuthInfo;-><init>()V

    .line 66
    sget-object v3, Lcom/baidu/tts/f/m;->c:Lcom/baidu/tts/f/m;

    invoke-virtual {p1, v3}, Lcom/baidu/tts/auth/AuthInfo;->setTtsEnum(Lcom/baidu/tts/f/m;)V

    .line 67
    invoke-virtual {p1, v1}, Lcom/baidu/tts/auth/AuthInfo;->setOnlineResult(Lcom/baidu/tts/auth/e$a;)V

    .line 68
    invoke-virtual {p1, v2}, Lcom/baidu/tts/auth/AuthInfo;->setOfflineResult(Lcom/baidu/tts/auth/d$a;)V

    const-string v1, "end authMix"

    .line 69
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/auth/d$a;
    .locals 4

    .line 24
    new-instance v0, Lcom/baidu/tts/auth/d$a;

    invoke-direct {v0}, Lcom/baidu/tts/auth/d$a;-><init>()V

    .line 25
    :try_start_0
    new-instance v1, Lcom/baidu/tts/auth/a$a;

    invoke-direct {v1, p0, p1}, Lcom/baidu/tts/auth/a$a;-><init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/b/a/b/e$a;)V

    sget-object p1, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {p1}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/tts/auth/a;->a(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/tts/auth/d$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->I:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/d$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 27
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->x:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/d$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 28
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->w:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/d$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 30
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->v:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/d$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    :goto_0
    return-object v0
.end method

.method public a(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/auth/e$a;
    .locals 4

    .line 17
    new-instance v0, Lcom/baidu/tts/auth/e$a;

    invoke-direct {v0}, Lcom/baidu/tts/auth/e$a;-><init>()V

    .line 18
    :try_start_0
    new-instance v1, Lcom/baidu/tts/auth/a$b;

    invoke-direct {v1, p0, p1}, Lcom/baidu/tts/auth/a$b;-><init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/b/a/b/f$b;)V

    sget-object p1, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {p1}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/tts/auth/a;->a(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/tts/auth/e$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->p:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/e$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 20
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->f:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/e$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 21
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->e:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/e$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 23
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->d:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/tts/auth/e$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    :goto_0
    return-object v0
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/auth/a;->b:Lcom/baidu/tts/k/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/baidu/tts/k/c;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/auth/a;->c:Lcom/baidu/tts/k/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/baidu/tts/k/c;->a()V

    :cond_1
    return-void
.end method
