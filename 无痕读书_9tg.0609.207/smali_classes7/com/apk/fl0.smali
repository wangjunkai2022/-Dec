.class public final Lcom/apk/fl0;
.super Ljava/lang/Object;
.source "RealBufferedSource.kt"

# interfaces
.implements Lcom/apk/tk0;


# instance fields
.field public final do:Lcom/apk/rk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final for:Lcom/apk/ll0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public if:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/ll0;)V
    .locals 1
    .param p1    # Lcom/apk/ll0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    .line 2
    new-instance p1, Lcom/apk/rk0;

    invoke-direct {p1}, Lcom/apk/rk0;-><init>()V

    iput-object p1, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    return-void
.end method


# virtual methods
.method public break()I
    .locals 3

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/fl0;->native(J)V

    .line 2
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/rk0;->readInt()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public case()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 2
    iget-object v1, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    invoke-virtual {v0, v1}, Lcom/apk/rk0;->const(Lcom/apk/ll0;)J

    .line 3
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 4
    invoke-virtual {v0}, Lcom/apk/rk0;->case()[B

    move-result-object v0

    return-object v0
.end method

.method public catch(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "charset"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 2
    iget-object v1, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    invoke-virtual {v0, v1}, Lcom/apk/rk0;->const(Lcom/apk/ll0;)J

    .line 3
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 4
    invoke-virtual {v0, p1}, Lcom/apk/rk0;->catch(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/apk/fl0;->if:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/fl0;->if:Z

    .line 3
    iget-object v0, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    invoke-interface {v0}, Lcom/apk/ll0;->close()V

    .line 4
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 5
    iget-wide v1, v0, Lcom/apk/rk0;->if:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/apk/rk0;->skip(J)V

    :goto_0
    return-void
.end method

.method public do()Lcom/apk/rk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    return-object v0
.end method

.method public else()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/apk/fl0;->if:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/rk0;->else()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    .line 4
    iget-object v2, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    const/16 v3, 0x2000

    int-to-long v3, v3

    .line 5
    invoke-interface {v0, v2, v3, v4}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public for(BJJ)J
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/apk/fl0;->if:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v0, v2, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, p4, p2

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    :goto_2
    const-wide/16 v0, -0x1

    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    .line 2
    iget-object v2, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/apk/rk0;->extends(BJJ)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    move-wide v0, v2

    goto :goto_3

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 5
    iget-wide v3, v2, Lcom/apk/rk0;->if:J

    cmp-long v5, v3, p4

    if-gez v5, :cond_4

    .line 6
    iget-object v5, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    const/16 v6, 0x2000

    int-to-long v6, v6

    invoke-interface {v5, v2, v6, v7}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v5

    cmp-long v2, v5, v0

    if-nez v2, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_2

    :cond_4
    :goto_3
    return-wide v0

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public goto(J)Ljava/lang/String;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    add-long v4, p1, v0

    :goto_1
    const/16 v6, 0xa

    int-to-byte v12, v6

    const-wide/16 v8, 0x0

    move-object v6, p0

    move v7, v12

    move-wide v10, v4

    .line 1
    invoke-virtual/range {v6 .. v11}, Lcom/apk/fl0;->for(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    .line 2
    iget-object p1, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    invoke-static {p1, v6, v7}, Lcom/apk/nl0;->do(Lcom/apk/rk0;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    .line 4
    invoke-virtual {p0, v4, v5}, Lcom/apk/fl0;->throw(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    sub-long v6, v4, v0

    .line 6
    invoke-virtual {v2, v6, v7}, Lcom/apk/rk0;->default(J)B

    move-result v2

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v2, v3, :cond_3

    add-long/2addr v0, v4

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/apk/fl0;->throw(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 9
    invoke-virtual {v0, v4, v5}, Lcom/apk/rk0;->default(J)B

    move-result v0

    if-ne v0, v12, :cond_3

    .line 10
    iget-object p1, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 11
    invoke-static {p1, v4, v5}, Lcom/apk/nl0;->do(Lcom/apk/rk0;J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 12
    :cond_3
    new-instance v6, Lcom/apk/rk0;

    invoke-direct {v6}, Lcom/apk/rk0;-><init>()V

    .line 13
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    const-wide/16 v2, 0x0

    const/16 v1, 0x20

    .line 14
    iget-wide v4, v0, Lcom/apk/rk0;->if:J

    int-to-long v7, v1

    .line 15
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/apk/rk0;->throws(Lcom/apk/rk0;JJ)Lcom/apk/rk0;

    .line 17
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "\\n not found: limit="

    .line 18
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 20
    iget-wide v2, v2, Lcom/apk/rk0;->if:J

    .line 21
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v6}, Lcom/apk/rk0;->private()Lcom/apk/uk0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/uk0;->new()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "limit < 0: "

    .line 24
    invoke-static {v0, p1, p2}, Lcom/apk/goto;->for(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public if()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    invoke-interface {v0}, Lcom/apk/ll0;->if()Lcom/apk/ml0;

    move-result-object v0

    return-object v0
.end method

.method public import(Lcom/apk/rk0;J)J
    .locals 8
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    iget-boolean v2, p0, Lcom/apk/fl0;->if:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    iget-wide v3, v2, Lcom/apk/rk0;->if:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v0

    if-nez v7, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    const/16 v1, 0x2000

    int-to-long v3, v1

    invoke-interface {v0, v2, v3, v4}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 6
    iget-wide v0, v0, Lcom/apk/rk0;->if:J

    .line 7
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 8
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/rk0;->import(Lcom/apk/rk0;J)J

    move-result-wide v5

    :goto_1
    return-wide v5

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 11
    invoke-static {p1, p2, p3}, Lcom/apk/goto;->for(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/fl0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public native(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/apk/fl0;->throw(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public new(J)Lcom/apk/uk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/apk/fl0;->throw(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/apk/rk0;->new(J)Lcom/apk/uk0;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 2
    iget-wide v1, v0, Lcom/apk/rk0;->if:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    const/16 v2, 0x2000

    int-to-long v2, v2

    invoke-interface {v1, v0, v2, v3}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/rk0;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/fl0;->native(J)V

    .line 2
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/rk0;->readByte()B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/fl0;->native(J)V

    .line 2
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/rk0;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/fl0;->native(J)V

    .line 2
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/rk0;->readShort()S

    move-result v0

    return v0
.end method

.method public return()J
    .locals 5

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/fl0;->native(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    .line 2
    invoke-virtual {p0, v2, v3}, Lcom/apk/fl0;->throw(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3
    iget-object v2, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    int-to-long v3, v0

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/apk/rk0;->default(J)B

    move-result v2

    const/16 v3, 0x30

    int-to-byte v3, v3

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    int-to-byte v3, v3

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/apk/sb0;->while(I)I

    invoke-static {v3}, Lcom/apk/sb0;->while(I)I

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v2, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 7
    invoke-virtual {v0}, Lcom/apk/rk0;->return()J

    move-result-wide v0

    return-wide v0
.end method

.method public skip(J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/apk/fl0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    iget-wide v3, v2, Lcom/apk/rk0;->if:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    const/16 v1, 0x2000

    int-to-long v3, v1

    invoke-interface {v0, v2, v3, v4}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 7
    iget-wide v0, v0, Lcom/apk/rk0;->if:J

    .line 8
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/apk/rk0;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static()Ljava/io/InputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/fl0$do;

    invoke-direct {v0, p0}, Lcom/apk/fl0$do;-><init>(Lcom/apk/fl0;)V

    return-object v0
.end method

.method public super()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/fl0;->goto(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public switch(Lcom/apk/cl0;)I
    .locals 8
    .param p1    # Lcom/apk/cl0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "options"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/fl0;->if:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    invoke-static {v0, p1, v1}, Lcom/apk/nl0;->if(Lcom/apk/rk0;Lcom/apk/cl0;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_2

    .line 4
    iget-object p1, p1, Lcom/apk/cl0;->do:[Lcom/apk/uk0;

    .line 5
    aget-object p1, p1, v0

    .line 6
    invoke-virtual {p1}, Lcom/apk/uk0;->for()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    int-to-long v2, p1

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/apk/rk0;->skip(J)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    .line 10
    iget-object v2, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    const/16 v4, 0x2000

    int-to-long v4, v4

    .line 11
    invoke-interface {v0, v2, v4, v5}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public throw(J)Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 1
    iget-boolean v1, p0, Lcom/apk/fl0;->if:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    iget-wide v2, v1, Lcom/apk/rk0;->if:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    .line 4
    iget-object v2, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    const/16 v3, 0x2000

    int-to-long v3, v3

    invoke-interface {v2, v1, v3, v4}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v0, "byteCount < 0: "

    .line 6
    invoke-static {v0, p1, p2}, Lcom/apk/goto;->for(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/fl0;->for:Lcom/apk/ll0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(J)[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/apk/fl0;->throw(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/fl0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/apk/rk0;->package(J)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method
