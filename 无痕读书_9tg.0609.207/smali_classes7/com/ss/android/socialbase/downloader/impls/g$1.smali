.class public Lcom/ss/android/socialbase/downloader/impls/g$1;
.super Lcom/ss/android/socialbase/downloader/network/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/g;->downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/InputStream;

.field public final synthetic b:Lcom/apk/ch0;

.field public final synthetic c:Lcom/apk/zf0;

.field public final synthetic d:Lcom/apk/dh0;

.field public final synthetic e:Lcom/ss/android/socialbase/downloader/impls/g;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/io/InputStream;Lcom/apk/ch0;Lcom/apk/zf0;Lcom/apk/dh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->e:Lcom/ss/android/socialbase/downloader/impls/g;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lcom/apk/ch0;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lcom/apk/zf0;

    iput-object p5, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->d:Lcom/apk/dh0;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lcom/apk/ch0;

    invoke-virtual {v0, p1}, Lcom/apk/ch0;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lcom/apk/ch0;

    .line 2
    iget v0, v0, Lcom/apk/ch0;->try:I

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lcom/apk/zf0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apk/zf0;->break()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lcom/apk/zf0;

    invoke-interface {v0}, Lcom/apk/zf0;->cancel()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->d:Lcom/apk/dh0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->d:Lcom/apk/dh0;

    invoke-virtual {v0}, Lcom/apk/dh0;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lcom/apk/zf0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lcom/apk/zf0;

    invoke-interface {v0}, Lcom/apk/zf0;->break()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lcom/apk/zf0;

    invoke-interface {v0}, Lcom/apk/zf0;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
