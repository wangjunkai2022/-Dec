.class public Lcom/baidu/tts/auth/a$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/tts/auth/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/tts/auth/a;

.field public b:Lcom/baidu/tts/b/a/b/f$b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/b/a/b/f$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/auth/a$b;->a:Lcom/baidu/tts/auth/a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/baidu/tts/auth/a$b;->b:Lcom/baidu/tts/b/a/b/f$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/auth/e$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/a$b;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$b;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/baidu/tts/auth/a$b;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/baidu/tts/auth/a$b;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v2}, Lcom/baidu/tts/b/a/b/f$b;->f()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/baidu/tts/auth/a$b;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/f$b;->j()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/baidu/tts/auth/a$b;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v4}, Lcom/baidu/tts/b/a/b/f$b;->b()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AuthClient"

    invoke-static {v6, v5}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ak="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sk="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v3, Lcom/baidu/tts/auth/e;

    invoke-direct {v3}, Lcom/baidu/tts/auth/e;-><init>()V

    .line 11
    invoke-virtual {v3, v0}, Lcom/baidu/tts/auth/e;->b(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, v1}, Lcom/baidu/tts/auth/e;->c(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v2}, Lcom/baidu/tts/auth/e;->d(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v4}, Lcom/baidu/tts/auth/e;->a(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/baidu/tts/auth/a$b;->a:Lcom/baidu/tts/auth/a;

    invoke-static {v0}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/auth/a;)Lcom/baidu/tts/k/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/tts/k/c;->a(Lcom/baidu/tts/k/b;)Lcom/baidu/tts/k/a;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/auth/e$a;

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
    invoke-virtual {p0}, Lcom/baidu/tts/auth/a$b;->a()Lcom/baidu/tts/auth/e$a;

    move-result-object v0

    return-object v0
.end method
