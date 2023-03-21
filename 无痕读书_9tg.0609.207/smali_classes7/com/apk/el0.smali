.class public final Lcom/apk/el0;
.super Ljava/lang/Object;
.source "RealBufferedSink.kt"

# interfaces
.implements Lcom/apk/sk0;


# instance fields
.field public final do:Lcom/apk/rk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final for:Lcom/apk/jl0;
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
.method public constructor <init>(Lcom/apk/jl0;)V
    .locals 1
    .param p1    # Lcom/apk/jl0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/el0;->for:Lcom/apk/jl0;

    .line 2
    new-instance p1, Lcom/apk/rk0;

    invoke-direct {p1}, Lcom/apk/rk0;-><init>()V

    iput-object p1, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    return-void
.end method


# virtual methods
.method public class(Lcom/apk/rk0;J)V
    .locals 1
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/rk0;->class(Lcom/apk/rk0;J)V

    .line 4
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    iget-wide v1, v1, Lcom/apk/rk0;->if:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 4
    iget-object v1, p0, Lcom/apk/el0;->for:Lcom/apk/jl0;

    .line 5
    iget-object v2, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    iget-object v3, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 6
    iget-wide v3, v3, Lcom/apk/rk0;->if:J

    .line 7
    invoke-interface {v1, v2, v3, v4}, Lcom/apk/jl0;->class(Lcom/apk/rk0;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/apk/el0;->for:Lcom/apk/jl0;

    invoke-interface {v1}, Lcom/apk/jl0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/apk/el0;->if:Z

    if-nez v0, :cond_3

    :goto_2
    return-void

    .line 10
    :cond_3
    throw v0
.end method

.method public const(Lcom/apk/ll0;)J
    .locals 7
    .param p1    # Lcom/apk/ll0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    const/16 v3, 0x2000

    int-to-long v3, v3

    .line 2
    invoke-interface {p1, v2, v3, v4}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    goto :goto_0
.end method

.method public do()Lcom/apk/rk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    return-object v0
.end method

.method public final(J)Lcom/apk/sk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/apk/rk0;->g(J)Lcom/apk/rk0;

    .line 4
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    iget-wide v1, v0, Lcom/apk/rk0;->if:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    iget-object v3, p0, Lcom/apk/el0;->for:Lcom/apk/jl0;

    invoke-interface {v3, v0, v1, v2}, Lcom/apk/jl0;->class(Lcom/apk/rk0;J)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/el0;->for:Lcom/apk/jl0;

    invoke-interface {v0}, Lcom/apk/jl0;->flush()V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public for()Lcom/apk/sk0;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    iget-wide v1, v0, Lcom/apk/rk0;->if:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/apk/rk0;->do:Lcom/apk/gl0;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/apk/gl0;->else:Lcom/apk/gl0;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 5
    iget v5, v0, Lcom/apk/gl0;->for:I

    const/16 v6, 0x2000

    if-ge v5, v6, :cond_1

    iget-boolean v6, v0, Lcom/apk/gl0;->try:Z

    if-eqz v6, :cond_1

    .line 6
    iget v0, v0, Lcom/apk/gl0;->if:I

    sub-int/2addr v5, v0

    int-to-long v5, v5

    sub-long/2addr v1, v5

    :cond_1
    :goto_0
    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/apk/el0;->for:Lcom/apk/jl0;

    .line 8
    iget-object v3, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 9
    invoke-interface {v0, v3, v1, v2}, Lcom/apk/jl0;->class(Lcom/apk/rk0;J)V

    :cond_2
    return-object p0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public if()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/el0;->for:Lcom/apk/jl0;

    invoke-interface {v0}, Lcom/apk/jl0;->if()Lcom/apk/ml0;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public public(J)Lcom/apk/sk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/apk/rk0;->f(J)Lcom/apk/rk0;

    .line 4
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public this(Ljava/lang/String;)Lcom/apk/sk0;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "string"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/rk0;->j(Ljava/lang/String;)Lcom/apk/rk0;

    .line 4
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/el0;->for:Lcom/apk/jl0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public while(Lcom/apk/uk0;)Lcom/apk/sk0;
    .locals 1
    .param p1    # Lcom/apk/uk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/rk0;->transient(Lcom/apk/uk0;)Lcom/apk/rk0;

    .line 4
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/rk0;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Lcom/apk/sk0;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 8
    invoke-virtual {v0, p1}, Lcom/apk/rk0;->implements([B)Lcom/apk/rk0;

    .line 9
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lcom/apk/sk0;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/rk0;->instanceof([BII)Lcom/apk/rk0;

    .line 14
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Lcom/apk/sk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/rk0;->synchronized(I)Lcom/apk/rk0;

    .line 4
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Lcom/apk/sk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/rk0;->h(I)Lcom/apk/rk0;

    .line 4
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Lcom/apk/sk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/el0;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/el0;->do:Lcom/apk/rk0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/rk0;->i(I)Lcom/apk/rk0;

    .line 4
    invoke-virtual {p0}, Lcom/apk/el0;->for()Lcom/apk/sk0;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
