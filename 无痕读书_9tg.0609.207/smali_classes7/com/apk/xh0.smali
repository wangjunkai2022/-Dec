.class public final Lcom/apk/xh0;
.super Ljava/lang/Object;
.source "RealCall.kt"

# interfaces
.implements Lcom/apk/zf0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/xh0$do;,
        Lcom/apk/xh0$if;
    }
.end annotation


# instance fields
.field public break:Z

.field public case:Lcom/apk/wh0;

.field public catch:Z

.field public class:Z

.field public volatile const:Z

.field public final do:Lcom/apk/ci0;

.field public else:Lcom/apk/bi0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public volatile final:Lcom/apk/vh0;

.field public final for:Lcom/apk/xh0$for;

.field public goto:Z

.field public final if:Lcom/apk/og0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final import:Z

.field public final new:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile super:Lcom/apk/bi0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public this:Lcom/apk/vh0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final throw:Lcom/apk/xg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public try:Ljava/lang/Object;

.field public final while:Lcom/apk/zg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/xg0;Lcom/apk/zg0;Z)V
    .locals 1
    .param p1    # Lcom/apk/xg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    iput-object p2, p0, Lcom/apk/xh0;->while:Lcom/apk/zg0;

    iput-boolean p3, p0, Lcom/apk/xh0;->import:Z

    .line 2
    iget-object p2, p1, Lcom/apk/xg0;->if:Lcom/apk/gg0;

    .line 3
    iget-object p2, p2, Lcom/apk/gg0;->do:Lcom/apk/ci0;

    .line 4
    iput-object p2, p0, Lcom/apk/xh0;->do:Lcom/apk/ci0;

    .line 5
    iget-object p1, p1, Lcom/apk/xg0;->try:Lcom/apk/og0$if;

    .line 6
    invoke-interface {p1, p0}, Lcom/apk/og0$if;->do(Lcom/apk/zf0;)Lcom/apk/og0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/xh0;->if:Lcom/apk/og0;

    .line 7
    new-instance p1, Lcom/apk/xh0$for;

    invoke-direct {p1, p0}, Lcom/apk/xh0$for;-><init>(Lcom/apk/xh0;)V

    .line 8
    iget-object p2, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 9
    iget p2, p2, Lcom/apk/xg0;->throws:I

    int-to-long p2, p2

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lcom/apk/ml0;->else(JLjava/util/concurrent/TimeUnit;)Lcom/apk/ml0;

    .line 11
    iput-object p1, p0, Lcom/apk/xh0;->for:Lcom/apk/xh0$for;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/apk/xh0;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/apk/xh0;->class:Z

    return-void
.end method

