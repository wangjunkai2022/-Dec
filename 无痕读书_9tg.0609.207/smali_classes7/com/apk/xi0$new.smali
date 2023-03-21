.class public final Lcom/apk/xi0$new;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Lcom/apk/fj0$if;
.implements Lcom/apk/hd0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/xi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/fj0$if;",
        "Lcom/apk/hd0<",
        "Lcom/apk/nc0;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/fj0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic if:Lcom/apk/xi0;


# direct methods
.method public constructor <init>(Lcom/apk/xi0;Lcom/apk/fj0;)V
    .locals 1
    .param p1    # Lcom/apk/xi0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/fj0;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/apk/xi0$new;->do:Lcom/apk/fj0;

    return-void
.end method


# virtual methods
.method public break(IILjava/util/List;)V
    .locals 11
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/apk/ui0;",
            ">;)V"
        }
    .end annotation

    const-string p1, "requestHeaders"

    invoke-static {p3, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v5, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    if-eqz v5, :cond_1

    const-string p1, "requestHeaders"

    .line 2
    invoke-static {p3, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    monitor-enter v5

    .line 4
    :try_start_0
    iget-object p1, v5, Lcom/apk/xi0;->package:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/apk/ti0;->for:Lcom/apk/ti0;

    invoke-virtual {v5, p2, p1}, Lcom/apk/xi0;->package(ILcom/apk/ti0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v5

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    iget-object p1, v5, Lcom/apk/xi0;->package:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v5

    .line 9
    iget-object p1, v5, Lcom/apk/xi0;->break:Lcom/apk/rh0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/apk/xi0;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 10
    new-instance v10, Lcom/apk/bj0;

    move-object v0, v10

    move-object v1, v3

    move v2, v4

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/apk/bj0;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0;ILjava/util/List;)V

    invoke-virtual {p1, v10, v8, v9}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v5

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public case(ZILcom/apk/tk0;I)V
    .locals 16
    .param p3    # Lcom/apk/tk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v10, p4

    const-string v3, "source"

    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v1, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-virtual {v3, v0}, Lcom/apk/xi0;->break(I)Z

    move-result v3

    const-wide/16 v12, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2
    iget-object v7, v1, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    if-eqz v7, :cond_0

    const-string v3, "source"

    .line 3
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v9, Lcom/apk/rk0;

    invoke-direct {v9}, Lcom/apk/rk0;-><init>()V

    int-to-long v3, v10

    .line 5
    invoke-interface {v2, v3, v4}, Lcom/apk/tk0;->native(J)V

    .line 6
    invoke-interface {v2, v9, v3, v4}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    .line 7
    iget-object v14, v7, Lcom/apk/xi0;->break:Lcom/apk/rh0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/apk/xi0;->new:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] onData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v15, Lcom/apk/zi0;

    const/4 v6, 0x1

    move-object v2, v15

    move-object v3, v5

    move v4, v6

    move/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/apk/zi0;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0;ILcom/apk/rk0;IZ)V

    invoke-virtual {v14, v15, v12, v13}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    return-void

    .line 9
    :cond_0
    throw v4

    .line 10
    :cond_1
    iget-object v3, v1, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-virtual {v3, v0}, Lcom/apk/xi0;->try(I)Lcom/apk/gj0;

    move-result-object v3

    if-nez v3, :cond_2

    .line 11
    iget-object v3, v1, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    sget-object v4, Lcom/apk/ti0;->for:Lcom/apk/ti0;

    invoke-virtual {v3, v0, v4}, Lcom/apk/xi0;->package(ILcom/apk/ti0;)V

    .line 12
    iget-object v0, v1, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    int-to-long v3, v10

    invoke-virtual {v0, v3, v4}, Lcom/apk/xi0;->default(J)V

    .line 13
    invoke-interface {v2, v3, v4}, Lcom/apk/tk0;->skip(J)V

    return-void

    :cond_2
    const-string v0, "source"

    .line 14
    invoke-static {v2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_4

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Thread "

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Thread.currentThread()"

    invoke-static {v4, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MUST NOT hold lock on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 17
    :cond_4
    :goto_0
    iget-object v0, v3, Lcom/apk/gj0;->else:Lcom/apk/gj0$if;

    int-to-long v5, v10

    if-eqz v0, :cond_11

    const-string v4, "source"

    .line 18
    invoke-static {v2, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v4, v0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    .line 20
    sget-boolean v7, Lcom/apk/jh0;->goto:Z

    if-eqz v7, :cond_6

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Thread "

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v5, "Thread.currentThread()"

    invoke-static {v3, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MUST NOT hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    :goto_1
    const/4 v4, 0x1

    cmp-long v7, v5, v12

    if-lez v7, :cond_f

    .line 22
    iget-object v7, v0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    monitor-enter v7

    .line 23
    :try_start_0
    iget-boolean v8, v0, Lcom/apk/gj0$if;->try:Z

    .line 24
    iget-object v9, v0, Lcom/apk/gj0$if;->if:Lcom/apk/rk0;

    .line 25
    iget-wide v9, v9, Lcom/apk/rk0;->if:J

    add-long/2addr v9, v5

    .line 26
    iget-wide v14, v0, Lcom/apk/gj0$if;->new:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v11, v9, v14

    if-lez v11, :cond_7

    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    .line 27
    :goto_2
    monitor-exit v7

    if-eqz v9, :cond_8

    .line 28
    invoke-interface {v2, v5, v6}, Lcom/apk/tk0;->skip(J)V

    .line 29
    iget-object v0, v0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    sget-object v2, Lcom/apk/ti0;->try:Lcom/apk/ti0;

    invoke-virtual {v0, v2}, Lcom/apk/gj0;->try(Lcom/apk/ti0;)V

    goto :goto_6

    :cond_8
    if-eqz v8, :cond_9

    .line 30
    invoke-interface {v2, v5, v6}, Lcom/apk/tk0;->skip(J)V

    goto :goto_6

    .line 31
    :cond_9
    iget-object v7, v0, Lcom/apk/gj0$if;->do:Lcom/apk/rk0;

    invoke-interface {v2, v7, v5, v6}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_e

    sub-long/2addr v5, v7

    .line 32
    iget-object v7, v0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    monitor-enter v7

    .line 33
    :try_start_1
    iget-boolean v8, v0, Lcom/apk/gj0$if;->for:Z

    if-eqz v8, :cond_a

    .line 34
    iget-object v4, v0, Lcom/apk/gj0$if;->do:Lcom/apk/rk0;

    .line 35
    iget-wide v8, v4, Lcom/apk/rk0;->if:J

    .line 36
    iget-object v4, v0, Lcom/apk/gj0$if;->do:Lcom/apk/rk0;

    .line 37
    iget-wide v10, v4, Lcom/apk/rk0;->if:J

    .line 38
    invoke-virtual {v4, v10, v11}, Lcom/apk/rk0;->skip(J)V

    goto :goto_5

    .line 39
    :cond_a
    iget-object v8, v0, Lcom/apk/gj0$if;->if:Lcom/apk/rk0;

    .line 40
    iget-wide v8, v8, Lcom/apk/rk0;->if:J

    cmp-long v10, v8, v12

    if-nez v10, :cond_b

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    .line 41
    :goto_3
    iget-object v8, v0, Lcom/apk/gj0$if;->if:Lcom/apk/rk0;

    iget-object v9, v0, Lcom/apk/gj0$if;->do:Lcom/apk/rk0;

    invoke-virtual {v8, v9}, Lcom/apk/rk0;->const(Lcom/apk/ll0;)J

    if-eqz v4, :cond_d

    .line 42
    iget-object v4, v0, Lcom/apk/gj0$if;->case:Lcom/apk/gj0;

    if-eqz v4, :cond_c

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    :goto_4
    move-wide v8, v12

    .line 44
    :goto_5
    monitor-exit v7

    cmp-long v4, v8, v12

    if-lez v4, :cond_6

    .line 45
    invoke-virtual {v0, v8, v9}, Lcom/apk/gj0$if;->for(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 46
    monitor-exit v7

    throw v0

    .line 47
    :cond_e
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    .line 48
    monitor-exit v7

    throw v0

    :cond_f
    :goto_6
    if-eqz p1, :cond_10

    .line 49
    sget-object v0, Lcom/apk/jh0;->if:Lcom/apk/sg0;

    invoke-virtual {v3, v0, v4}, Lcom/apk/gj0;->break(Lcom/apk/sg0;Z)V

    :cond_10
    return-void

    .line 50
    :cond_11
    throw v4
.end method

.method public catch(ILcom/apk/ti0;Lcom/apk/uk0;)V
    .locals 3
    .param p2    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/uk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "debugData"

    invoke-static {p3, p2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lcom/apk/uk0;->for()I

    .line 2
    iget-object p2, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object p3, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 4
    iget-object p3, p3, Lcom/apk/xi0;->for:Ljava/util/Map;

    .line 5
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/apk/gj0;

    .line 6
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    check-cast p3, [Lcom/apk/gj0;

    .line 7
    iget-object v1, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Lcom/apk/xi0;->else:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p2

    .line 10
    array-length p2, p3

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 11
    iget v2, v1, Lcom/apk/gj0;->const:I

    if-le v2, p1, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/apk/gj0;->goto()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    sget-object v2, Lcom/apk/ti0;->case:Lcom/apk/ti0;

    invoke-virtual {v1, v2}, Lcom/apk/gj0;->catch(Lcom/apk/ti0;)V

    .line 14
    iget-object v2, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 15
    iget v1, v1, Lcom/apk/gj0;->const:I

    .line 16
    invoke-virtual {v2, v1}, Lcom/apk/xi0;->throw(I)Lcom/apk/gj0;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 17
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p2

    throw p1
.end method

.method public do()Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/apk/ti0;->for:Lcom/apk/ti0;

    sget-object v1, Lcom/apk/ti0;->new:Lcom/apk/ti0;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/apk/xi0$new;->do:Lcom/apk/fj0;

    invoke-virtual {v3, p0}, Lcom/apk/fj0;->try(Lcom/apk/fj0$if;)V

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/apk/xi0$new;->do:Lcom/apk/fj0;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p0}, Lcom/apk/fj0;->for(ZLcom/apk/fj0$if;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v3, Lcom/apk/ti0;->if:Lcom/apk/ti0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    sget-object v0, Lcom/apk/ti0;->else:Lcom/apk/ti0;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object v1, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-virtual {v1, v3, v0, v2}, Lcom/apk/xi0;->for(Lcom/apk/ti0;Lcom/apk/ti0;Ljava/io/IOException;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v1

    :goto_1
    iget-object v4, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-virtual {v4, v3, v1, v2}, Lcom/apk/xi0;->for(Lcom/apk/ti0;Lcom/apk/ti0;Ljava/io/IOException;)V

    .line 7
    iget-object v1, p0, Lcom/apk/xi0$new;->do:Lcom/apk/fj0;

    invoke-static {v1}, Lcom/apk/jh0;->case(Ljava/io/Closeable;)V

    throw v0

    :catch_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-virtual {v2, v0, v0, v1}, Lcom/apk/xi0;->for(Lcom/apk/ti0;Lcom/apk/ti0;Ljava/io/IOException;)V

    .line 9
    :goto_2
    iget-object v0, p0, Lcom/apk/xi0$new;->do:Lcom/apk/fj0;

    invoke-static {v0}, Lcom/apk/jh0;->case(Ljava/io/Closeable;)V

    .line 10
    sget-object v0, Lcom/apk/nc0;->do:Lcom/apk/nc0;

    return-object v0
.end method

.method public else(ZII)V
    .locals 11

    if-eqz p1, :cond_4

    .line 1
    iget-object p1, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    monitor-enter p1

    const/4 p3, 0x1

    const-wide/16 v0, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 3
    iget-wide v2, p2, Lcom/apk/xi0;->while:J

    add-long/2addr v2, v0

    .line 4
    iput-wide v2, p2, Lcom/apk/xi0;->while:J

    .line 5
    iget-object p2, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p2, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 8
    iget-wide v2, p2, Lcom/apk/xi0;->throw:J

    add-long/2addr v2, v0

    .line 9
    iput-wide v2, p2, Lcom/apk/xi0;->throw:J

    goto :goto_0

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 11
    iget-wide v2, p2, Lcom/apk/xi0;->final:J

    add-long/2addr v2, v0

    .line 12
    iput-wide v2, p2, Lcom/apk/xi0;->final:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 15
    iget-object p1, p1, Lcom/apk/xi0;->this:Lcom/apk/rh0;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 17
    iget-object v1, v1, Lcom/apk/xi0;->new:Ljava/lang/String;

    const-string v2, " ping"

    .line 18
    invoke-static {v0, v1, v2}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    .line 19
    new-instance v2, Lcom/apk/xi0$new$if;

    move-object v3, v2

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p2

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/apk/xi0$new$if;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0$new;II)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    :goto_1
    return-void
.end method

.method public for(ZLcom/apk/lj0;)V
    .locals 12
    .param p2    # Lcom/apk/lj0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "settings"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 2
    iget-object v0, v0, Lcom/apk/xi0;->this:Lcom/apk/rh0;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 4
    iget-object v2, v2, Lcom/apk/xi0;->new:Ljava/lang/String;

    const-string v3, " applyAndAckSettings"

    .line 5
    invoke-static {v1, v2, v3}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6
    new-instance v1, Lcom/apk/xi0$new$for;

    const/4 v8, 0x1

    move-object v4, v1

    move-object v5, v7

    move v6, v8

    move-object v9, p0

    move v10, p1

    move-object v11, p2

    invoke-direct/range {v4 .. v11}, Lcom/apk/xi0$new$for;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0$new;ZLcom/apk/lj0;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    return-void
.end method

.method public goto(IIIZ)V
    .locals 0

    return-void
.end method

.method public if()V
    .locals 0

    return-void
.end method

.method public new(ZIILjava/util/List;)V
    .locals 16
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lcom/apk/ui0;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v0, p2

    move-object/from16 v10, p4

    const-string v1, "headerBlock"

    invoke-static {v10, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-virtual {v1, v0}, Lcom/apk/xi0;->break(I)Z

    move-result v1

    const-wide/16 v13, 0x0

    const/16 v7, 0x5b

    if-eqz v1, :cond_1

    .line 2
    iget-object v6, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    if-eqz v6, :cond_0

    const-string v1, "requestHeaders"

    .line 3
    invoke-static {v10, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v11, v6, Lcom/apk/xi0;->break:Lcom/apk/rh0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/apk/xi0;->new:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onHeaders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v15, Lcom/apk/aj0;

    const/4 v5, 0x1

    move-object v1, v15

    move-object v2, v4

    move v3, v5

    move/from16 v7, p2

    move-object/from16 v8, p4

    move/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/apk/aj0;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0;ILjava/util/List;Z)V

    invoke-virtual {v11, v15, v13, v14}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0

    .line 7
    :cond_1
    iget-object v15, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    monitor-enter v15

    .line 8
    :try_start_0
    iget-object v1, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-virtual {v1, v0}, Lcom/apk/xi0;->try(I)Lcom/apk/gj0;

    move-result-object v8

    if-nez v8, :cond_5

    .line 9
    iget-object v1, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 10
    iget-boolean v1, v1, Lcom/apk/xi0;->else:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 11
    monitor-exit v15

    return-void

    .line 12
    :cond_2
    :try_start_1
    iget-object v1, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 13
    iget v1, v1, Lcom/apk/xi0;->try:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v0, v1, :cond_3

    .line 14
    monitor-exit v15

    return-void

    .line 15
    :cond_3
    :try_start_2
    rem-int/lit8 v1, v0, 0x2

    iget-object v2, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 16
    iget v2, v2, Lcom/apk/xi0;->case:I

    .line 17
    rem-int/lit8 v2, v2, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v2, :cond_4

    monitor-exit v15

    return-void

    .line 18
    :cond_4
    :try_start_3
    invoke-static/range {p4 .. p4}, Lcom/apk/jh0;->private(Ljava/util/List;)Lcom/apk/sg0;

    move-result-object v6

    .line 19
    new-instance v9, Lcom/apk/gj0;

    iget-object v3, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    const/4 v4, 0x0

    move-object v1, v9

    move/from16 v2, p2

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/apk/gj0;-><init>(ILcom/apk/xi0;ZZLcom/apk/sg0;)V

    .line 20
    iget-object v1, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 21
    iput v0, v1, Lcom/apk/xi0;->try:I

    .line 22
    iget-object v1, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 23
    iget-object v1, v1, Lcom/apk/xi0;->for:Ljava/util/Map;

    .line 24
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 26
    iget-object v1, v1, Lcom/apk/xi0;->goto:Lcom/apk/sh0;

    .line 27
    invoke-virtual {v1}, Lcom/apk/sh0;->case()Lcom/apk/rh0;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 28
    iget-object v2, v2, Lcom/apk/xi0;->new:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 30
    new-instance v7, Lcom/apk/xi0$new$do;

    move-object v1, v7

    move-object v2, v4

    move v3, v5

    move-object v6, v9

    move-object v9, v7

    move-object/from16 v7, p0

    move-object v13, v9

    move/from16 v9, p2

    move-object/from16 v10, p4

    move-object v0, v11

    move/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lcom/apk/xi0$new$do;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/gj0;Lcom/apk/xi0$new;Lcom/apk/gj0;ILjava/util/List;Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v13, v1, v2}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    monitor-exit v15

    return-void

    .line 32
    :cond_5
    monitor-exit v15

    .line 33
    invoke-static/range {p4 .. p4}, Lcom/apk/jh0;->private(Ljava/util/List;)Lcom/apk/sg0;

    move-result-object v0

    move/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Lcom/apk/gj0;->break(Lcom/apk/sg0;Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 34
    monitor-exit v15

    throw v0
.end method

.method public this(ILcom/apk/ti0;)V
    .locals 10
    .param p2    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-virtual {v1, p1}, Lcom/apk/xi0;->break(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v7, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    if-eqz v7, :cond_0

    .line 3
    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v7, Lcom/apk/xi0;->break:Lcom/apk/rh0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/apk/xi0;->new:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    new-instance v1, Lcom/apk/cj0;

    const/4 v6, 0x1

    move-object v2, v1

    move-object v3, v5

    move v4, v6

    move v8, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/apk/cj0;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0;ILcom/apk/ti0;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/apk/rh0;->for(Lcom/apk/ph0;J)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-virtual {v0, p1}, Lcom/apk/xi0;->throw(I)Lcom/apk/gj0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1, p2}, Lcom/apk/gj0;->catch(Lcom/apk/ti0;)V

    :cond_2
    return-void
.end method

.method public try(IJ)V
    .locals 3

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 3
    iget-wide v1, v0, Lcom/apk/xi0;->throws:J

    add-long/2addr v1, p2

    .line 4
    iput-wide v1, v0, Lcom/apk/xi0;->throws:J

    .line 5
    iget-object p2, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p1

    goto :goto_0

    .line 8
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p2, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 9
    monitor-exit p1

    throw p2

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    invoke-virtual {v0, p1}, Lcom/apk/xi0;->try(I)Lcom/apk/gj0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    monitor-enter p1

    .line 12
    :try_start_2
    iget-wide v0, p1, Lcom/apk/gj0;->new:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/apk/gj0;->new:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_3
    :goto_0
    return-void
.end method
