.class public Lcom/baidu/tts/auth/d;
.super Ljava/lang/Object;
.source "OfflineAuth.java"

# interfaces
.implements Lcom/baidu/tts/k/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/auth/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/k/b<",
        "Lcom/baidu/tts/auth/d;",
        "Lcom/baidu/tts/auth/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/auth/d;)I
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/baidu/tts/auth/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/baidu/tts/auth/d;->b()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/baidu/tts/auth/d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/tts/tools/StringTool;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/baidu/tts/auth/d;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/baidu/tts/tools/StringTool;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/auth/d;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/auth/d;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/baidu/tts/auth/d$a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/baidu/tts/auth/d$a;

    invoke-direct {v0}, Lcom/baidu/tts/auth/d$a;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/baidu/tts/auth/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/d$a;->a(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/baidu/tts/auth/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/d$a;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/baidu/tts/h/b/b;->h()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OfflineAuth"

    const-string v3, "+ downloadLicense"

    .line 7
    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    const-string v4, "getLicense_expires"

    const-wide/16 v5, 0x0

    .line 8
    invoke-static {v1, v4, v5, v6}, Lcom/baidu/tts/tools/SharedPreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "getLicense_time"

    .line 9
    invoke-static {v1, v4, v5, v6}, Lcom/baidu/tts/tools/SharedPreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    cmp-long v1, v9, v7

    if-lez v1, :cond_0

    .line 11
    :try_start_0
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/baidu/tts/auth/c;

    iget-object v5, p0, Lcom/baidu/tts/auth/d;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/tts/auth/d;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/baidu/tts/auth/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 12
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const-wide/16 v4, 0x7d0

    .line 14
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- downloadLicense ret = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v3}, Lcom/baidu/tts/auth/d$a;->a(I)V

    if-gez v3, :cond_1

    .line 20
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->t:Lcom/baidu/tts/f/n;

    const-string v4, "appCode="

    invoke-static {v4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/tts/auth/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--licensePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/baidu/tts/auth/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/d$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->g()Z

    :cond_2
    :goto_1
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/auth/d;->c()Lcom/baidu/tts/auth/d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/tts/auth/d;

    invoke-virtual {p0, p1}, Lcom/baidu/tts/auth/d;->a(Lcom/baidu/tts/auth/d;)I

    move-result p1

    return p1
.end method