.method public static final do(Lcom/apk/xh0;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/apk/xh0;->const:Z

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Lcom/apk/xh0;->import:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Lcom/apk/xh0;->while:Lcom/apk/zg0;

    .line 6
    iget-object p0, p0, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 7
    invoke-virtual {p0}, Lcom/apk/tg0;->case()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/xh0;->const:Z

    return v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/xh0;->const:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/xh0;->const:Z

    .line 3
    iget-object v0, p0, Lcom/apk/xh0;->final:Lcom/apk/vh0;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v0}, Lcom/apk/ji0;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/xh0;->super:Lcom/apk/bi0;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v0, Lcom/apk/bi0;->if:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/apk/jh0;->else(Ljava/net/Socket;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/xh0;->if:Lcom/apk/og0;

    if-eqz v0, :cond_3

    const-string v0, "call"

    .line 8
    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    throw v0
.end method

.method public final case()V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 2
    sget-object v0, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    const-string v1, "response.body().close()"

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/uj0;->else(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/xh0;->try:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/apk/xh0;->if:Lcom/apk/og0;

    if-eqz v0, :cond_0

    const-string v0, "call"

    .line 5
    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final catch(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/xh0;->class:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/apk/xh0;->class:Z

    .line 4
    iget-boolean v0, p0, Lcom/apk/xh0;->break:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/apk/xh0;->catch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 5
    :cond_0
    monitor-exit p0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/apk/xh0;->new(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1
.end method

.method public final class()Ljava/net/Socket;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 2
    sget-boolean v1, Lcom/apk/jh0;->goto:Z

    const-string v2, " MUST hold lock on "

    const-string v3, "Thread.currentThread()"

    const-string v4, "Thread "

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/apk/bi0;->super:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 6
    check-cast v8, Ljava/lang/ref/Reference;

    .line 7
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/apk/xh0;

    invoke-static {v8, p0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    :goto_2
    const/4 v5, 0x1

    if-eq v7, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_c

    .line 8
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v7, 0x0

    .line 9
    iput-object v7, p0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 12
    iput-wide v8, v0, Lcom/apk/bi0;->throw:J

    .line 13
    iget-object v1, p0, Lcom/apk/xh0;->do:Lcom/apk/ci0;

    if-eqz v1, :cond_a

    const-string v8, "connection"

    .line 14
    invoke-static {v0, v8}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-boolean v8, Lcom/apk/jh0;->goto:Z

    if-eqz v8, :cond_6

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    .line 16
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 17
    :cond_6
    :goto_4
    iget-boolean v2, v0, Lcom/apk/bi0;->this:Z

    if-nez v2, :cond_8

    .line 18
    iget v2, v1, Lcom/apk/ci0;->try:I

    if-nez v2, :cond_7

    goto :goto_5

    .line 19
    :cond_7
    iget-object v2, v1, Lcom/apk/ci0;->if:Lcom/apk/rh0;

    iget-object v1, v1, Lcom/apk/ci0;->for:Lcom/apk/ci0$do;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v1, v3, v4, v5}, Lcom/apk/rh0;->new(Lcom/apk/rh0;Lcom/apk/ph0;JI)V

    goto :goto_6

    .line 20
    :cond_8
    :goto_5
    iput-boolean v5, v0, Lcom/apk/bi0;->this:Z

    .line 21
    iget-object v2, v1, Lcom/apk/ci0;->new:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 22
    iget-object v2, v1, Lcom/apk/ci0;->new:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, v1, Lcom/apk/ci0;->if:Lcom/apk/rh0;

    invoke-virtual {v1}, Lcom/apk/rh0;->do()V

    :cond_9
    const/4 v6, 0x1

    :goto_6
    if-eqz v6, :cond_b

    .line 23
    iget-object v0, v0, Lcom/apk/bi0;->for:Ljava/net/Socket;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    return-object v0

    .line 24
    :cond_a
    throw v7

    :cond_b
    return-object v7

    .line 25
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/apk/xh0;

    iget-object v1, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    iget-object v2, p0, Lcom/apk/xh0;->while:Lcom/apk/zg0;

    iget-boolean v3, p0, Lcom/apk/xh0;->import:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/xh0;-><init>(Lcom/apk/xg0;Lcom/apk/zg0;Z)V

    return-object v0
.end method

.method public final else(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/xh0;->class:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3
    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/xh0;->final:Lcom/apk/vh0;

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p1, Lcom/apk/vh0;->case:Lcom/apk/ji0;

    invoke-interface {v1}, Lcom/apk/ji0;->cancel()V

    .line 6
    iget-object v1, p1, Lcom/apk/vh0;->for:Lcom/apk/xh0;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v2, v0}, Lcom/apk/xh0;->this(Lcom/apk/vh0;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 7
    :cond_0
    iput-object v0, p0, Lcom/apk/xh0;->this:Lcom/apk/vh0;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
.end method

.method public for()Lcom/apk/zg0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/xh0;->while:Lcom/apk/zg0;

    return-object v0
.end method

.method public final goto()Lcom/apk/ch0;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 3
    iget-object v0, v0, Lcom/apk/xg0;->for:Ljava/util/List;

    .line 4
    invoke-static {v2, v0}, Lcom/apk/sb0;->new(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 5
    new-instance v0, Lcom/apk/oi0;

    iget-object v1, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    invoke-direct {v0, v1}, Lcom/apk/oi0;-><init>(Lcom/apk/xg0;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcom/apk/gi0;

    iget-object v1, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 7
    iget-object v1, v1, Lcom/apk/xg0;->break:Lcom/apk/kg0;

    .line 8
    invoke-direct {v0, v1}, Lcom/apk/gi0;-><init>(Lcom/apk/kg0;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcom/apk/mh0;

    iget-object v1, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 10
    iget-object v1, v1, Lcom/apk/xg0;->catch:Lcom/apk/xf0;

    .line 11
    invoke-direct {v0, v1}, Lcom/apk/mh0;-><init>(Lcom/apk/xf0;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/apk/th0;->do:Lcom/apk/th0;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean v0, p0, Lcom/apk/xh0;->import:Z

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 15
    iget-object v0, v0, Lcom/apk/xg0;->new:Ljava/util/List;

    .line 16
    invoke-static {v2, v0}, Lcom/apk/sb0;->new(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 17
    :cond_0
    new-instance v0, Lcom/apk/hi0;

    iget-boolean v1, p0, Lcom/apk/xh0;->import:Z

    invoke-direct {v0, v1}, Lcom/apk/hi0;-><init>(Z)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v9, Lcom/apk/mi0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 19
    iget-object v5, p0, Lcom/apk/xh0;->while:Lcom/apk/zg0;

    .line 20
    iget-object v0, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 21
    iget v6, v0, Lcom/apk/xg0;->default:I

    .line 22
    iget v7, v0, Lcom/apk/xg0;->extends:I

    .line 23
    iget v8, v0, Lcom/apk/xg0;->finally:I

    move-object v0, v9

    move-object v1, p0

    .line 24
    invoke-direct/range {v0 .. v8}, Lcom/apk/mi0;-><init>(Lcom/apk/xh0;Ljava/util/List;ILcom/apk/vh0;Lcom/apk/zg0;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/apk/xh0;->while:Lcom/apk/zg0;

    invoke-virtual {v9, v2}, Lcom/apk/mi0;->do(Lcom/apk/zg0;)Lcom/apk/ch0;

    move-result-object v2

    .line 26
    iget-boolean v3, p0, Lcom/apk/xh0;->const:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 27
    invoke-virtual {p0, v1}, Lcom/apk/xh0;->catch(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    .line 28
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/apk/jh0;->case(Ljava/io/Closeable;)V

    .line 29
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/apk/xh0;->catch(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 31
    invoke-virtual {p0, v1}, Lcom/apk/xh0;->catch(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_3
    throw v2
.end method

.method public final if(Lcom/apk/bi0;)V
    .locals 4
    .param p1    # Lcom/apk/bi0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    const-string v2, " MUST hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iput-object p1, p0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    .line 5
    iget-object p1, p1, Lcom/apk/bi0;->super:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/apk/xh0$if;

    iget-object v1, p0, Lcom/apk/xh0;->try:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/apk/xh0$if;-><init>(Lcom/apk/xh0;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final new(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
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
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Thread "

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 4
    sget-boolean v2, Lcom/apk/jh0;->goto:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

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

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_3
    :goto_1
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/xh0;->class()Ljava/net/Socket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    iget-object v3, p0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    if-nez v3, :cond_6

    if-eqz v2, :cond_4

    .line 10
    invoke-static {v2}, Lcom/apk/jh0;->else(Ljava/net/Socket;)V

    .line 11
    :cond_4
    iget-object v2, p0, Lcom/apk/xh0;->if:Lcom/apk/og0;

    if-eqz v2, :cond_5

    const-string v2, "call"

    .line 12
    invoke-static {p0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "connection"

    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    throw v1

    :cond_6
    if-nez v2, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const-string p1, "Check failed."

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0

    throw p1

    .line 15
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/apk/xh0;->goto:Z

    if-eqz v0, :cond_a

    goto :goto_4

    .line 16
    :cond_a
    iget-object v0, p0, Lcom/apk/xh0;->for:Lcom/apk/xh0$for;

    invoke-virtual {v0}, Lcom/apk/ok0;->this()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_4
    move-object v0, p1

    goto :goto_5

    .line 17
    :cond_b
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v2, "timeout"

    invoke-direct {v0, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 18
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    :goto_5
    if-eqz p1, :cond_e

    .line 19
    iget-object p1, p0, Lcom/apk/xh0;->if:Lcom/apk/og0;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    if-eqz p1, :cond_d

    const-string p1, "call"

    .line 20
    invoke-static {p0, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {v0, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    throw v1

    .line 21
    :cond_e
    iget-object p1, p0, Lcom/apk/xh0;->if:Lcom/apk/og0;

    if-eqz p1, :cond_f

    const-string p1, "call"

    .line 22
    invoke-static {p0, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    return-object v0

    :cond_f
    throw v1
.end method

.method public final this(Lcom/apk/vh0;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .param p1    # Lcom/apk/vh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Lcom/apk/vh0;",
            "ZZTE;)TE;"
        }
    .end annotation

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/xh0;->final:Lcom/apk/vh0;

    invoke-static {p1, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object p4

    .line 2
    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/apk/xh0;->break:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, Lcom/apk/xh0;->catch:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    .line 4
    iput-boolean p1, p0, Lcom/apk/xh0;->break:Z

    :cond_3
    if-eqz p3, :cond_4

    .line 5
    iput-boolean p1, p0, Lcom/apk/xh0;->catch:Z

    .line 6
    :cond_4
    iget-boolean p2, p0, Lcom/apk/xh0;->break:Z

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/apk/xh0;->catch:Z

    if-nez p2, :cond_5

    const/4 p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    .line 7
    :goto_1
    iget-boolean p3, p0, Lcom/apk/xh0;->break:Z

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lcom/apk/xh0;->catch:Z

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lcom/apk/xh0;->class:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_6

    const/4 p1, 0x1

    :cond_6
    move v2, p2

    move p2, p1

    move p1, v2

    goto :goto_3

    .line 8
    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    const/4 p2, 0x0

    :goto_3
    monitor-exit p0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/apk/xh0;->final:Lcom/apk/vh0;

    .line 10
    iget-object p1, p0, Lcom/apk/xh0;->else:Lcom/apk/bi0;

    if-eqz p1, :cond_8

    .line 11
    monitor-enter p1

    .line 12
    :try_start_1
    iget p3, p1, Lcom/apk/bi0;->class:I

    add-int/2addr p3, v0

    iput p3, p1, Lcom/apk/bi0;->class:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    .line 14
    invoke-virtual {p0, p4}, Lcom/apk/xh0;->new(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p4
.end method

.method public throw()Lcom/apk/ch0;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/xh0;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/apk/xh0;->for:Lcom/apk/xh0$for;

    invoke-virtual {v0}, Lcom/apk/ok0;->goto()V

    .line 3
    invoke-virtual {p0}, Lcom/apk/xh0;->case()V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 5
    iget-object v1, v1, Lcom/apk/xg0;->do:Lcom/apk/lg0;

    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "call"

    invoke-static {p0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, v1, Lcom/apk/lg0;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v1

    .line 9
    invoke-virtual {p0}, Lcom/apk/xh0;->goto()Lcom/apk/ch0;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    iget-object v2, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 11
    iget-object v2, v2, Lcom/apk/xg0;->do:Lcom/apk/lg0;

    if-eqz v2, :cond_0

    const-string v0, "call"

    .line 12
    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, v2, Lcom/apk/lg0;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0, p0}, Lcom/apk/lg0;->do(Ljava/util/Deque;Ljava/lang/Object;)V

    return-object v1

    .line 14
    :cond_0
    throw v0

    :catchall_0
    move-exception v2

    .line 15
    :try_start_3
    monitor-exit v1

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 16
    iget-object v2, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 17
    iget-object v2, v2, Lcom/apk/xg0;->do:Lcom/apk/lg0;

    if-eqz v2, :cond_1

    const-string v0, "call"

    .line 18
    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, v2, Lcom/apk/lg0;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0, p0}, Lcom/apk/lg0;->do(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 20
    throw v1

    .line 21
    :cond_1
    throw v0

    :cond_2
    const-string v0, "Already Executed"

    .line 22
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public try(Lcom/apk/ag0;)V
    .locals 6
    .param p1    # Lcom/apk/ag0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "responseCallback"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/xh0;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0}, Lcom/apk/xh0;->case()V

    .line 3
    iget-object v0, p0, Lcom/apk/xh0;->throw:Lcom/apk/xg0;

    .line 4
    iget-object v0, v0, Lcom/apk/xg0;->do:Lcom/apk/lg0;

    .line 5
    new-instance v1, Lcom/apk/xh0$do;

    invoke-direct {v1, p0, p1}, Lcom/apk/xh0$do;-><init>(Lcom/apk/xh0;Lcom/apk/ag0;)V

    const/4 p1, 0x0

    if-eqz v0, :cond_5

    const-string v2, "call"

    .line 6
    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/apk/lg0;->new:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, v1, Lcom/apk/xh0$do;->for:Lcom/apk/xh0;

    .line 10
    iget-boolean v2, v2, Lcom/apk/xh0;->import:Z

    if-nez v2, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/apk/xh0$do;->do()Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v3, v0, Lcom/apk/lg0;->try:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apk/xh0$do;

    .line 13
    invoke-virtual {v4}, Lcom/apk/xh0$do;->do()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    move-object p1, v4

    goto :goto_1

    .line 14
    :cond_1
    iget-object v3, v0, Lcom/apk/lg0;->new:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apk/xh0$do;

    .line 15
    invoke-virtual {v4}, Lcom/apk/xh0$do;->do()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    const-string v2, "other"

    .line 16
    invoke-static {p1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p1, Lcom/apk/xh0$do;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v1, Lcom/apk/xh0$do;->do:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_4
    monitor-exit v0

    .line 19
    invoke-virtual {v0}, Lcom/apk/lg0;->for()Z

    return-void

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0

    throw p1

    .line 21
    :cond_5
    throw p1

    :cond_6
    const-string p1, "Already Executed"

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
