.class public Lcom/baidu/tts/auth/a$a;
.super Ljava/lang/Object;
.source "AuthClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/auth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/tts/auth/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/tts/auth/a;

.field public b:Lcom/baidu/tts/b/a/b/e$a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/b/a/b/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/auth/a$a;->a:Lcom/baidu/tts/auth/a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/baidu/tts/auth/a$a;->b:Lcom/baidu/tts/b/a/b/e$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/auth/d$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/baidu/tts/auth/d$a;

    invoke-direct {v0}, Lcom/baidu/tts/auth/d$a;-><init>()V

    .line 2
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/tts/h/b/b;->g()Lcom/baidu/tts/h/b/a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->Z:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/d$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/auth/a$a;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$a;->e()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/baidu/tts/auth/a$a;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v2}, Lcom/baidu/tts/b/a/b/e$a;->d()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/baidu/tts/h/b/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AuthClient"

    invoke-static {v3, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "licenseFilePath="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/baidu/tts/auth/d;

    invoke-direct {v1}, Lcom/baidu/tts/auth/d;-><init>()V

    .line 12
    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/d;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v2}, Lcom/baidu/tts/auth/d;->b(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/baidu/tts/auth/a$a;->a:Lcom/baidu/tts/auth/a;

    invoke-static {v0}, Lcom/baidu/tts/auth/a;->b(Lcom/baidu/tts/auth/a;)Lcom/baidu/tts/k/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/tts/k/c;->a(Lcom/baidu/tts/k/b;)Lcom/baidu/tts/k/a;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/auth/d$a;

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
    invoke-virtual {p0}, Lcom/baidu/tts/auth/a$a;->a()Lcom/baidu/tts/auth/d$a;

    move-result-object v0

    return-object v0
.end method
