.class public Lcom/baidu/tts/loopj/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/loopj/AsyncHttpClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$1;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6

    const-string p2, "Accept-Encoding"

    .line 1
    invoke-interface {p1, p2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gzip"

    .line 2
    invoke-interface {p1, p2, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$1;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    invoke-static {p2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->access$000(Lcom/baidu/tts/loopj/AsyncHttpClient;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$1;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    invoke-static {v5}, Lcom/baidu/tts/loopj/AsyncHttpClient;->access$000(Lcom/baidu/tts/loopj/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Headers were overwritten! (%s | %s) overwrites (%s | %s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AsyncHttpClient"

    invoke-interface {v2, v4, v3}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->removeHeader(Lorg/apache/http/Header;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$1;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    invoke-static {v1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->access$000(Lcom/baidu/tts/loopj/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
