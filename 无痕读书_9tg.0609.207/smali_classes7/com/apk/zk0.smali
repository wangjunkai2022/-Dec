.class public final Lcom/apk/zk0;
.super Ljava/lang/Object;
.source "InflaterSource.kt"

# interfaces
.implements Lcom/apk/ll0;


# instance fields
.field public do:I

.field public final for:Lcom/apk/tk0;

.field public if:Z

.field public final new:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Lcom/apk/tk0;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1    # Lcom/apk/tk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/Inflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/zk0;->for:Lcom/apk/tk0;

    iput-object p2, p0, Lcom/apk/zk0;->new:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/zk0;->if:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/zk0;->new:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/apk/zk0;->if:Z

    .line 4
    iget-object v0, p0, Lcom/apk/zk0;->for:Lcom/apk/tk0;

    invoke-interface {v0}, Lcom/apk/ll0;->close()V

    return-void
.end method

.method public if()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/zk0;->for:Lcom/apk/tk0;

    invoke-interface {v0}, Lcom/apk/ll0;->if()Lcom/apk/ml0;

    move-result-object v0

    return-object v0
.end method

.method public import(Lcom/apk/rk0;J)J
    .locals 9
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :goto_0
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    cmp-long v4, p2, v1

    if-ltz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_c

    .line 2
    iget-boolean v5, p0, Lcom/apk/zk0;->if:Z

    xor-int/2addr v5, v3

    if-eqz v5, :cond_b

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/apk/rk0;->protected(I)Lcom/apk/gl0;

    move-result-object v3

    .line 4
    iget v4, v3, Lcom/apk/gl0;->for:I

    rsub-int v4, v4, 0x2000

    int-to-long v4, v4

    .line 5
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 6
    iget-object v4, p0, Lcom/apk/zk0;->new:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/apk/zk0;->for:Lcom/apk/tk0;

    invoke-interface {v4}, Lcom/apk/tk0;->else()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object v4, p0, Lcom/apk/zk0;->for:Lcom/apk/tk0;

    invoke-interface {v4}, Lcom/apk/tk0;->do()Lcom/apk/rk0;

    move-result-object v4

    iget-object v4, v4, Lcom/apk/rk0;->do:Lcom/apk/gl0;

    invoke-static {v4}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 9
    iget v6, v4, Lcom/apk/gl0;->for:I

    iget v7, v4, Lcom/apk/gl0;->if:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/apk/zk0;->do:I

    .line 10
    iget-object v8, p0, Lcom/apk/zk0;->new:Ljava/util/zip/Inflater;

    iget-object v4, v4, Lcom/apk/gl0;->do:[B

    invoke-virtual {v8, v4, v7, v6}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 11
    :goto_2
    iget-object v4, p0, Lcom/apk/zk0;->new:Ljava/util/zip/Inflater;

    iget-object v6, v3, Lcom/apk/gl0;->do:[B

    iget v7, v3, Lcom/apk/gl0;->for:I

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v4

    .line 12
    iget v5, p0, Lcom/apk/zk0;->do:I

    if-nez v5, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    iget-object v6, p0, Lcom/apk/zk0;->new:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v6

    sub-int/2addr v5, v6

    .line 14
    iget v6, p0, Lcom/apk/zk0;->do:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/apk/zk0;->do:I

    .line 15
    iget-object v6, p0, Lcom/apk/zk0;->for:Lcom/apk/tk0;

    int-to-long v7, v5

    invoke-interface {v6, v7, v8}, Lcom/apk/tk0;->skip(J)V

    :goto_3
    if-lez v4, :cond_5

    .line 16
    iget v5, v3, Lcom/apk/gl0;->for:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/apk/gl0;->for:I

    .line 17
    iget-wide v5, p1, Lcom/apk/rk0;->if:J

    int-to-long v3, v4

    add-long/2addr v5, v3

    .line 18
    iput-wide v5, p1, Lcom/apk/rk0;->if:J

    goto :goto_5

    .line 19
    :cond_5
    iget v4, v3, Lcom/apk/gl0;->if:I

    iget v5, v3, Lcom/apk/gl0;->for:I

    if-ne v4, v5, :cond_6

    .line 20
    invoke-virtual {v3}, Lcom/apk/gl0;->do()Lcom/apk/gl0;

    move-result-object v4

    iput-object v4, p1, Lcom/apk/rk0;->do:Lcom/apk/gl0;

    .line 21
    invoke-static {v3}, Lcom/apk/hl0;->do(Lcom/apk/gl0;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    move-wide v3, v1

    :goto_5
    cmp-long v5, v3, v1

    if-lez v5, :cond_7

    return-wide v3

    .line 22
    :cond_7
    iget-object v1, p0, Lcom/apk/zk0;->new:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/apk/zk0;->new:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    .line 23
    :cond_8
    iget-object v1, p0, Lcom/apk/zk0;->for:Lcom/apk/tk0;

    invoke-interface {v1}, Lcom/apk/tk0;->else()Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_6
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 25
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string p1, "byteCount < 0: "

    .line 26
    invoke-static {p1, p2, p3}, Lcom/apk/goto;->for(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
