.class public Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;
.super Ljava/lang/Object;
.source "JsonConvert.java"

# interfaces
.implements Lcom/apk/nx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/nx<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method private parseClass(Lcom/apk/ch0;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ch0;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p1, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v1}, Lcom/apk/dh0;->break()Ljava/io/Reader;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 3
    const-class v2, Ljava/lang/String;

    if-ne p2, v2, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/apk/dh0;->finally()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    const-class v2, Lorg/json/JSONObject;

    if-ne p2, v2, :cond_3

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/apk/dh0;->finally()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_3
    const-class v2, Lorg/json/JSONArray;

    if-ne p2, v2, :cond_4

    .line 8
    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lcom/apk/dh0;->finally()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_4
    invoke-static {v0, p2}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Lcom/apk/ch0;->close()V

    return-object p2
.end method

.method private parseParameterizedType(Lcom/apk/ch0;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ch0;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p1, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v1}, Lcom/apk/dh0;->break()Ljava/io/Reader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 4
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 5
    const-class v3, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    if-eq v1, v3, :cond_2

    .line 6
    invoke-static {v0, p2}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/apk/ch0;->close()V

    return-object p2

    .line 8
    :cond_2
    const-class v1, Ljava/lang/Void;

    if-ne v2, v1, :cond_3

    .line 9
    const-class p2, Lcom/biquge/ebook/app/helper/req/convert/SimpleResponse;

    invoke-static {v0, p2}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/helper/req/convert/SimpleResponse;

    .line 10
    invoke-virtual {p1}, Lcom/apk/ch0;->close()V

    .line 11
    invoke-virtual {p2}, Lcom/biquge/ebook/app/helper/req/convert/SimpleResponse;->toLzyResponse()Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    invoke-static {v0, p2}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    .line 13
    invoke-virtual {p1}, Lcom/apk/ch0;->close()V

    return-object p2
.end method

.method private parseType(Lcom/apk/ch0;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ch0;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p1, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v1}, Lcom/apk/dh0;->break()Ljava/io/Reader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-static {v0, p2}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/apk/ch0;->close()V

    return-object p2
.end method


# virtual methods
.method public convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ch0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->type:Ljava/lang/reflect/Type;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 3
    const-class v0, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->type:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->parseClass(Lcom/apk/ch0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->type:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1, v0}, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->parseParameterizedType(Lcom/apk/ch0;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 9
    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->parseClass(Lcom/apk/ch0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/biquge/ebook/app/helper/req/convert/JsonConvert;->parseType(Lcom/apk/ch0;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
