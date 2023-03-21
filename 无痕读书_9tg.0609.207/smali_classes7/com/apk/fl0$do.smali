.class public final Lcom/apk/fl0$do;
.super Ljava/io/InputStream;
.source "RealBufferedSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/fl0;->static()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/fl0;


# direct methods
.method public constructor <init>(Lcom/apk/fl0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/fl0$do;->do:Lcom/apk/fl0;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/fl0$do;->do:Lcom/apk/fl0;

    iget-boolean v1, v0, Lcom/apk/fl0;->if:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    iget-wide v0, v0, Lcom/apk/rk0;->if:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/fl0$do;->do:Lcom/apk/fl0;

    invoke-virtual {v0}, Lcom/apk/fl0;->close()V

    return-void
.end method

.method public read()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/apk/fl0$do;->do:Lcom/apk/fl0;

    iget-boolean v1, v0, Lcom/apk/fl0;->if:Z

    if-nez v1, :cond_1

    .line 2
    iget-object v1, v0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    iget-wide v2, v1, Lcom/apk/rk0;->if:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 4
    iget-object v0, v0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    const/16 v2, 0x2000

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/fl0$do;->do:Lcom/apk/fl0;

    .line 6
    iget-object v0, v0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 7
    invoke-virtual {v0}, Lcom/apk/rk0;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 8
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/apk/fl0$do;->do:Lcom/apk/fl0;

    iget-boolean v0, v0, Lcom/apk/fl0;->if:Z

    if-nez v0, :cond_1

    .line 10
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/apk/sb0;->throw(JJJ)V

    .line 11
    iget-object v0, p0, Lcom/apk/fl0$do;->do:Lcom/apk/fl0;

    .line 12
    iget-object v1, v0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 13
    iget-wide v2, v1, Lcom/apk/rk0;->if:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 14
    iget-object v0, v0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    const/16 v2, 0x2000

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/apk/fl0$do;->do:Lcom/apk/fl0;

    .line 16
    iget-object v0, v0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/rk0;->read([BII)I

    move-result p1

    return p1

    .line 18
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/fl0$do;->do:Lcom/apk/fl0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
