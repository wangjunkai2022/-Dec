.class public final Lcom/apk/pk0;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lcom/apk/jl0;


# instance fields
.field public final synthetic do:Lcom/apk/ok0;

.field public final synthetic if:Lcom/apk/jl0;


# direct methods
.method public constructor <init>(Lcom/apk/ok0;Lcom/apk/jl0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/jl0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/pk0;->do:Lcom/apk/ok0;

    iput-object p2, p0, Lcom/apk/pk0;->if:Lcom/apk/jl0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public class(Lcom/apk/rk0;J)V
    .locals 7
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p1, Lcom/apk/rk0;->if:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/apk/sb0;->throw(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4

    .line 3
    iget-object v2, p1, Lcom/apk/rk0;->do:Lcom/apk/gl0;

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    :goto_1
    const/high16 v3, 0x10000

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    .line 4
    iget v3, v2, Lcom/apk/gl0;->for:I

    iget v4, v2, Lcom/apk/gl0;->if:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    move-wide v0, p2

    goto :goto_2

    .line 5
    :cond_0
    iget-object v2, v2, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/apk/pk0;->do:Lcom/apk/ok0;

    .line 7
    invoke-virtual {v2}, Lcom/apk/ok0;->goto()V

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/apk/pk0;->if:Lcom/apk/jl0;

    invoke-interface {v3, p1, v0, v1}, Lcom/apk/jl0;->class(Lcom/apk/rk0;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v2}, Lcom/apk/ok0;->this()Z

    move-result v3

    if-nez v3, :cond_2

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v2, p1}, Lcom/apk/ok0;->break(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    .line 11
    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    invoke-virtual {v2}, Lcom/apk/ok0;->this()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v2, p1}, Lcom/apk/ok0;->break(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    .line 14
    :goto_3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_4
    invoke-virtual {v2}, Lcom/apk/ok0;->this()Z

    move-result p2

    .line 16
    throw p1

    :cond_4
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/pk0;->do:Lcom/apk/ok0;

    .line 2
    invoke-virtual {v0}, Lcom/apk/ok0;->goto()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/apk/pk0;->if:Lcom/apk/jl0;

    invoke-interface {v1}, Lcom/apk/jl0;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/apk/ok0;->this()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/ok0;->break(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 6
    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lcom/apk/ok0;->this()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lcom/apk/ok0;->break(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    .line 9
    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_1
    invoke-virtual {v0}, Lcom/apk/ok0;->this()Z

    move-result v0

    .line 11
    throw v1
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/pk0;->do:Lcom/apk/ok0;

    .line 2
    invoke-virtual {v0}, Lcom/apk/ok0;->goto()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/apk/pk0;->if:Lcom/apk/jl0;

    invoke-interface {v1}, Lcom/apk/jl0;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/apk/ok0;->this()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/ok0;->break(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 6
    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lcom/apk/ok0;->this()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lcom/apk/ok0;->break(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    .line 9
    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_1
    invoke-virtual {v0}, Lcom/apk/ok0;->this()Z

    move-result v0

    .line 11
    throw v1
.end method

.method public if()Lcom/apk/ml0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/pk0;->do:Lcom/apk/ok0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "AsyncTimeout.sink("

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/pk0;->if:Lcom/apk/jl0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
