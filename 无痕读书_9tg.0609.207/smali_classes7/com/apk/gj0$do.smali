.class public final Lcom/apk/gj0$do;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lcom/apk/jl0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/gj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final do:Lcom/apk/rk0;

.field public for:Z

.field public if:Z

.field public final synthetic new:Lcom/apk/gj0;


# direct methods
.method public constructor <init>(Lcom/apk/gj0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/apk/gj0$do;->for:Z

    .line 2
    new-instance p1, Lcom/apk/rk0;

    invoke-direct {p1}, Lcom/apk/rk0;-><init>()V

    iput-object p1, p0, Lcom/apk/gj0$do;->do:Lcom/apk/rk0;

    return-void
.end method


# virtual methods
.method public class(Lcom/apk/rk0;J)V
    .locals 2
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

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

    move-result-object p3

    const-string v1, "Thread.currentThread()"

    invoke-static {p3, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/gj0$do;->do:Lcom/apk/rk0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/rk0;->class(Lcom/apk/rk0;J)V

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/apk/gj0$do;->do:Lcom/apk/rk0;

    .line 6
    iget-wide p1, p1, Lcom/apk/rk0;->if:J

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_2

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/apk/gj0$do;->for(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 2
    sget-boolean v1, Lcom/apk/jh0;->goto:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Thread "

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MUST NOT hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/apk/gj0$do;->if:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    .line 6
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    invoke-virtual {v1}, Lcom/apk/gj0;->case()Lcom/apk/ti0;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_1
    monitor-exit v0

    .line 8
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 9
    iget-object v0, v0, Lcom/apk/gj0;->goto:Lcom/apk/gj0$do;

    .line 10
    iget-boolean v0, v0, Lcom/apk/gj0$do;->for:Z

    if-nez v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/apk/gj0$do;->do:Lcom/apk/rk0;

    .line 12
    iget-wide v4, v0, Lcom/apk/rk0;->if:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 13
    :goto_2
    iget-object v0, p0, Lcom/apk/gj0$do;->do:Lcom/apk/rk0;

    .line 14
    iget-wide v0, v0, Lcom/apk/rk0;->if:J

    cmp-long v2, v0, v6

    if-lez v2, :cond_6

    .line 15
    invoke-virtual {p0, v3}, Lcom/apk/gj0$do;->for(Z)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 17
    iget-object v4, v0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 18
    iget v5, v0, Lcom/apk/gj0;->const:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 19
    invoke-virtual/range {v4 .. v9}, Lcom/apk/xi0;->extends(IZLcom/apk/rk0;J)V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    monitor-enter v0

    .line 21
    :try_start_2
    iput-boolean v3, p0, Lcom/apk/gj0$do;->if:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    monitor-exit v0

    .line 23
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 24
    iget-object v0, v0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 25
    iget-object v0, v0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    invoke-virtual {v0}, Lcom/apk/hj0;->flush()V

    .line 26
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    invoke-virtual {v0}, Lcom/apk/gj0;->do()V

    return-void

    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 28
    monitor-exit v0

    throw v1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 2
    sget-boolean v1, Lcom/apk/jh0;->goto:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Thread "

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MUST NOT hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    invoke-virtual {v1}, Lcom/apk/gj0;->if()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/apk/gj0$do;->do:Lcom/apk/rk0;

    .line 8
    iget-wide v0, v0, Lcom/apk/rk0;->if:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/apk/gj0$do;->for(Z)V

    .line 10
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 11
    iget-object v0, v0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 12
    iget-object v0, v0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    invoke-virtual {v0}, Lcom/apk/hj0;->flush()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    throw v1
.end method

.method public final for(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 3
    iget-object v1, v1, Lcom/apk/gj0;->break:Lcom/apk/gj0$for;

    .line 4
    invoke-virtual {v1}, Lcom/apk/ok0;->goto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 6
    iget-wide v1, v1, Lcom/apk/gj0;->for:J

    .line 7
    iget-object v3, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 8
    iget-wide v3, v3, Lcom/apk/gj0;->new:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 9
    iget-boolean v1, p0, Lcom/apk/gj0$do;->for:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/apk/gj0$do;->if:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    invoke-virtual {v1}, Lcom/apk/gj0;->case()Lcom/apk/ti0;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    invoke-virtual {v1}, Lcom/apk/gj0;->class()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 11
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 12
    iget-object v1, v1, Lcom/apk/gj0;->break:Lcom/apk/gj0$for;

    .line 13
    invoke-virtual {v1}, Lcom/apk/gj0$for;->class()V

    .line 14
    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    invoke-virtual {v1}, Lcom/apk/gj0;->if()V

    .line 15
    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 16
    iget-wide v1, v1, Lcom/apk/gj0;->new:J

    .line 17
    iget-object v3, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 18
    iget-wide v3, v3, Lcom/apk/gj0;->for:J

    sub-long/2addr v1, v3

    .line 19
    iget-object v3, p0, Lcom/apk/gj0$do;->do:Lcom/apk/rk0;

    .line 20
    iget-wide v3, v3, Lcom/apk/rk0;->if:J

    .line 21
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 22
    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 23
    iget-wide v2, v1, Lcom/apk/gj0;->for:J

    add-long/2addr v2, v9

    .line 24
    iput-wide v2, v1, Lcom/apk/gj0;->for:J

    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/apk/gj0$do;->do:Lcom/apk/rk0;

    .line 26
    iget-wide v1, p1, Lcom/apk/rk0;->if:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmp-long p1, v9, v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    .line 27
    :goto_1
    monitor-exit v0

    .line 28
    iget-object p1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 29
    iget-object p1, p1, Lcom/apk/gj0;->break:Lcom/apk/gj0$for;

    .line 30
    invoke-virtual {p1}, Lcom/apk/ok0;->goto()V

    .line 31
    :try_start_3
    iget-object p1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 32
    iget-object v5, p1, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 33
    iget-object p1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 34
    iget v6, p1, Lcom/apk/gj0;->const:I

    .line 35
    iget-object v8, p0, Lcom/apk/gj0$do;->do:Lcom/apk/rk0;

    invoke-virtual/range {v5 .. v10}, Lcom/apk/xi0;->extends(IZLcom/apk/rk0;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    iget-object p1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 37
    iget-object p1, p1, Lcom/apk/gj0;->break:Lcom/apk/gj0$for;

    .line 38
    invoke-virtual {p1}, Lcom/apk/gj0$for;->class()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 39
    iget-object v0, v0, Lcom/apk/gj0;->break:Lcom/apk/gj0$for;

    .line 40
    invoke-virtual {v0}, Lcom/apk/gj0$for;->class()V

    throw p1

    :catchall_1
    move-exception p1

    .line 41
    :try_start_4
    iget-object v1, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 42
    iget-object v1, v1, Lcom/apk/gj0;->break:Lcom/apk/gj0$for;

    .line 43
    invoke-virtual {v1}, Lcom/apk/gj0$for;->class()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 44
    monitor-exit v0

    throw p1
.end method

.method public if()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/gj0$do;->new:Lcom/apk/gj0;

    .line 2
    iget-object v0, v0, Lcom/apk/gj0;->break:Lcom/apk/gj0$for;

    return-object v0
.end method
