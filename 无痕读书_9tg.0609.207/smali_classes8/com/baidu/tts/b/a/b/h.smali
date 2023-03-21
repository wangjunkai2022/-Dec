.class public Lcom/baidu/tts/b/a/b/h;
.super Lcom/baidu/tts/b/a/b/g;
.source "TtsResponseHandler.java"


# instance fields
.field public a:Lcom/baidu/tts/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/tts/a/a/a<",
            "[B[B>;"
        }
    .end annotation
.end field

.field public b:Lcom/baidu/tts/b/a/b/f$b;

.field public c:Lcom/baidu/tts/m/h;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/g;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    .line 3
    new-instance p1, Lcom/baidu/tts/a/a/a;

    invoke-direct {p1}, Lcom/baidu/tts/a/a/a;-><init>()V

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/a/a/a;

    .line 4
    new-instance p1, Lcom/baidu/tts/a/a/b;

    invoke-direct {p1}, Lcom/baidu/tts/a/a/b;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/a/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/a/a;->a(Lcom/baidu/tts/a/a/c;)V

    .line 6
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/a/a/a;

    invoke-virtual {p1}, Lcom/baidu/tts/a/a/a;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/baidu/tts/f/g;->v:Lcom/baidu/tts/f/g;

    invoke-virtual {p1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "TtsResponseHandler"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseJSON errNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, p1}, Lcom/baidu/tts/m/h;->a(I)V

    if-eqz p1, :cond_0

    .line 9
    sget-object v1, Lcom/baidu/tts/f/g;->w:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->g:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, p1, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_1

    .line 12
    :cond_0
    sget-object p1, Lcom/baidu/tts/f/g;->W:Lcom/baidu/tts/f/g;

    invoke-virtual {p1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, p1}, Lcom/baidu/tts/m/h;->a(Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/baidu/tts/f/g;->X:Lcom/baidu/tts/f/g;

    invoke-virtual {p1}, Lcom/baidu/tts/f/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 15
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, p1}, Lcom/baidu/tts/m/h;->b(I)V

    .line 16
    sget-object p1, Lcom/baidu/tts/f/g;->z:Lcom/baidu/tts/f/g;

    invoke-virtual {p1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 17
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v1, p1}, Lcom/baidu/tts/m/h;->d(I)V

    .line 18
    sget-object p1, Lcom/baidu/tts/f/g;->ay:Lcom/baidu/tts/f/g;

    invoke-virtual {p1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x1f40

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5dc0

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    sget-object v1, Lcom/baidu/tts/f/k;->c:Lcom/baidu/tts/f/k;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/k;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    sget-object v1, Lcom/baidu/tts/f/k;->b:Lcom/baidu/tts/f/k;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/k;)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    sget-object v1, Lcom/baidu/tts/f/k;->a:Lcom/baidu/tts/f/k;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/k;)V

    .line 22
    :goto_0
    invoke-static {}, Lcom/baidu/tts/b/b/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    invoke-static {p1}, Lcom/baidu/tts/b/b/b/d;->a(I)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p1}, Lorg/apache/http/ParseException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private b(Lorg/apache/http/HttpEntity;)V
    .locals 5

    const-string v0, "utf-8"

    const-string v1, "----BD**TTS++LIB"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v2

    .line 3
    :goto_0
    :try_start_1
    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    .line 5
    invoke-static {v2, v1, p1}, Lcom/baidu/tts/tools/CommonUtility;->indexOf([B[BI)I

    move-result p1

    if-gez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object p1

    sget-object v0, Lcom/baidu/tts/f/n;->l:Lcom/baidu/tts/f/n;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    return-void

    .line 8
    :cond_0
    array-length v3, v1

    add-int/2addr v3, p1

    invoke-static {v2, v1, v3}, Lcom/baidu/tts/tools/CommonUtility;->indexOf([B[BI)I

    move-result v3

    if-gez v3, :cond_1

    .line 9
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object p1

    sget-object v0, Lcom/baidu/tts/f/n;->l:Lcom/baidu/tts/f/n;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    return-void

    .line 11
    :cond_1
    array-length v4, v1

    add-int/2addr p1, v4

    invoke-static {v2, p1, v3}, Lcom/baidu/tts/tools/CommonUtility;->copyBytesOfRange([BII)[B

    move-result-object p1

    .line 12
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/baidu/tts/b/a/b/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 14
    :goto_2
    array-length p1, v1

    add-int/2addr p1, v3

    invoke-static {v2, v1, p1}, Lcom/baidu/tts/tools/CommonUtility;->indexOf([B[BI)I

    move-result p1

    if-ltz p1, :cond_2

    .line 15
    array-length v0, v1

    add-int/2addr v3, v0

    invoke-static {v2, v3, p1}, Lcom/baidu/tts/tools/CommonUtility;->copyBytesOfRange([BII)[B

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->a([B)V

    :cond_2
    return-void
.end method

.method private c(Lorg/apache/http/HttpEntity;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/baidu/tts/f/d;->c:Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, Lcom/baidu/tts/f/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lorg/apache/http/ParseException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/b/h;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 0

    const-string p1, "application/json"

    .line 2
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p4}, Lcom/baidu/tts/b/a/b/h;->c(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p4}, Lcom/baidu/tts/b/a/b/h;->b(Lorg/apache/http/HttpEntity;)V

    :goto_0
    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Throwable;)V
    .locals 0

    const-string p2, "onFailure error = "

    .line 26
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TtsResponseHandler"

    invoke-static {p3, p2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object p2

    sget-object p3, Lcom/baidu/tts/f/n;->b:Lcom/baidu/tts/f/n;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p1, p4, p5}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/m/h;

    invoke-virtual {p2, p1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b/f$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/h;->b:Lcom/baidu/tts/b/a/b/f$b;

    return-void
.end method
