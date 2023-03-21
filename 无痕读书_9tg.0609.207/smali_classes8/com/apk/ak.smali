.class public Lcom/apk/ak;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/apk/uj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ak$do;,
        Lcom/apk/ak$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/uj<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final else:Lcom/apk/ak$if;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public volatile case:Z

.field public final do:Lcom/apk/rm;

.field public final for:Lcom/apk/ak$if;

.field public final if:I

.field public new:Ljava/net/HttpURLConnection;

.field public try:Ljava/io/InputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/ak$do;

    invoke-direct {v0}, Lcom/apk/ak$do;-><init>()V

    sput-object v0, Lcom/apk/ak;->else:Lcom/apk/ak$if;

    return-void
.end method

.method public constructor <init>(Lcom/apk/rm;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/ak;->else:Lcom/apk/ak$if;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/apk/ak;->do:Lcom/apk/rm;

    .line 4
    iput p2, p0, Lcom/apk/ak;->if:I

    .line 5
    iput-object v0, p0, Lcom/apk/ak;->for:Lcom/apk/ak$if;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/ak;->case:Z

    return-void
.end method

.method public case(Lcom/apk/ni;Lcom/apk/uj$do;)V
    .locals 7
    .param p1    # Lcom/apk/ni;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/uj$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ni;",
            "Lcom/apk/uj$do<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const-string p1, "HttpUrlFetcher"

    .line 1
    invoke-static {}, Lcom/apk/cs;->if()J

    move-result-wide v0

    const/4 v2, 0x2

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/apk/ak;->do:Lcom/apk/rm;

    .line 3
    iget-object v4, v3, Lcom/apk/rm;->case:Ljava/net/URL;

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v3}, Lcom/apk/rm;->try()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/apk/rm;->case:Ljava/net/URL;

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    iget-object v3, v3, Lcom/apk/rm;->case:Ljava/net/URL;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    iget-object v6, p0, Lcom/apk/ak;->do:Lcom/apk/rm;

    invoke-virtual {v6}, Lcom/apk/rm;->new()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/apk/ak;->for(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v3

    .line 7
    invoke-interface {p2, v3}, Lcom/apk/uj$do;->new(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :goto_1
    const/4 v4, 0x3

    .line 9
    :try_start_1
    invoke-static {p1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 10
    invoke-interface {p2, v3}, Lcom/apk/uj$do;->for(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    :goto_2
    invoke-static {v0, v1}, Lcom/apk/cs;->do(J)D

    :cond_1
    return-void

    .line 13
    :goto_3
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-static {v0, v1}, Lcom/apk/cs;->do(J)D

    :cond_2
    throw p2
.end method

.method public do()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final for(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ge p2, v0, :cond_d

    if-eqz p3, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/apk/hj;

    const-string v0, "In re-direct loop"

    invoke-direct {p3, v0}, Lcom/apk/hj;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/apk/ak;->for:Lcom/apk/ak$if;

    check-cast p3, Lcom/apk/ak$do;

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    .line 4
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    .line 5
    iput-object p3, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    .line 6
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    iget-object v2, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p3, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/apk/ak;->if:I

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 9
    iget-object p3, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/apk/ak;->if:I

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 10
    iget-object p3, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 11
    iget-object p3, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 12
    iget-object p3, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 13
    iget-object p3, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    .line 14
    iget-object p3, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iput-object p3, p0, Lcom/apk/ak;->try:Ljava/io/InputStream;

    .line 15
    iget-boolean p3, p0, Lcom/apk/ak;->case:Z

    if-eqz p3, :cond_3

    return-object v0

    .line 16
    :cond_3
    iget-object p3, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    .line 17
    div-int/lit8 v0, p3, 0x64

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x3

    if-eqz v3, :cond_7

    .line 18
    iget-object p1, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    .line 19
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    .line 21
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    int-to-long p2, p2

    .line 22
    new-instance p4, Lcom/apk/yr;

    invoke-direct {p4, p1, p2, p3}, Lcom/apk/yr;-><init>(Ljava/io/InputStream;J)V

    .line 23
    iput-object p4, p0, Lcom/apk/ak;->try:Ljava/io/InputStream;

    goto :goto_3

    :cond_5
    const-string p2, "HttpUrlFetcher"

    .line 24
    invoke-static {p2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 25
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    .line 26
    :cond_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ak;->try:Ljava/io/InputStream;

    .line 27
    :goto_3
    iget-object p1, p0, Lcom/apk/ak;->try:Ljava/io/InputStream;

    return-object p1

    :cond_7
    if-ne v0, v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_a

    .line 28
    iget-object p3, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    const-string v0, "Location"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 29
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 30
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/apk/ak;->if()V

    add-int/2addr p2, v2

    .line 32
    invoke-virtual {p0, v0, p2, p1, p4}, Lcom/apk/ak;->for(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 33
    :cond_9
    new-instance p1, Lcom/apk/hj;

    const-string p2, "Received empty or null redirect url"

    invoke-direct {p1, p2}, Lcom/apk/hj;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 p1, -0x1

    if-ne p3, p1, :cond_b

    .line 34
    new-instance p1, Lcom/apk/hj;

    invoke-direct {p1, p3}, Lcom/apk/hj;-><init>(I)V

    throw p1

    .line 35
    :cond_b
    new-instance p1, Lcom/apk/hj;

    iget-object p2, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/apk/hj;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 36
    :cond_c
    throw v0

    .line 37
    :cond_d
    new-instance p1, Lcom/apk/hj;

    const-string p2, "Too many (> 5) redirects!"

    invoke-direct {p1, p2}, Lcom/apk/hj;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ak;->try:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/ak;->new:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public try()Lcom/apk/dj;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/dj;->if:Lcom/apk/dj;

    return-object v0
.end method
