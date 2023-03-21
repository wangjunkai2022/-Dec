.class public final Lcom/apk/gj0;
.super Ljava/lang/Object;
.source "Http2Stream.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/gj0$if;,
        Lcom/apk/gj0$do;,
        Lcom/apk/gj0$for;
    }
.end annotation


# instance fields
.field public final break:Lcom/apk/gj0$for;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public case:Z

.field public catch:Lcom/apk/ti0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public class:Ljava/io/IOException;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final const:I

.field public do:J

.field public final else:Lcom/apk/gj0$if;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final final:Lcom/apk/xi0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public for:J

.field public final goto:Lcom/apk/gj0$do;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public if:J

.field public new:J

.field public final this:Lcom/apk/gj0$for;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final try:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/apk/sg0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/apk/xi0;ZZLcom/apk/sg0;)V
    .locals 2
    .param p2    # Lcom/apk/xi0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/apk/sg0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "connection"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/apk/gj0;->const:I

    iput-object p2, p0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 2
    iget-object p1, p2, Lcom/apk/xi0;->public:Lcom/apk/lj0;

    .line 3
    invoke-virtual {p1}, Lcom/apk/lj0;->do()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/apk/gj0;->new:J

    .line 4
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/apk/gj0;->try:Ljava/util/ArrayDeque;

    .line 5
    new-instance p1, Lcom/apk/gj0$if;

    .line 6
    iget-object p2, p0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 7
    iget-object p2, p2, Lcom/apk/xi0;->native:Lcom/apk/lj0;

    .line 8
    invoke-virtual {p2}, Lcom/apk/lj0;->do()I

    move-result p2

    int-to-long v0, p2

    .line 9
    invoke-direct {p1, p0, v0, v1, p4}, Lcom/apk/gj0$if;-><init>(Lcom/apk/gj0;JZ)V

    iput-object p1, p0, Lcom/apk/gj0;->else:Lcom/apk/gj0$if;

    .line 10
    new-instance p1, Lcom/apk/gj0$do;

    invoke-direct {p1, p0, p3}, Lcom/apk/gj0$do;-><init>(Lcom/apk/gj0;Z)V

    iput-object p1, p0, Lcom/apk/gj0;->goto:Lcom/apk/gj0$do;

    .line 11
    new-instance p1, Lcom/apk/gj0$for;

    invoke-direct {p1, p0}, Lcom/apk/gj0$for;-><init>(Lcom/apk/gj0;)V

    iput-object p1, p0, Lcom/apk/gj0;->this:Lcom/apk/gj0$for;

    .line 12
    new-instance p1, Lcom/apk/gj0$for;

    invoke-direct {p1, p0}, Lcom/apk/gj0$for;-><init>(Lcom/apk/gj0;)V

    iput-object p1, p0, Lcom/apk/gj0;->break:Lcom/apk/gj0$for;

    if-eqz p5, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/apk/gj0;->goto()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/apk/gj0;->try:Ljava/util/ArrayDeque;

    invoke-interface {p1, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/apk/gj0;->goto()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final break(Lcom/apk/sg0;Z)V
    .locals 2
    .param p1    # Lcom/apk/sg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "headers"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Thread "

    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST NOT hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/gj0;->case:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-nez p2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/apk/gj0;->else:Lcom/apk/gj0$if;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/apk/gj0;->case:Z

    .line 8
    iget-object v0, p0, Lcom/apk/gj0;->try:Ljava/util/ArrayDeque;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz p2, :cond_5

    .line 9
    iget-object p1, p0, Lcom/apk/gj0;->else:Lcom/apk/gj0$if;

    .line 10
    iput-boolean v1, p1, Lcom/apk/gj0$if;->try:Z

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/apk/gj0;->this()Z

    move-result p1

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    if-nez p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    iget p2, p0, Lcom/apk/gj0;->const:I

    invoke-virtual {p1, p2}, Lcom/apk/xi0;->throw(I)Lcom/apk/gj0;

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized case()Lcom/apk/ti0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/gj0;->catch:Lcom/apk/ti0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized catch(Lcom/apk/ti0;)V
    .locals 1
    .param p1    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/gj0;->catch:Lcom/apk/ti0;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/apk/gj0;->catch:Lcom/apk/ti0;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final class()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public final do()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Thread "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/apk/gj0;->else:Lcom/apk/gj0$if;

    .line 5
    iget-boolean v0, v0, Lcom/apk/gj0$if;->try:Z

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/apk/gj0;->else:Lcom/apk/gj0$if;

    .line 7
    iget-boolean v0, v0, Lcom/apk/gj0$if;->for:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/apk/gj0;->goto:Lcom/apk/gj0$do;

    .line 9
    iget-boolean v0, v0, Lcom/apk/gj0$do;->for:Z

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/apk/gj0;->goto:Lcom/apk/gj0$do;

    .line 11
    iget-boolean v0, v0, Lcom/apk/gj0$do;->if:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/apk/gj0;->this()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    if-eqz v0, :cond_4

    .line 14
    sget-object v0, Lcom/apk/ti0;->else:Lcom/apk/ti0;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apk/gj0;->for(Lcom/apk/ti0;Ljava/io/IOException;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    iget v1, p0, Lcom/apk/gj0;->const:I

    invoke-virtual {v0, v1}, Lcom/apk/xi0;->throw(I)Lcom/apk/gj0;

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    throw v0
.end method

.method public final else()Lcom/apk/jl0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/gj0;->case:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/apk/gj0;->goto()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    monitor-exit p0

    .line 4
    iget-object v0, p0, Lcom/apk/gj0;->goto:Lcom/apk/gj0$do;

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, "reply before requesting the sink"

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0

    throw v0
.end method

.method public final for(Lcom/apk/ti0;Ljava/io/IOException;)V
    .locals 2
    .param p1    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rstStatusCode"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/apk/gj0;->new(Lcom/apk/ti0;Ljava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    iget v0, p0, Lcom/apk/gj0;->const:I

    if-eqz p2, :cond_1

    const-string v1, "statusCode"

    .line 3
    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p2, p2, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    invoke-virtual {p2, v0, p1}, Lcom/apk/hj0;->extends(ILcom/apk/ti0;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final goto()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/apk/gj0;->const:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    .line 3
    iget-boolean v3, v3, Lcom/apk/xi0;->do:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final if()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/gj0;->goto:Lcom/apk/gj0$do;

    .line 2
    iget-boolean v1, v0, Lcom/apk/gj0$do;->if:Z

    if-nez v1, :cond_3

    .line 3
    iget-boolean v0, v0, Lcom/apk/gj0$do;->for:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/apk/gj0;->catch:Lcom/apk/ti0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/gj0;->class:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/apk/mj0;

    iget-object v1, p0, Lcom/apk/gj0;->catch:Lcom/apk/ti0;

    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/apk/mj0;-><init>(Lcom/apk/ti0;)V

    :goto_0
    throw v0

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final new(Lcom/apk/ti0;Ljava/io/IOException;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Thread "

    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST NOT hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/apk/gj0;->catch:Lcom/apk/ti0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/apk/gj0;->else:Lcom/apk/gj0$if;

    .line 7
    iget-boolean v0, v0, Lcom/apk/gj0$if;->try:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/apk/gj0;->goto:Lcom/apk/gj0$do;

    .line 9
    iget-boolean v0, v0, Lcom/apk/gj0$do;->for:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 10
    monitor-exit p0

    return v1

    .line 11
    :cond_3
    :try_start_2
    iput-object p1, p0, Lcom/apk/gj0;->catch:Lcom/apk/ti0;

    .line 12
    iput-object p2, p0, Lcom/apk/gj0;->class:Ljava/io/IOException;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    iget-object p1, p0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    iget p2, p0, Lcom/apk/gj0;->const:I

    invoke-virtual {p1, p2}, Lcom/apk/xi0;->throw(I)Lcom/apk/gj0;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized this()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/gj0;->catch:Lcom/apk/ti0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/apk/gj0;->else:Lcom/apk/gj0$if;

    .line 4
    iget-boolean v0, v0, Lcom/apk/gj0$if;->try:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/apk/gj0;->else:Lcom/apk/gj0$if;

    .line 6
    iget-boolean v0, v0, Lcom/apk/gj0$if;->for:Z

    if-eqz v0, :cond_3

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/gj0;->goto:Lcom/apk/gj0$do;

    .line 8
    iget-boolean v0, v0, Lcom/apk/gj0$do;->for:Z

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/apk/gj0;->goto:Lcom/apk/gj0$do;

    .line 10
    iget-boolean v0, v0, Lcom/apk/gj0$do;->if:Z

    if-eqz v0, :cond_3

    .line 11
    :cond_2
    iget-boolean v0, p0, Lcom/apk/gj0;->case:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 12
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 13
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final try(Lcom/apk/ti0;)V
    .locals 2
    .param p1    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/gj0;->new(Lcom/apk/ti0;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/gj0;->final:Lcom/apk/xi0;

    iget v1, p0, Lcom/apk/gj0;->const:I

    invoke-virtual {v0, v1, p1}, Lcom/apk/xi0;->package(ILcom/apk/ti0;)V

    return-void
.end method
