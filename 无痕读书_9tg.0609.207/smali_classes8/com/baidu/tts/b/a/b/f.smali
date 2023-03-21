.class public Lcom/baidu/tts/b/a/b/f;
.super Lcom/baidu/tts/b/a/b/a;
.source "OnlineSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/b/a/b/f$b;,
        Lcom/baidu/tts/b/a/b/f$a;,
        Lcom/baidu/tts/b/a/b/f$d;,
        Lcom/baidu/tts/b/a/b/f$c;
    }
.end annotation


# instance fields
.field public b:Lcom/baidu/tts/b/a/b/f$b;

.field public c:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/baidu/tts/b/a/b/f;)Lcom/baidu/tts/b/a/b/f$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/b/a/b/f;->b:Lcom/baidu/tts/b/a/b/f$b;

    return-object p0
.end method

.method private a(ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 9
    invoke-static {p3}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v7

    .line 10
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0}, Lcom/baidu/tts/n/a;->G()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/baidu/tts/b/a/b/f$b;

    .line 11
    new-instance v9, Lcom/baidu/tts/b/a/b/f$a;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/baidu/tts/b/a/b/f$a;-><init>(Lcom/baidu/tts/b/a/b/f;ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;Lcom/baidu/tts/m/h;)V

    .line 12
    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v9}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 13
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p3, "bdtts-OnlineSynthesizer"

    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 16
    invoke-virtual {v8}, Lcom/baidu/tts/b/a/b/f$b;->u()I

    move-result p2

    int-to-long p2, p2

    const/4 v0, 0x1

    .line 17
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/tts/m/h;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, p2

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "OnlineSynthesizer"

    const-string v1, "startOnceHttpRequest timeout"

    .line 18
    invoke-static {p3, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 20
    invoke-virtual {v9}, Lcom/baidu/tts/b/a/b/f$a;->b()V

    .line 21
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object p1

    sget-object p3, Lcom/baidu/tts/f/n;->o:Lcom/baidu/tts/f/n;

    invoke-virtual {p1, p3, p2}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    .line 22
    invoke-virtual {v7, p1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 24
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object p2

    sget-object p3, Lcom/baidu/tts/f/n;->n:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    .line 25
    invoke-virtual {v7, p1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    :goto_0
    return-object v7

    :catch_2
    move-exception p2

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 28
    invoke-virtual {v9}, Lcom/baidu/tts/b/a/b/f$a;->b()V

    .line 29
    throw p2
.end method

.method public static synthetic a(Lcom/baidu/tts/b/a/b/f;ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/tts/b/a/b/f;->a(ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object p0

    return-object p0
.end method

.method private a(ILjava/lang/String;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/tts/q/a;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    .line 30
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->X:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/baidu/tts/f/g;->W:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/baidu/tts/f/g;->C:Lcom/baidu/tts/f/g;

    invoke-virtual {v2}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {p2, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lcom/baidu/tts/h/b/b;->j()Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v4, Lcom/baidu/tts/f/g;->ab:Lcom/baidu/tts/f/g;

    invoke-virtual {v4}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->i()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v4, Lcom/baidu/tts/f/g;->O:Lcom/baidu/tts/f/g;

    invoke-virtual {v4}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_1
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->j()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v3}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 42
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v5, Lcom/baidu/tts/f/g;->al:Lcom/baidu/tts/f/g;

    invoke-virtual {v5}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_2
    invoke-virtual {p4}, Lcom/baidu/tts/m/d;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/baidu/tts/m/i;->c(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p3}, Lcom/baidu/tts/m/i;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "OnlineSynthesizer"

    if-ne p1, v4, :cond_7

    .line 45
    :try_start_0
    invoke-virtual {p3}, Lcom/baidu/tts/m/i;->c()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance p3, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v4, Lcom/baidu/tts/f/g;->Y:Lcom/baidu/tts/f/g;

    invoke-virtual {v4}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object p1, Lcom/baidu/tts/f/g;->Z:Lcom/baidu/tts/f/g;

    invoke-virtual {p1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/tts/h/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance p3, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v4, Lcom/baidu/tts/f/g;->Z:Lcom/baidu/tts/f/g;

    invoke-virtual {v4}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p2}, Lcom/baidu/tts/h/b/b;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 51
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p3, Lcom/baidu/tts/f/g;->aa:Lcom/baidu/tts/f/g;

    invoke-virtual {p3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_3
    invoke-static {v2}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "before online auth"

    .line 53
    invoke-static {v5, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/auth/e$a;

    move-result-object p1

    const-string p2, "after online auth"

    .line 55
    invoke-static {v5, p2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/baidu/tts/auth/e$a;->g()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 57
    invoke-virtual {p1}, Lcom/baidu/tts/auth/e$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p3, Lcom/baidu/tts/f/g;->aj:Lcom/baidu/tts/f/g;

    invoke-virtual {p3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_4
    new-instance p1, Lcom/baidu/tts/q/a;

    invoke-direct {p1}, Lcom/baidu/tts/q/a;-><init>()V

    throw p1

    .line 60
    :cond_5
    :goto_0
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->H:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/m/d;->z()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->J:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->h()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->K:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->k()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->g()Lcom/baidu/tts/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/tts/f/b;->b()[Lcom/baidu/tts/f/c;

    move-result-object p1

    .line 64
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->k()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 65
    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/baidu/tts/f/c;->b()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/tts/b/a/b/f;->c:D

    .line 66
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->L:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->l()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->ac:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->m()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->ad:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->n()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->M:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->o()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->N:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->p()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->ae:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->q()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->af:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->r()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->G:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/m/d;->A()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->D:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/m/d;->D()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->F:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/m/d;->E()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->E:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/m/d;->F()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p2, Lcom/baidu/tts/f/g;->T:Lcom/baidu/tts/f/g;

    invoke-virtual {p2}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/baidu/tts/m/d;->B()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->x()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 79
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p3, Lcom/baidu/tts/f/g;->az:Lcom/baidu/tts/f/g;

    invoke-virtual {p3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_6
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->w()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 81
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    sget-object p3, Lcom/baidu/tts/f/g;->aA:Lcom/baidu/tts/f/g;

    invoke-virtual {p3}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 83
    :cond_7
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/http/NameValuePair;

    .line 85
    invoke-interface {p3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "="

    .line 86
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-interface {p3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ","

    .line 88
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 89
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "request params: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance p1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p1, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public static synthetic a(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/tts/q/a;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/tts/b/a/b/f;->a(ILjava/lang/String;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/baidu/tts/b/a/b/f;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/tts/b/a/b/f;->c:D

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .locals 0

    .line 92
    sget-object p1, Lcom/baidu/tts/f/n;->k:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .locals 0

    .line 94
    sget-object p1, Lcom/baidu/tts/f/n;->k:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .locals 0

    .line 93
    sget-object p1, Lcom/baidu/tts/f/n;->k:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 5
    :try_start_0
    new-instance v0, Lcom/baidu/tts/b/a/b/f$d;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/b/a/b/f$d;-><init>(Lcom/baidu/tts/b/a/b/f;Lcom/baidu/tts/m/i;)V

    .line 6
    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$d;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->j:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 8
    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OnlineSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TOnlineSynthesizerParams;)V"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/baidu/tts/b/a/b/f$b;

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f;->b:Lcom/baidu/tts/b/a/b/f$b;

    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .locals 0

    .line 2
    sget-object p1, Lcom/baidu/tts/f/n;->k:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method
