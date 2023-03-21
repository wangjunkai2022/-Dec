.class public final Lcom/apk/gj0$if;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lcom/apk/ll0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/gj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation


# instance fields
.field public final synthetic case:Lcom/apk/gj0;

.field public final do:Lcom/apk/rk0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public for:Z

.field public final if:Lcom/apk/rk0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final new:J

.field public try:Z


# direct methods
.method public constructor <init>(Lcom/apk/gj0;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/apk/gj0$if;->new:J

    iput-boolean p4, p0, Lcom/apk/gj0$if;->try:Z

    .line 2
    new-instance p1, Lcom/apk/rk0;

    invoke-direct {p1}, Lcom/apk/rk0;-><init>()V

    iput-object p1, p0, Lcom/apk/gj0$if;->do:Lcom/apk/rk0;

    .line 3
    new-instance p1, Lcom/apk/rk0;

    invoke-direct {p1}, Lcom/apk/rk0;-><init>()V

    iput-object p1, p0, Lcom/apk/gj0$if;->if:Lcom/apk/rk0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/apk/gj0$if;->for:Z

    .line 3
    iget-object v1, p0, Lcom/apk/gj0$if;->if:Lcom/apk/rk0;

    .line 4
    iget-wide v1, v1, Lcom/apk/rk0;->if:J

    .line 5
    iget-object v3, p0, Lcom/apk/gj0$if;->if:Lcom/apk/rk0;

    .line 6
    iget-wide v4, v3, Lcom/apk/rk0;->if:J

    .line 7
    invoke-virtual {v3, v4, v5}, Lcom/apk/rk0;->skip(J)V

    .line 8
    iget-object v3, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/apk/gj0$if;->for(J)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    invoke-virtual {v0}, Lcom/apk/gj0;->do()V

    return-void

    .line 13
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1
.end method

.method public final for(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 2
    sget-boolean v1, Lcom/apk/jh0;->goto:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Thread "

    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 5
    iget-object v0, v0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/apk/xi0;->default(J)V

    return-void
.end method

.method public if()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 2
    iget-object v0, v0, Lcom/apk/gj0;->this:Lcom/apk/gj0$for;

    return-object v0
.end method

.method public import(Lcom/apk/rk0;J)J
    .locals 11
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

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_a

    :goto_1
    const/4 v2, 0x0

    .line 1
    iget-object v3, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    monitor-enter v3

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 3
    iget-object v4, v4, Lcom/apk/gj0;->this:Lcom/apk/gj0$for;

    .line 4
    invoke-virtual {v4}, Lcom/apk/ok0;->goto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v4, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    invoke-virtual {v4}, Lcom/apk/gj0;->case()Lcom/apk/ti0;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    iget-object v2, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 7
    iget-object v2, v2, Lcom/apk/gj0;->class:Ljava/io/IOException;

    if-eqz v2, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    new-instance v2, Lcom/apk/mj0;

    iget-object v4, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    invoke-virtual {v4}, Lcom/apk/gj0;->case()Lcom/apk/ti0;

    move-result-object v4

    invoke-static {v4}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-direct {v2, v4}, Lcom/apk/mj0;-><init>(Lcom/apk/ti0;)V

    .line 9
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/apk/gj0$if;->for:Z

    if-nez v4, :cond_9

    .line 10
    iget-object v4, p0, Lcom/apk/gj0$if;->if:Lcom/apk/rk0;

    .line 11
    iget-wide v4, v4, Lcom/apk/rk0;->if:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v0

    if-lez v8, :cond_3

    .line 12
    iget-object v0, p0, Lcom/apk/gj0$if;->if:Lcom/apk/rk0;

    iget-object v1, p0, Lcom/apk/gj0$if;->if:Lcom/apk/rk0;

    .line 13
    iget-wide v4, v1, Lcom/apk/rk0;->if:J

    .line 14
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lcom/apk/rk0;->import(Lcom/apk/rk0;J)J

    move-result-wide v0

    .line 15
    iget-object v4, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 16
    iget-wide v8, v4, Lcom/apk/gj0;->do:J

    add-long/2addr v8, v0

    .line 17
    iput-wide v8, v4, Lcom/apk/gj0;->do:J

    .line 18
    iget-object v4, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 19
    iget-wide v4, v4, Lcom/apk/gj0;->do:J

    .line 20
    iget-object v8, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 21
    iget-wide v8, v8, Lcom/apk/gj0;->if:J

    sub-long/2addr v4, v8

    if-nez v2, :cond_5

    .line 22
    iget-object v8, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 23
    iget-object v8, v8, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 24
    iget-object v8, v8, Lcom/apk/xi0;->native:Lcom/apk/lj0;

    .line 25
    invoke-virtual {v8}, Lcom/apk/lj0;->do()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    cmp-long v10, v4, v8

    if-ltz v10, :cond_5

    .line 26
    iget-object v8, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 27
    iget-object v8, v8, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 28
    iget-object v9, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 29
    iget v9, v9, Lcom/apk/gj0;->const:I

    .line 30
    invoke-virtual {v8, v9, v4, v5}, Lcom/apk/xi0;->private(IJ)V

    .line 31
    iget-object v4, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    iget-object v5, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 32
    iget-wide v8, v5, Lcom/apk/gj0;->do:J

    .line 33
    iput-wide v8, v4, Lcom/apk/gj0;->if:J

    goto :goto_3

    .line 34
    :cond_3
    iget-boolean v0, p0, Lcom/apk/gj0$if;->try:Z

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    .line 35
    iget-object v0, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    invoke-virtual {v0}, Lcom/apk/gj0;->class()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    move-wide v4, v6

    goto :goto_4

    :cond_4
    move-wide v0, v6

    :cond_5
    :goto_3
    const/4 v4, 0x0

    move-wide v4, v0

    const/4 v0, 0x0

    .line 36
    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 37
    iget-object v1, v1, Lcom/apk/gj0;->this:Lcom/apk/gj0$for;

    .line 38
    invoke-virtual {v1}, Lcom/apk/gj0$for;->class()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    monitor-exit v3

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    goto/16 :goto_1

    :cond_6
    cmp-long p1, v4, v6

    if-eqz p1, :cond_7

    .line 40
    invoke-virtual {p0, v4, v5}, Lcom/apk/gj0$if;->for(J)V

    return-wide v4

    :cond_7
    if-nez v2, :cond_8

    return-wide v6

    .line 41
    :cond_8
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    throw v2

    .line 42
    :cond_9
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 43
    :try_start_4
    iget-object p2, p0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 44
    iget-object p2, p2, Lcom/apk/gj0;->this:Lcom/apk/gj0$for;

    .line 45
    invoke-virtual {p2}, Lcom/apk/gj0$for;->class()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 46
    monitor-exit v3

    throw p1

    :cond_a
    const-string p1, "byteCount < 0: "

    .line 47
    invoke-static {p1, p2, p3}, Lcom/apk/goto;->for(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
