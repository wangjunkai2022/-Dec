.class public Lcom/baidu/tts/d/a/b$a$1;
.super Lcom/baidu/tts/d/a/g;
.source "DownloadEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/d/a/b$a;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/baidu/tts/d/a/b$a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/a/b$a;Ljava/io/File;Lcom/baidu/tts/d/a/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/d/a/b$a$1;->b:Lcom/baidu/tts/d/a/b$a;

    iput-object p4, p0, Lcom/baidu/tts/d/a/b$a$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/baidu/tts/d/a/g;-><init>(Ljava/io/File;Lcom/baidu/tts/d/a/c;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 2

    const-string v0, "1isInterrupted="

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadEngine"

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a$1;->b:Lcom/baidu/tts/d/a/b$a;

    iget-object v0, v0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/tts/d/a/g;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a$1;->b:Lcom/baidu/tts/d/a/b$a;

    iget-object v0, v0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/tts/d/a/g;->onProgress(JJ)V

    :cond_0
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 2

    const-string v0, "2isInterrupted="

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--fileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadEngine"

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a$1;->b:Lcom/baidu/tts/d/a/b$a;

    iget-object v0, v0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/tts/d/a/g;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V

    :cond_0
    return-void
.end method
