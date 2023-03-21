.class public Lcom/ss/android/socialbase/downloader/impls/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->s()Lcom/apk/xg0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Lcom/apk/zg0$do;

    invoke-direct {v1}, Lcom/apk/zg0$do;-><init>()V

    invoke-virtual {v1, p1}, Lcom/apk/zg0$do;->goto(Ljava/lang/String;)Lcom/apk/zg0$do;

    const/4 p1, 0x0

    const-string v2, "HEAD"

    .line 3
    invoke-virtual {v1, v2, p1}, Lcom/apk/zg0$do;->try(Ljava/lang/String;Lcom/apk/bh0;)Lcom/apk/zg0$do;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/c;

    .line 6
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/apk/zg0$do;->do(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/apk/zg0$do;->if()Lcom/apk/zg0;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/apk/xg0;->do(Lcom/apk/zg0;)Lcom/apk/zf0;

    move-result-object p1

    .line 9
    move-object p2, p1

    check-cast p2, Lcom/apk/xh0;

    invoke-virtual {p2}, Lcom/apk/xh0;->throw()Lcom/apk/ch0;

    move-result-object p2

    if-eqz p2, :cond_2

    const/high16 v0, 0x200000

    .line 10
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/apk/ch0;->close()V

    .line 12
    :cond_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/f$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ss/android/socialbase/downloader/impls/f$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/f;Lcom/apk/ch0;Lcom/apk/zf0;)V

    return-object v0

    .line 13
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get httpClient"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
