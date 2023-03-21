.class public Lcom/baidu/tts/loopj/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public cancelIsNotified:Z

.field public final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field public final context:Lorg/apache/http/protocol/HttpContext;

.field public executionCount:I

.field public final isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile isFinished:Z

.field public isRequestPreProcessed:Z

.field public final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field public final responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "client"

    .line 3
    invoke-static {p1, v0}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    const-string p1, "context"

    .line 4
    invoke-static {p2, p1}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/protocol/HttpContext;

    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    const-string p1, "request"

    .line 5
    invoke-static {p3, p1}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string p1, "responseHandler"

    .line 6
    invoke-static {p4, p1}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    return-void
.end method

.method private makeRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    instance-of v1, v0, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;->updateRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v1, v1, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->onPreProcessResponse(Lcom/baidu/tts/loopj/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V

    .line 8
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v1, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 10
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v1, v1, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->onPostProcessResponse(Lcom/baidu/tts/loopj/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V

    return-void

    .line 12
    :cond_5
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeRequestWithRetries()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v1

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 4
    :cond_1
    iget v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    iget-object v3, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NPE in HttpClient: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    iget-object v3, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_1

    :catch_3
    move-exception v1

    .line 7
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownHostException exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    iget v3, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    iget-object v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v1, v3, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move-object v5, v2

    move v2, v1

    move-object v1, v5

    :goto_2
    if-eqz v2, :cond_0

    .line 9
    iget-object v3, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    iget v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    invoke-interface {v3, v4}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendRetryMessage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 10
    :goto_3
    sget-object v1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "AsyncHttpRequest"

    const-string v3, "Unhandled exception origin cause"

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unhandled exception: "

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 12
    :cond_3
    throw v1
.end method

.method private declared-synchronized sendCancelNotification()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancelIsNotified:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancelIsNotified:Z

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendCancelMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 3
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result p1

    return p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->sendCancelNotification()V

    :cond_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isFinished:Z

    if-eqz v0, :cond_0

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

.method public onPostProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V
    .locals 0

    return-void
.end method

.method public onPreProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isRequestPreProcessed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isRequestPreProcessed:Z

    .line 4
    invoke-virtual {p0, p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->onPreProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendStartMessage()V

    .line 7
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 8
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->makeRequestWithRetries()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_4
    sget-object v2, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v3, "AsyncHttpRequest"

    const-string v4, "makeRequestWithRetries returned error"

    invoke-interface {v2, v3, v4, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendFinishMessage()V

    .line 14
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 15
    :cond_6
    invoke-virtual {p0, p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->onPostProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V

    .line 16
    iput-boolean v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isFinished:Z

    return-void
.end method

.method public setRequestTag(Ljava/lang/Object;)Lcom/baidu/tts/loopj/AsyncHttpRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0, p1}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method
