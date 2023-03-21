.class public final Lcom/apk/vh0$if;
.super Lcom/apk/wk0;
.source "Exchange.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/vh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation


# instance fields
.field public final case:J

.field public final synthetic else:Lcom/apk/vh0;

.field public for:Z

.field public if:J

.field public new:Z

.field public try:Z


# direct methods
.method public constructor <init>(Lcom/apk/vh0;Lcom/apk/ll0;J)V
    .locals 1
    .param p1    # Lcom/apk/vh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ll0;",
            "J)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/apk/vh0$if;->else:Lcom/apk/vh0;

    .line 2
    invoke-direct {p0, p2}, Lcom/apk/wk0;-><init>(Lcom/apk/ll0;)V

    iput-wide p3, p0, Lcom/apk/vh0$if;->case:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/apk/vh0$if;->for:Z

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/apk/vh0$if;->for(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_0
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
    iget-boolean v0, p0, Lcom/apk/vh0$if;->try:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/vh0$if;->try:Z

    .line 3
    :try_start_0
    invoke-super {p0}, Lcom/apk/wk0;->close()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/apk/vh0$if;->for(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/apk/vh0$if;->for(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final for(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/vh0$if;->new:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/vh0$if;->new:Z

    if-nez p1, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/apk/vh0$if;->for:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/apk/vh0$if;->for:Z

    .line 5
    iget-object v0, p0, Lcom/apk/vh0$if;->else:Lcom/apk/vh0;

    .line 6
    iget-object v1, v0, Lcom/apk/vh0;->new:Lcom/apk/og0;

    .line 7
    iget-object v0, v0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    if-eqz v1, :cond_1

    const-string v1, "call"

    .line 8
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/apk/vh0$if;->else:Lcom/apk/vh0;

    iget-wide v1, p0, Lcom/apk/vh0$if;->if:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/apk/vh0;->do(JZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public import(Lcom/apk/rk0;J)J
    .locals 7
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
    iget-boolean v0, p0, Lcom/apk/vh0$if;->try:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/wk0;->do:Lcom/apk/ll0;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide p1

    .line 4
    iget-boolean p3, p0, Lcom/apk/vh0$if;->for:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Lcom/apk/vh0$if;->for:Z

    .line 6
    iget-object p3, p0, Lcom/apk/vh0$if;->else:Lcom/apk/vh0;

    .line 7
    iget-object p3, p3, Lcom/apk/vh0;->new:Lcom/apk/og0;

    .line 8
    iget-object v1, p0, Lcom/apk/vh0$if;->else:Lcom/apk/vh0;

    .line 9
    iget-object v1, v1, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    if-eqz p3, :cond_0

    const-string p3, "call"

    .line 10
    invoke-static {v1, p3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    const-wide/16 v1, -0x1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    .line 11
    invoke-virtual {p0, v0}, Lcom/apk/vh0$if;->for(Ljava/io/IOException;)Ljava/io/IOException;

    return-wide v1

    .line 12
    :cond_2
    iget-wide v3, p0, Lcom/apk/vh0$if;->if:J

    add-long/2addr v3, p1

    .line 13
    iget-wide v5, p0, Lcom/apk/vh0$if;->case:J

    cmp-long p3, v5, v1

    if-eqz p3, :cond_4

    iget-wide v1, p0, Lcom/apk/vh0$if;->case:J

    cmp-long p3, v3, v1

    if-gtz p3, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/apk/vh0$if;->case:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    :goto_1
    iput-wide v3, p0, Lcom/apk/vh0$if;->if:J

    .line 16
    iget-wide v1, p0, Lcom/apk/vh0$if;->case:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_5

    .line 17
    invoke-virtual {p0, v0}, Lcom/apk/vh0$if;->for(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-wide p1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/apk/vh0$if;->for(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
