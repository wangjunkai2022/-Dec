.class public Lcom/baidu/tts/auth/e;
.super Ljava/lang/Object;
.source "OnlineAuth.java"

# interfaces
.implements Lcom/baidu/tts/k/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/auth/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/k/b<",
        "Lcom/baidu/tts/auth/e;",
        "Lcom/baidu/tts/auth/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https"

    .line 2
    iput-object v0, p0, Lcom/baidu/tts/auth/e;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 13
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "grant_type"

    const-string v3, "client_credentials"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_id"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "client_secret"

    invoke-direct {p1, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string p1, "utf-8"

    .line 16
    invoke-static {v0, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "://openapi.baidu.com/oauth/2.0/token"

    const-string v0, "?"

    .line 17
    invoke-static {p3, p2, v0}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p2, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Lcom/baidu/tts/auth/e;)I
    .locals 7

    .line 3
    invoke-virtual {p1}, Lcom/baidu/tts/auth/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/auth/e;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "OnlineAuth"

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/baidu/tts/auth/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/baidu/tts/auth/e;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mAK="

    .line 7
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/tts/auth/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--mSK="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/baidu/tts/auth/e;->c:Ljava/lang/String;

    const-string v5, "--ak2="

    const-string v6, "--sk2="

    invoke-static {v1, v4, v5, v0, v6}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/baidu/tts/auth/e;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/tts/tools/StringTool;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/auth/e;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/baidu/tts/tools/StringTool;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v2

    :cond_1
    const-string p1, "mProductId="

    .line 9
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/baidu/tts/auth/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--productId2="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    return v2

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/baidu/tts/auth/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/auth/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/auth/e;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/auth/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/auth/e;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/auth/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/auth/e;->b:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/baidu/tts/auth/e;->d()Lcom/baidu/tts/auth/e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/tts/auth/e;

    invoke-virtual {p0, p1}, Lcom/baidu/tts/auth/e;->a(Lcom/baidu/tts/auth/e;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/baidu/tts/auth/e$a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "OnlineAuth"

    const-string v1, "enter online auth"

    .line 2
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/baidu/tts/auth/e$a;

    invoke-direct {v1}, Lcom/baidu/tts/auth/e$a;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/baidu/tts/auth/e;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/baidu/tts/auth/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/tts/auth/e;->c:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/baidu/tts/auth/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/baidu/tts/auth/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/tts/auth/e;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/tts/auth/e;->d:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/baidu/tts/auth/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "http"

    .line 8
    iget-object v4, p0, Lcom/baidu/tts/auth/e;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    new-instance v2, Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-direct {v2}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>()V

    :cond_0
    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    const-string v3, "https"

    .line 10
    iget-object v4, p0, Lcom/baidu/tts/auth/e;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    new-instance v2, Lcom/baidu/tts/loopj/SyncHttpClient;

    const/4 v3, 0x1

    const/16 v4, 0x50

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>(ZII)V

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 12
    new-instance v10, Lcom/baidu/tts/auth/e$1;

    invoke-direct {v10, p0, v1}, Lcom/baidu/tts/auth/e$1;-><init>(Lcom/baidu/tts/auth/e;Lcom/baidu/tts/auth/e$a;)V

    invoke-virtual/range {v5 .. v10}, Lcom/baidu/tts/loopj/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v2, v3}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/baidu/tts/auth/e$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 15
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v4, Lcom/baidu/tts/f/n;->a:Lcom/baidu/tts/f/n;

    invoke-virtual {v3, v4, v2}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/baidu/tts/auth/e$a;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/baidu/tts/auth/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/auth/e$a;->a(Ljava/lang/String;)V

    :goto_2
    const-string v2, "end online auth"

    .line 18
    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/auth/e;->c:Ljava/lang/String;

    return-void
.end method
