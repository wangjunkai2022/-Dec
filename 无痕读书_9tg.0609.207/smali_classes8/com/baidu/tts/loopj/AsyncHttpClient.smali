.class public Lcom/baidu/tts/loopj/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/loopj/AsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field public static final DEFAULT_MAX_RETRIES:I = 0x5

.field public static final DEFAULT_RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field public static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final LOG_TAG:Ljava/lang/String; = "AsyncHttpClient"

.field public static log:Lcom/baidu/tts/loopj/LogInterface;


# instance fields
.field public final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public connectTimeout:I

.field public final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public final httpContext:Lorg/apache/http/protocol/HttpContext;

.field public isUrlEncodingEnabled:Z

.field public maxConnections:I

.field public final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/baidu/tts/loopj/RequestHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field public responseTimeout:I

.field public threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/tts/loopj/LogHandler;

    invoke-direct {v0}, Lcom/baidu/tts/loopj/LogHandler;-><init>()V

    sput-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1bb

    .line 2
    invoke-direct {p0, v0, p1, v1}, Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 6
    iput v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->maxConnections:I

    const/16 v1, 0x2710

    .line 7
    iput v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->connectTimeout:I

    .line 8
    iput v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->responseTimeout:I

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->isUrlEncodingEnabled:Z

    .line 10
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 11
    iget v3, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->connectTimeout:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 12
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v4, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->maxConnections:I

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 13
    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 14
    iget v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->responseTimeout:I

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 15
    iget v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->connectTimeout:I

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 16
    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v0, 0x2000

    .line 17
    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 18
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 19
    invoke-virtual {p0, p1, v2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->createConnectionManager(Lorg/apache/http/conn/scheme/SchemeRegistry;Lorg/apache/http/params/BasicHttpParams;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "Custom implementation of #createConnectionManager(SchemeRegistry, BasicHttpParams) returned null"

    .line 20
    invoke-static {v1, v3}, Lcom/baidu/tts/loopj/Utils;->asserts(ZLjava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 22
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 24
    new-instance v1, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v1, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 25
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, p1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 26
    new-instance p1, Lcom/baidu/tts/loopj/AsyncHttpClient$1;

    invoke-direct {p1, p0}, Lcom/baidu/tts/loopj/AsyncHttpClient$1;-><init>(Lcom/baidu/tts/loopj/AsyncHttpClient;)V

    invoke-virtual {v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 27
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/baidu/tts/loopj/AsyncHttpClient$2;

    invoke-direct {v1, p0}, Lcom/baidu/tts/loopj/AsyncHttpClient$2;-><init>(Lcom/baidu/tts/loopj/AsyncHttpClient;)V

    invoke-virtual {p1, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 28
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/baidu/tts/loopj/AsyncHttpClient$3;

    invoke-direct {v1, p0}, Lcom/baidu/tts/loopj/AsyncHttpClient$3;-><init>(Lcom/baidu/tts/loopj/AsyncHttpClient;)V

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    .line 29
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v0, Lcom/baidu/tts/loopj/RetryHandler;

    const/4 v1, 0x5

    const/16 v2, 0x5dc

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/loopj/RetryHandler;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getDefaultSchemeRegistry(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/baidu/tts/loopj/AsyncHttpClient;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/baidu/tts/loopj/AsyncHttpClient;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->cancelRequests(Ljava/util/List;Z)V

    return-void
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    return-object p1
.end method

.method public static allowRetryExceptionClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/baidu/tts/loopj/RetryHandler;->addClassToWhitelist(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static blockRetryExceptionClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/baidu/tts/loopj/RetryHandler;->addClassToBlacklist(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private cancelRequests(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/tts/loopj/RequestHandle;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/RequestHandle;

    .line 9
    invoke-virtual {v0, p2}, Lcom/baidu/tts/loopj/RequestHandle;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static endEntityViaReflection(Lorg/apache/http/HttpEntity;)V
    .locals 7

    .line 1
    instance-of v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lorg/apache/http/entity/HttpEntityWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wrappedEntity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/HttpEntity;

    if-eqz p0, :cond_2

    .line 7
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 8
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "wrappedEntity consume"

    invoke-interface {v0, v1, v2, p0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static getDefaultSchemeRegistry(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 4

    const-string v0, "AsyncHttpClient"

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const/16 p1, 0x50

    .line 1
    sget-object v2, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v3, "Invalid HTTP port number specified, defaulting to 80"

    invoke-interface {v2, v0, v3}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ge p2, v1, :cond_1

    const/16 p2, 0x1bb

    .line 2
    sget-object v1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-interface {v1, v0, v2}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    .line 3
    invoke-static {}, Lcom/baidu/tts/loopj/MySSLSocketFactory;->getFixedSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object p0

    .line 5
    :goto_0
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 6
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    const-string v3, "http"

    invoke-direct {v1, v3, v2, p1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 7
    new-instance p1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "https"

    invoke-direct {p1, v1, p0, p2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-object v0
.end method

.method public static getUrlWithQueryString(ZLjava/lang/String;Lcom/baidu/tts/loopj/RequestParams;)Ljava/lang/String;
    .locals 9

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    const-string p0, "UTF-8"

    .line 1
    invoke-static {p1, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "getUrlWithQueryString encoding URL"

    invoke-interface {v0, v1, v2, p0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p2}, Lcom/baidu/tts/loopj/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    .line 7
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "?"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p2, "&"

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1, p0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public static isInputStreamGZIPCompressed(Ljava/io/PushbackInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 1
    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    .line 2
    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 3
    aget-byte p0, v2, v0

    and-int/lit16 p0, p0, 0xff

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    shl-int/lit8 v2, v2, 0x8

    const v5, 0xff00

    and-int/2addr v2, v5

    or-int/2addr p0, v2

    if-ne v3, v1, :cond_1

    const v1, 0x8b1f

    if-ne v1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private paramsToEntity(Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/baidu/tts/loopj/RequestParams;->getEntity(Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {p2, v1, v0, v0, p1}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static silentCloseInputStream(Ljava/io/InputStream;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Cannot close input stream"

    invoke-interface {v0, v1, v2, p0}, Lcom/baidu/tts/loopj/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static silentCloseOutputStream(Ljava/io/OutputStream;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Cannot close output stream"

    invoke-interface {v0, v1, v2, p0}, Lcom/baidu/tts/loopj/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelAllRequests(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/tts/loopj/RequestHandle;

    .line 3
    invoke-virtual {v2, p1}, Lcom/baidu/tts/loopj/RequestHandle;->cancel(Z)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string p2, "AsyncHttpClient"

    const-string v0, "Passed null Context to cancelRequests"

    invoke-interface {p1, p2, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 5
    new-instance p1, Lcom/baidu/tts/loopj/AsyncHttpClient$4;

    invoke-direct {p1, p0, v0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient$4;-><init>(Lcom/baidu/tts/loopj/AsyncHttpClient;Ljava/util/List;Z)V

    .line 6
    iget-object p2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->cancelRequests(Ljava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public cancelRequestsByTAG(Ljava/lang/Object;Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string p2, "AsyncHttpClient"

    const-string v0, "cancelRequestsByTAG, passed TAG is null, cannot proceed"

    invoke-interface {p1, p2, v0}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/tts/loopj/RequestHandle;

    .line 4
    invoke-virtual {v2}, Lcom/baidu/tts/loopj/RequestHandle;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v2, p2}, Lcom/baidu/tts/loopj/RequestHandle;->cancel(Z)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public clearCredentialsProvider()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CredentialsProvider;->clear()V

    return-void
.end method

.method public createConnectionManager(Lorg/apache/http/conn/scheme/SchemeRegistry;Lorg/apache/http/params/BasicHttpParams;)Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, p2, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 2
    new-instance v3, Lcom/baidu/tts/loopj/HttpDelete;

    invoke-virtual {p0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/baidu/tts/loopj/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 3
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 12
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lcom/baidu/tts/loopj/HttpDelete;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/baidu/tts/loopj/HttpDelete;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 9
    new-instance v3, Lcom/baidu/tts/loopj/HttpDelete;

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/baidu/tts/loopj/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/baidu/tts/loopj/HttpDelete;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 4
    new-instance v3, Lcom/baidu/tts/loopj/HttpDelete;

    invoke-virtual {p0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/baidu/tts/loopj/HttpDelete;-><init>(Ljava/net/URI;)V

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;)V
    .locals 7

    .line 7
    new-instance v3, Lcom/baidu/tts/loopj/HttpDelete;

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p1, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/baidu/tts/loopj/RequestParams;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/baidu/tts/loopj/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lcom/baidu/tts/loopj/HttpGet;

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/baidu/tts/loopj/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/baidu/tts/loopj/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 8
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lcom/baidu/tts/loopj/HttpGet;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/baidu/tts/loopj/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 5
    new-instance v3, Lcom/baidu/tts/loopj/HttpGet;

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/baidu/tts/loopj/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/baidu/tts/loopj/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {v3, p3}, Lorg/apache/http/message/AbstractHttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->connectTimeout:I

    return v0
.end method

.method public getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public getLogInterface()Lcom/baidu/tts/loopj/LogInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    return-object v0
.end method

.method public getLoggingLevel()I
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/LogInterface;->getLoggingLevel()I

    move-result v0

    return v0
.end method

.method public getMaxConnections()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->maxConnections:I

    return v0
.end method

.method public getResponseTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->responseTimeout:I

    return v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/baidu/tts/loopj/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 5
    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/baidu/tts/loopj/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {v3, p3}, Lorg/apache/http/message/AbstractHttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public head(Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public head(Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/LogInterface;->isLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public isUrlEncodingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->isUrlEncodingEnabled:Z

    return v0
.end method

.method public newAsyncHttpRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/AsyncHttpRequest;
    .locals 0

    .line 1
    new-instance p4, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/baidu/tts/loopj/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)V

    return-object p4
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 6

    .line 3
    invoke-direct {p0, p3, p4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->paramsToEntity(Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lcom/baidu/tts/loopj/HttpPatch;

    invoke-virtual {p0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/baidu/tts/loopj/HttpPatch;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 8

    .line 5
    new-instance v0, Lcom/baidu/tts/loopj/HttpPatch;

    invoke-virtual {p0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/baidu/tts/loopj/HttpPatch;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v4

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {v4, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v1, p0

    move-object v5, p5

    move-object v6, p6

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public patch(Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public patch(Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 6

    .line 3
    invoke-direct {p0, p3, p4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->paramsToEntity(Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/baidu/tts/loopj/RequestParams;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 5
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    if-eqz p4, :cond_0

    .line 6
    invoke-direct {p0, p4, p6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->paramsToEntity(Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 8

    .line 9
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v4

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {v4, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v1, p0

    move-object v5, p5

    move-object v6, p6

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 6

    .line 3
    invoke-direct {p0, p3, p4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->paramsToEntity(Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 7

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 8

    .line 5
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v4

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {v4, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v1, p0

    move-object v5, p5

    move-object v6, p6

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/tts/loopj/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/tts/loopj/RequestParams;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public removeAllHeaders()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 3

    if-eqz p3, :cond_8

    if-eqz p5, :cond_7

    .line 1
    invoke-interface {p5}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->getUseSynchronousMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->getUsePoolThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 3
    instance-of v0, p3, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Content-Type"

    invoke-interface {p3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Passed contentType will be ignored because HttpEntity sets content type"

    invoke-interface {v0, v1, v2}, Lcom/baidu/tts/loopj/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "Content-Type"

    .line 5
    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_3
    :goto_1
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->setRequestHeaders([Lorg/apache/http/Header;)V

    .line 7
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->setRequestURI(Ljava/net/URI;)V

    .line 8
    invoke-virtual/range {p0 .. p6}, Lcom/baidu/tts/loopj/AsyncHttpClient;->newAsyncHttpRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;Landroid/content/Context;)Lcom/baidu/tts/loopj/AsyncHttpRequest;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 10
    new-instance p2, Lcom/baidu/tts/loopj/RequestHandle;

    invoke-direct {p2, p1}, Lcom/baidu/tts/loopj/RequestHandle;-><init>(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V

    if-eqz p6, :cond_6

    .line 11
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->requestMap:Ljava/util/Map;

    monitor-enter p1

    .line 12
    :try_start_0
    iget-object p3, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_4

    .line 13
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 14
    iget-object p4, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {p4, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 18
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/baidu/tts/loopj/RequestHandle;

    invoke-virtual {p3}, Lcom/baidu/tts/loopj/RequestHandle;->shouldBeGarbageCollected()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 21
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_6
    return-object p2

    .line 22
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ResponseHandler must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HttpUriRequest must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuthenticationPreemptive(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v0, Lcom/baidu/tts/loopj/PreemptiveAuthorizationHttpRequestInterceptor;

    invoke-direct {v0}, Lcom/baidu/tts/loopj/PreemptiveAuthorizationHttpRequestInterceptor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    const-class v0, Lcom/baidu/tts/loopj/PreemptiveAuthorizationHttpRequestInterceptor;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;Z)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;Z)V
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3, v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 6
    invoke-virtual {p0, p4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setAuthenticationPreemptive(Z)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;Z)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    .line 1
    :cond_0
    iput p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->connectTimeout:I

    .line 2
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .line 3
    iget v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->connectTimeout:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 4
    iget v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->connectTimeout:I

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string p2, "AsyncHttpClient"

    const-string v0, "Provided credentials are null, not setting"

    invoke-interface {p1, p2, v0}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    :cond_1
    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    return-void
.end method

.method public setEnableRedirects(Z)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p1, p1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setEnableRedirects(ZZZ)V

    return-void
.end method

.method public setEnableRedirects(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setEnableRedirects(ZZZ)V

    return-void
.end method

.method public setEnableRedirects(ZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "http.protocol.reject-relative-redirect"

    invoke-interface {v0, v1, p2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 2
    iget-object p2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {p2, v0, p3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 3
    iget-object p2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance p3, Lcom/baidu/tts/loopj/MyRedirectHandler;

    invoke-direct {p3, p1}, Lcom/baidu/tts/loopj/MyRedirectHandler;-><init>(Z)V

    invoke-virtual {p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    return-void
.end method

.method public setLogInterface(Lcom/baidu/tts/loopj/LogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sput-object p1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    :cond_0
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    invoke-interface {v0, p1}, Lcom/baidu/tts/loopj/LogInterface;->setLoggingEnabled(Z)V

    return-void
.end method

.method public setLoggingLevel(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    invoke-interface {v0, p1}, Lcom/baidu/tts/loopj/LogInterface;->setLoggingLevel(I)V

    return-void
.end method

.method public setMaxConnections(I)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 p1, 0xa

    .line 1
    :cond_0
    iput p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->maxConnections:I

    .line 2
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .line 3
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->maxConnections:I

    invoke-direct {v0, v1}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {p1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    return-void
.end method

.method public setMaxRetriesAndTimeout(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/baidu/tts/loopj/RetryHandler;

    invoke-direct {v1, p1, p2}, Lcom/baidu/tts/loopj/RetryHandler;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 2
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const-string p2, "http.route.default-proxy"

    .line 3
    invoke-interface {p1, p2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    new-instance v1, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p3, p4}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 5
    new-instance p3, Lorg/apache/http/HttpHost;

    invoke-direct {p3, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const-string p2, "http.route.default-proxy"

    .line 7
    invoke-interface {p1, p2, p3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    return-void
.end method

.method public setResponseTimeout(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    .line 1
    :cond_0
    iput p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->responseTimeout:I

    .line 2
    iget-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .line 3
    iget v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->responseTimeout:I

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setConnectTimeout(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->setResponseTimeout(I)V

    return-void
.end method

.method public setURLEncodingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->isUrlEncodingEnabled:Z

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method
