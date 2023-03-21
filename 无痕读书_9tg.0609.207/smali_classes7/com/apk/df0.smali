.class public Lcom/apk/df0;
.super Ljava/io/InputStream;
.source "ZipInputStream.java"


# instance fields
.field public do:Lcom/apk/cf0;


# direct methods
.method public constructor <init>(Lcom/apk/cf0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    invoke-virtual {v0}, Lcom/apk/cf0;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    invoke-virtual {v0}, Lcom/apk/cf0;->close()V

    .line 2
    iget-object v0, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    invoke-virtual {v0}, Lcom/apk/cf0;->try()Lcom/apk/sf0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    invoke-virtual {v0}, Lcom/apk/cf0;->try()Lcom/apk/sf0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/sf0;->do()V
    :try_end_0
    .catch Lcom/apk/af0; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    invoke-virtual {v0}, Lcom/apk/cf0;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    invoke-virtual {v1}, Lcom/apk/cf0;->try()Lcom/apk/sf0;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/apk/sf0;->case:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/apk/df0;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/cf0;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    invoke-virtual {v0}, Lcom/apk/cf0;->try()Lcom/apk/sf0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    invoke-virtual {v0}, Lcom/apk/cf0;->try()Lcom/apk/sf0;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, v0, Lcom/apk/sf0;->case:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1

    :cond_1
    :goto_0
    return p3
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/df0;->do:Lcom/apk/cf0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/cf0;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
