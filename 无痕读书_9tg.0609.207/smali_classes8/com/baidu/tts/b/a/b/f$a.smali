.class public Lcom/baidu/tts/b/a/b/f$a;
.super Ljava/lang/Object;
.source "OnlineSynthesizer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/tts/m/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/tts/b/a/b/f;

.field public b:I

.field public c:Lcom/baidu/tts/b/a/b/f$c;

.field public d:Lcom/baidu/tts/m/i;

.field public e:Lcom/baidu/tts/b/a/b/f$b;

.field public f:Lcom/baidu/tts/m/h;

.field public g:Lcom/baidu/tts/loopj/SyncHttpClient;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/f;ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;Lcom/baidu/tts/m/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$a;->a:Lcom/baidu/tts/b/a/b/f;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/baidu/tts/b/a/b/f$a;->b:I

    .line 4
    iput-object p3, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    .line 5
    iput-object p4, p0, Lcom/baidu/tts/b/a/b/f$a;->d:Lcom/baidu/tts/m/i;

    .line 6
    iput-object p5, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    .line 7
    iput-object p6, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/m/h;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->a:Lcom/baidu/tts/b/a/b/f;

    iget v1, p0, Lcom/baidu/tts/b/a/b/f$a;->b:I

    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v2, v2, Lcom/baidu/tts/b/a/b/f$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/f$a;->d:Lcom/baidu/tts/m/i;

    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/m/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;

    move-result-object v8
    :try_end_0
    .catch Lcom/baidu/tts/q/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/baidu/tts/b/a/b/f$a;->b:I

    const/4 v2, 0x1

    const-string v3, "OnlineSynthesizer"

    if-ne v1, v2, :cond_3

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->a()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v4}, Lcom/baidu/tts/b/a/b/f$b;->v()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    sget-object v4, Lcom/baidu/tts/f/o;->a:Lcom/baidu/tts/f/o;

    invoke-virtual {v4, v0}, Lcom/baidu/tts/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    sget-object v4, Lcom/baidu/tts/f/o;->a:Lcom/baidu/tts/f/o;

    invoke-virtual {v4, v0}, Lcom/baidu/tts/f/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v4}, Lcom/baidu/tts/b/a/b/f$b;->v()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v5, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v5}, Lcom/baidu/tts/b/a/b/f$b;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localDNS: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v0, "serverIp="

    .line 16
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v1, v1, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v0, v0, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 18
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->q:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 20
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    return-object v0

    :cond_4
    const-string v1, "http://"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    new-instance v0, Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    goto :goto_1

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v0, v0, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    new-instance v0, Lcom/baidu/tts/loopj/SyncHttpClient;

    const/16 v1, 0x50

    const/16 v4, 0x1bb

    invoke-direct {v0, v2, v1, v4}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>(ZII)V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    .line 25
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$b;->s()I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->t()I

    move-result v1

    .line 27
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v2, v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 28
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$b;->u()I

    move-result v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setTimeout(I)V

    .line 31
    new-instance v10, Lcom/baidu/tts/b/a/b/h;

    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    invoke-direct {v10, v0}, Lcom/baidu/tts/b/a/b/h;-><init>(Lcom/baidu/tts/m/h;)V

    .line 32
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v10, v0}, Lcom/baidu/tts/b/a/b/h;->a(Lcom/baidu/tts/b/a/b/f$b;)V

    .line 33
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 34
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->c()I

    move-result v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--> proxy host="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--port="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v2, v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setProxy(Ljava/lang/String;I)V

    .line 37
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v0, v0, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 38
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->q:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_2

    .line 40
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "before post"

    .line 41
    invoke-static {v3, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v5, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v7, v0, Lcom/baidu/tts/b/a/b/f$c;->b:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/baidu/tts/loopj/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    const-string v0, "after post"

    .line 43
    invoke-static {v3, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    return-object v0

    .line 45
    :catch_0
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->h:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 47
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/m/h;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->g:Lcom/baidu/tts/loopj/SyncHttpClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/loopj/SyncHttpClient;->stop()V

    :cond_0
    return-void
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/b/f$a;->a()Lcom/baidu/tts/m/h;

    move-result-object v0

    return-object v0
.end method
