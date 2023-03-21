.class public Lcom/baidu/tts/d/a/b$a;
.super Ljava/lang/Object;
.source "DownloadEngine.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/tts/d/a/b;

.field public b:Lcom/baidu/tts/d/a/c;

.field public c:Lcom/baidu/tts/loopj/SyncHttpClient;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/a/b;Lcom/baidu/tts/d/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/c;->d()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadWork start fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadEngine"

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->ac:Lcom/baidu/tts/f/n;

    const-string v3, "fileId is null"

    invoke-virtual {v0, v1, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_1

    .line 7
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, p0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    invoke-static {v3}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/d/a/b;)Lcom/baidu/tts/l/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/tts/l/a;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/client/model/ModelFileBags;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v3}, Lcom/baidu/tts/client/model/ModelFileBags;->getUrl(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "https"

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 13
    new-instance v4, Lcom/baidu/tts/loopj/SyncHttpClient;

    const/16 v6, 0x50

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>(ZII)V

    iput-object v4, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    goto :goto_0

    .line 14
    :cond_1
    new-instance v4, Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-direct {v4}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>()V

    iput-object v4, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    .line 15
    :goto_0
    iget-object v4, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v4, v3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setURLEncodingEnabled(Z)V

    .line 16
    iget-object v3, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    sget-object v4, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v4}, Lcom/baidu/tts/f/l;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setTimeout(I)V

    .line 17
    iget-object v3, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    const/4 v4, 0x5

    const/16 v6, 0x5dc

    invoke-virtual {v3, v4, v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 18
    iget-object v3, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v3}, Lcom/baidu/tts/d/a/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Lcom/baidu/tts/tools/FileTools;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 20
    new-instance v4, Lcom/baidu/tts/d/a/b$a$1;

    iget-object v6, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-direct {v4, p0, v3, v6, v0}, Lcom/baidu/tts/d/a/b$a$1;-><init>(Lcom/baidu/tts/d/a/b$a;Ljava/io/File;Lcom/baidu/tts/d/a/c;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4, v5}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before get fileId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-virtual {v0, v1, v4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    goto :goto_1

    .line 24
    :cond_2
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->ac:Lcom/baidu/tts/f/n;

    const-string v3, "url is null"

    invoke-virtual {v0, v1, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_1

    .line 26
    :cond_3
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->ac:Lcom/baidu/tts/f/n;

    const-string v3, "urlbags is null"

    invoke-virtual {v0, v1, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    :goto_1
    const-string v0, "DownloadWork end"

    .line 28
    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->c:Lcom/baidu/tts/loopj/SyncHttpClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/loopj/SyncHttpClient;->stop()V

    :cond_0
    return-void
.end method

.method public c()Lcom/baidu/tts/d/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

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
    invoke-virtual {p0}, Lcom/baidu/tts/d/a/b$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
