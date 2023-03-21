.class public Lcom/ss/android/socialbase/downloader/impls/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;


# instance fields
.field public final a:Lcom/ss/android/socialbase/downloader/i/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/i/h<",
            "Ljava/lang/String;",
            "Lcom/apk/xg0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/h;

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/h;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/h;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/xg0;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/h;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/xg0;

    if-eqz v2, :cond_0

    .line 7
    monitor-exit v1

    return-object v2

    .line 8
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->t()Lcom/apk/xg0$do;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/g$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/g$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz v1, :cond_2

    const-string p2, "dns"

    .line 11
    invoke-static {v2, p2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p2, v1, Lcom/apk/xg0$do;->catch:Lcom/apk/ng0;

    invoke-static {v2, p2}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 13
    iput-object p1, v1, Lcom/apk/xg0$do;->extends:Lcom/apk/di0;

    .line 14
    :cond_1
    iput-object v2, v1, Lcom/apk/xg0$do;->catch:Lcom/apk/ng0;

    .line 15
    new-instance p1, Lcom/apk/xg0;

    invoke-direct {p1, v1}, Lcom/apk/xg0;-><init>(Lcom/apk/xg0$do;)V

    .line 16
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/h;

    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 19
    :cond_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception p1

    .line 20
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->s()Lcom/apk/xg0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/apk/zg0$do;

    invoke-direct {p1}, Lcom/apk/zg0$do;-><init>()V

    invoke-virtual {p1, p2}, Lcom/apk/zg0$do;->goto(Ljava/lang/String;)Lcom/apk/zg0$do;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/c;

    .line 4
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    const-string v4, "ss_d_request_host_ip_114"

    .line 5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/apk/zg0$do;->do(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 8
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 9
    invoke-direct {p0, p2, v1}, Lcom/ss/android/socialbase/downloader/impls/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/xg0;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->s()Lcom/apk/xg0;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_7

    .line 11
    invoke-virtual {p1}, Lcom/apk/zg0$do;->if()Lcom/apk/zg0;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Lcom/apk/xg0;->do(Lcom/apk/zg0;)Lcom/apk/zf0;

    move-result-object v5

    .line 13
    move-object p1, v5

    check-cast p1, Lcom/apk/xh0;

    invoke-virtual {p1}, Lcom/apk/xh0;->throw()Lcom/apk/ch0;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 14
    iget-object v6, v4, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-eqz v6, :cond_5

    .line 15
    invoke-virtual {v6}, Lcom/apk/dh0;->for()Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "Content-Encoding"

    .line 16
    invoke-virtual {v4, p2}, Lcom/apk/ch0;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p3, "gzip"

    .line 17
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p1, Ljava/util/zip/GZIPInputStream;

    if-nez p2, :cond_4

    .line 18
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, p2

    goto :goto_2

    :cond_4
    move-object v3, p1

    .line 19
    :goto_2
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/g$1;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/impls/g$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/io/InputStream;Lcom/apk/ch0;Lcom/apk/zf0;Lcom/apk/dh0;)V

    return-object p1

    :cond_5
    return-object v0

    .line 20
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get httpClient"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
