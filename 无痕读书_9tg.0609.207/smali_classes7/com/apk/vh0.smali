.class public final Lcom/apk/vh0;
.super Ljava/lang/Object;
.source "Exchange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/vh0$do;,
        Lcom/apk/vh0$if;
    }
.end annotation


# instance fields
.field public final case:Lcom/apk/ji0;

.field public do:Z

.field public final for:Lcom/apk/xh0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final if:Lcom/apk/bi0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final new:Lcom/apk/og0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final try:Lcom/apk/wh0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/xh0;Lcom/apk/og0;Lcom/apk/wh0;Lcom/apk/ji0;)V
    .locals 1
    .param p1    # Lcom/apk/xh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/og0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/wh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/ji0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p4, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    iput-object p2, p0, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iput-object p3, p0, Lcom/apk/vh0;->try:Lcom/apk/wh0;

    iput-object p4, p0, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    .line 2
    invoke-interface {p4}, Lcom/apk/ji0;->try()Lcom/apk/bi0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/vh0;->if:Lcom/apk/bi0;

    return-void
.end method


# virtual methods
.method public final do(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(JZZTE;)TE;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0, p5}, Lcom/apk/vh0;->try(Ljava/io/IOException;)V

    :cond_0
    const-string p1, "call"

    const/4 p2, 0x0

    if-eqz p4, :cond_3

    if-eqz p5, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v1, p0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    invoke-virtual {v0, v1, p5}, Lcom/apk/og0;->if(Lcom/apk/zf0;Ljava/io/IOException;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v1, p0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v1, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    throw p2

    :cond_3
    :goto_0
    if-eqz p3, :cond_6

    if-eqz p5, :cond_4

    .line 5
    iget-object p1, p0, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object p2, p0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    invoke-virtual {p1, p2, p5}, Lcom/apk/og0;->for(Lcom/apk/zf0;Ljava/io/IOException;)V

    goto :goto_1

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v1, p0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    if-eqz v0, :cond_5

    .line 7
    invoke-static {v1, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    throw p2

    .line 8
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    invoke-virtual {p1, p0, p4, p3, p5}, Lcom/apk/xh0;->this(Lcom/apk/vh0;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final for(Z)Lcom/apk/ch0$do;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v0, p1}, Lcom/apk/ji0;->new(Z)Lcom/apk/ch0$do;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "deferredTrailers"

    .line 2
    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p0, p1, Lcom/apk/ch0$do;->const:Lcom/apk/vh0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v1, p0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    invoke-virtual {v0, v1, p1}, Lcom/apk/og0;->for(Lcom/apk/zf0;Ljava/io/IOException;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/apk/vh0;->try(Ljava/io/IOException;)V

    .line 6
    throw p1
.end method

.method public final if(Lcom/apk/zg0;Z)Lcom/apk/jl0;
    .locals 3
    .param p1    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-boolean p2, p0, Lcom/apk/vh0;->do:Z

    .line 2
    iget-object p2, p1, Lcom/apk/zg0;->try:Lcom/apk/bh0;

    .line 3
    invoke-static {p2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/apk/bh0;->do()J

    move-result-wide v0

    .line 4
    iget-object p2, p0, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v2, p0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    if-eqz p2, :cond_0

    const-string p2, "call"

    .line 5
    invoke-static {v2, p2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {p2, p1, v0, v1}, Lcom/apk/ji0;->goto(Lcom/apk/zg0;J)Lcom/apk/jl0;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/apk/vh0$do;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/apk/vh0$do;-><init>(Lcom/apk/vh0;Lcom/apk/jl0;J)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public final new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/vh0;->new:Lcom/apk/og0;

    iget-object v1, p0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    if-eqz v0, :cond_0

    const-string v0, "call"

    .line 2
    invoke-static {v1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final try(Ljava/io/IOException;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/vh0;->try:Lcom/apk/wh0;

    invoke-virtual {v0, p1}, Lcom/apk/wh0;->for(Ljava/io/IOException;)V

    .line 2
    iget-object v0, p0, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v0}, Lcom/apk/ji0;->try()Lcom/apk/bi0;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    .line 3
    monitor-enter v0

    :try_start_0
    const-string v2, "call"

    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v2, p1, Lcom/apk/mj0;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 5
    move-object v2, p1

    check-cast v2, Lcom/apk/mj0;

    iget-object v2, v2, Lcom/apk/mj0;->do:Lcom/apk/ti0;

    sget-object v4, Lcom/apk/ti0;->case:Lcom/apk/ti0;

    if-ne v2, v4, :cond_0

    .line 6
    iget p1, v0, Lcom/apk/bi0;->const:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/apk/bi0;->const:I

    if-le p1, v3, :cond_4

    .line 7
    iput-boolean v3, v0, Lcom/apk/bi0;->this:Z

    .line 8
    iget p1, v0, Lcom/apk/bi0;->catch:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/apk/bi0;->catch:I

    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Lcom/apk/mj0;

    iget-object p1, p1, Lcom/apk/mj0;->do:Lcom/apk/ti0;

    sget-object v2, Lcom/apk/ti0;->else:Lcom/apk/ti0;

    if-ne p1, v2, :cond_1

    .line 10
    iget-boolean p1, v1, Lcom/apk/xh0;->const:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iput-boolean v3, v0, Lcom/apk/bi0;->this:Z

    .line 12
    iget p1, v0, Lcom/apk/bi0;->catch:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/apk/bi0;->catch:I

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/apk/bi0;->catch()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/apk/si0;

    if-eqz v2, :cond_4

    .line 14
    :cond_3
    iput-boolean v3, v0, Lcom/apk/bi0;->this:Z

    .line 15
    iget v2, v0, Lcom/apk/bi0;->class:I

    if-nez v2, :cond_4

    .line 16
    iget-object v1, v1, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 17
    iget-object v2, v0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/apk/bi0;->try(Lcom/apk/xg0;Lcom/apk/fh0;Ljava/io/IOException;)V

    .line 18
    iget p1, v0, Lcom/apk/bi0;->catch:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/apk/bi0;->catch:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
