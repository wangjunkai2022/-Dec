.class public Lcom/apk/vk;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/apk/xk;
.implements Lcom/apk/hm$do;
.implements Lcom/apk/al$do;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/vk$if;,
        Lcom/apk/vk$do;,
        Lcom/apk/vk$for;,
        Lcom/apk/vk$new;
    }
.end annotation


# static fields
.field public static final this:Z


# instance fields
.field public final case:Lcom/apk/vk$for;

.field public final do:Lcom/apk/dl;

.field public final else:Lcom/apk/vk$do;

.field public final for:Lcom/apk/hm;

.field public final goto:Lcom/apk/kk;

.field public final if:Lcom/apk/zk;

.field public final new:Lcom/apk/vk$if;

.field public final try:Lcom/apk/jl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/apk/vk;->this:Z

    return-void
.end method

.method public constructor <init>(Lcom/apk/hm;Lcom/apk/zl$do;Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/vk;->for:Lcom/apk/hm;

    .line 3
    new-instance v0, Lcom/apk/vk$for;

    invoke-direct {v0, p2}, Lcom/apk/vk$for;-><init>(Lcom/apk/zl$do;)V

    iput-object v0, p0, Lcom/apk/vk;->case:Lcom/apk/vk$for;

    .line 4
    new-instance p2, Lcom/apk/kk;

    invoke-direct {p2, p7}, Lcom/apk/kk;-><init>(Z)V

    .line 5
    iput-object p2, p0, Lcom/apk/vk;->goto:Lcom/apk/kk;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iput-object p0, p2, Lcom/apk/kk;->new:Lcom/apk/al$do;

    .line 9
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    new-instance p2, Lcom/apk/zk;

    invoke-direct {p2}, Lcom/apk/zk;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/apk/vk;->if:Lcom/apk/zk;

    .line 13
    new-instance p2, Lcom/apk/dl;

    invoke-direct {p2}, Lcom/apk/dl;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/apk/vk;->do:Lcom/apk/dl;

    .line 15
    new-instance p2, Lcom/apk/vk$if;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/apk/vk$if;-><init>(Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Lcom/apk/xk;Lcom/apk/al$do;)V

    .line 16
    iput-object p2, p0, Lcom/apk/vk;->new:Lcom/apk/vk$if;

    .line 17
    new-instance p2, Lcom/apk/vk$do;

    iget-object p3, p0, Lcom/apk/vk;->case:Lcom/apk/vk$for;

    invoke-direct {p2, p3}, Lcom/apk/vk$do;-><init>(Lcom/apk/sk$new;)V

    .line 18
    iput-object p2, p0, Lcom/apk/vk;->else:Lcom/apk/vk$do;

    .line 19
    new-instance p2, Lcom/apk/jl;

    invoke-direct {p2}, Lcom/apk/jl;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/apk/vk;->try:Lcom/apk/jl;

    .line 21
    check-cast p1, Lcom/apk/gm;

    .line 22
    iput-object p0, p1, Lcom/apk/gm;->new:Lcom/apk/hm$do;

    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public static new(Ljava/lang/String;JLcom/apk/kj;)V
    .locals 1

    const-string v0, " in "

    .line 1
    invoke-static {p0, v0}, Lcom/apk/goto;->while(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/apk/cs;->do(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case(Lcom/apk/gl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/gl<",
            "*>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/apk/al;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/al;

    invoke-virtual {p1}, Lcom/apk/al;->try()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public do(Lcom/apk/kj;Lcom/apk/al;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/kj;",
            "Lcom/apk/al<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/vk;->goto:Lcom/apk/kk;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/kk;->if:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/kk$if;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lcom/apk/kk$if;->for:Lcom/apk/gl;

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    .line 7
    iget-boolean v0, p2, Lcom/apk/al;->do:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/apk/vk;->for:Lcom/apk/hm;

    check-cast v0, Lcom/apk/gm;

    invoke-virtual {v0, p1, p2}, Lcom/apk/gm;->case(Lcom/apk/kj;Lcom/apk/gl;)Lcom/apk/gl;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/apk/vk;->try:Lcom/apk/jl;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/apk/jl;->do(Lcom/apk/gl;Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0

    throw p1
.end method

.method public final else(Lcom/apk/li;Ljava/lang/Object;Lcom/apk/kj;IILjava/lang/Class;Ljava/lang/Class;Lcom/apk/ni;Lcom/apk/uk;Ljava/util/Map;ZZLcom/apk/mj;ZZZZLcom/apk/er;Ljava/util/concurrent/Executor;Lcom/apk/yk;J)Lcom/apk/vk$new;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apk/li;",
            "Ljava/lang/Object;",
            "Lcom/apk/kj;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/apk/ni;",
            "Lcom/apk/uk;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/apk/qj<",
            "*>;>;ZZ",
            "Lcom/apk/mj;",
            "ZZZZ",
            "Lcom/apk/er;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/apk/yk;",
            "J)",
            "Lcom/apk/vk$new;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-wide/from16 v13, p21

    .line 1
    iget-object v15, v1, Lcom/apk/vk;->do:Lcom/apk/dl;

    if-eqz v9, :cond_0

    .line 2
    iget-object v15, v15, Lcom/apk/dl;->if:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v15, v15, Lcom/apk/dl;->do:Ljava/util/Map;

    .line 3
    :goto_0
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/apk/wk;

    if-eqz v15, :cond_2

    .line 4
    invoke-virtual {v15, v10, v11}, Lcom/apk/wk;->do(Lcom/apk/er;Ljava/util/concurrent/Executor;)V

    .line 5
    sget-boolean v0, Lcom/apk/vk;->this:Z

    if-eqz v0, :cond_1

    const-string v0, "Added to existing load"

    .line 6
    invoke-static {v0, v13, v14, v12}, Lcom/apk/vk;->new(Ljava/lang/String;JLcom/apk/kj;)V

    .line 7
    :cond_1
    new-instance v0, Lcom/apk/vk$new;

    invoke-direct {v0, v1, v10, v15}, Lcom/apk/vk$new;-><init>(Lcom/apk/vk;Lcom/apk/er;Lcom/apk/wk;)V

    return-object v0

    .line 8
    :cond_2
    iget-object v15, v1, Lcom/apk/vk;->new:Lcom/apk/vk$if;

    .line 9
    iget-object v15, v15, Lcom/apk/vk$if;->else:Landroidx/core/util/Pools$Pool;

    invoke-interface {v15}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/apk/wk;

    const-string v13, "Argument must not be null"

    .line 10
    invoke-static {v15, v13}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    monitor-enter v15

    .line 12
    :try_start_0
    iput-object v12, v15, Lcom/apk/wk;->class:Lcom/apk/kj;

    move/from16 v13, p14

    .line 13
    iput-boolean v13, v15, Lcom/apk/wk;->const:Z

    move/from16 v13, p15

    .line 14
    iput-boolean v13, v15, Lcom/apk/wk;->final:Z

    move/from16 v13, p16

    .line 15
    iput-boolean v13, v15, Lcom/apk/wk;->super:Z

    .line 16
    iput-boolean v9, v15, Lcom/apk/wk;->throw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    monitor-exit v15

    .line 18
    iget-object v13, v1, Lcom/apk/vk;->else:Lcom/apk/vk$do;

    .line 19
    iget-object v14, v13, Lcom/apk/vk$do;->if:Landroidx/core/util/Pools$Pool;

    invoke-interface {v14}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/apk/sk;

    const-string v10, "Argument must not be null"

    .line 20
    invoke-static {v14, v10}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget v10, v13, Lcom/apk/vk$do;->for:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v13, Lcom/apk/vk$do;->for:I

    .line 22
    iget-object v11, v14, Lcom/apk/sk;->do:Lcom/apk/rk;

    iget-object v13, v14, Lcom/apk/sk;->new:Lcom/apk/sk$new;

    .line 23
    iput-object v0, v11, Lcom/apk/rk;->for:Lcom/apk/li;

    .line 24
    iput-object v2, v11, Lcom/apk/rk;->new:Ljava/lang/Object;

    .line 25
    iput-object v3, v11, Lcom/apk/rk;->final:Lcom/apk/kj;

    .line 26
    iput v4, v11, Lcom/apk/rk;->try:I

    .line 27
    iput v5, v11, Lcom/apk/rk;->case:I

    .line 28
    iput-object v7, v11, Lcom/apk/rk;->throw:Lcom/apk/uk;

    move-object/from16 v1, p6

    .line 29
    iput-object v1, v11, Lcom/apk/rk;->else:Ljava/lang/Class;

    .line 30
    iput-object v13, v11, Lcom/apk/rk;->goto:Lcom/apk/sk$new;

    move-object/from16 v1, p7

    .line 31
    iput-object v1, v11, Lcom/apk/rk;->catch:Ljava/lang/Class;

    .line 32
    iput-object v6, v11, Lcom/apk/rk;->super:Lcom/apk/ni;

    .line 33
    iput-object v8, v11, Lcom/apk/rk;->this:Lcom/apk/mj;

    move-object/from16 v1, p10

    .line 34
    iput-object v1, v11, Lcom/apk/rk;->break:Ljava/util/Map;

    move/from16 v1, p11

    .line 35
    iput-boolean v1, v11, Lcom/apk/rk;->while:Z

    move/from16 v1, p12

    .line 36
    iput-boolean v1, v11, Lcom/apk/rk;->import:Z

    .line 37
    iput-object v0, v14, Lcom/apk/sk;->goto:Lcom/apk/li;

    .line 38
    iput-object v3, v14, Lcom/apk/sk;->this:Lcom/apk/kj;

    .line 39
    iput-object v6, v14, Lcom/apk/sk;->break:Lcom/apk/ni;

    .line 40
    iput-object v12, v14, Lcom/apk/sk;->catch:Lcom/apk/yk;

    .line 41
    iput v4, v14, Lcom/apk/sk;->class:I

    .line 42
    iput v5, v14, Lcom/apk/sk;->const:I

    .line 43
    iput-object v7, v14, Lcom/apk/sk;->final:Lcom/apk/uk;

    .line 44
    iput-boolean v9, v14, Lcom/apk/sk;->return:Z

    .line 45
    iput-object v8, v14, Lcom/apk/sk;->super:Lcom/apk/mj;

    .line 46
    iput-object v15, v14, Lcom/apk/sk;->throw:Lcom/apk/sk$do;

    .line 47
    iput v10, v14, Lcom/apk/sk;->while:I

    .line 48
    sget-object v0, Lcom/apk/sk$case;->do:Lcom/apk/sk$case;

    iput-object v0, v14, Lcom/apk/sk;->native:Lcom/apk/sk$case;

    .line 49
    iput-object v2, v14, Lcom/apk/sk;->static:Ljava/lang/Object;

    move-object/from16 v1, p0

    .line 50
    iget-object v0, v1, Lcom/apk/vk;->do:Lcom/apk/dl;

    if-eqz v0, :cond_9

    .line 51
    iget-boolean v2, v15, Lcom/apk/wk;->throw:Z

    .line 52
    invoke-virtual {v0, v2}, Lcom/apk/dl;->do(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p18

    move-object/from16 v2, p19

    .line 53
    invoke-virtual {v15, v0, v2}, Lcom/apk/wk;->do(Lcom/apk/er;Ljava/util/concurrent/Executor;)V

    .line 54
    monitor-enter v15

    .line 55
    :try_start_1
    iput-object v14, v15, Lcom/apk/wk;->switch:Lcom/apk/sk;

    .line 56
    sget-object v2, Lcom/apk/sk$else;->do:Lcom/apk/sk$else;

    invoke-virtual {v14, v2}, Lcom/apk/sk;->this(Lcom/apk/sk$else;)Lcom/apk/sk$else;

    move-result-object v2

    .line 57
    sget-object v3, Lcom/apk/sk$else;->if:Lcom/apk/sk$else;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/apk/sk$else;->for:Lcom/apk/sk$else;

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    .line 58
    iget-object v2, v15, Lcom/apk/wk;->else:Lcom/apk/km;

    goto :goto_3

    .line 59
    :cond_5
    iget-boolean v2, v15, Lcom/apk/wk;->final:Z

    if-eqz v2, :cond_6

    .line 60
    iget-object v2, v15, Lcom/apk/wk;->this:Lcom/apk/km;

    goto :goto_3

    .line 61
    :cond_6
    iget-boolean v2, v15, Lcom/apk/wk;->super:Z

    if-eqz v2, :cond_7

    iget-object v2, v15, Lcom/apk/wk;->break:Lcom/apk/km;

    goto :goto_3

    :cond_7
    iget-object v2, v15, Lcom/apk/wk;->goto:Lcom/apk/km;

    .line 62
    :goto_3
    iget-object v2, v2, Lcom/apk/km;->do:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit v15

    .line 64
    sget-boolean v2, Lcom/apk/vk;->this:Z

    if-eqz v2, :cond_8

    const-string v2, "Started new load"

    move-wide/from16 v3, p21

    .line 65
    invoke-static {v2, v3, v4, v12}, Lcom/apk/vk;->new(Ljava/lang/String;JLcom/apk/kj;)V

    .line 66
    :cond_8
    new-instance v2, Lcom/apk/vk$new;

    invoke-direct {v2, v1, v0, v15}, Lcom/apk/vk$new;-><init>(Lcom/apk/vk;Lcom/apk/er;Lcom/apk/wk;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 67
    monitor-exit v15

    throw v0

    :cond_9
    const/4 v0, 0x0

    .line 68
    throw v0

    :catchall_1
    move-exception v0

    .line 69
    monitor-exit v15

    throw v0
.end method

.method public final for(Lcom/apk/yk;ZJ)Lcom/apk/al;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/yk;",
            "ZJ)",
            "Lcom/apk/al<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/apk/vk;->goto:Lcom/apk/kk;

    .line 2
    monitor-enter p2

    .line 3
    :try_start_0
    iget-object v1, p2, Lcom/apk/kk;->if:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/kk$if;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 4
    monitor-exit p2

    move-object v2, v0

    goto :goto_0

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/al;

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {p2, v1}, Lcom/apk/kk;->if(Lcom/apk/kk$if;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :cond_2
    monitor-exit p2

    :goto_0
    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Lcom/apk/al;->if()V

    :cond_3
    if-eqz v2, :cond_5

    .line 9
    sget-boolean p2, Lcom/apk/vk;->this:Z

    if-eqz p2, :cond_4

    const-string p2, "Loaded resource from active resources"

    .line 10
    invoke-static {p2, p3, p4, p1}, Lcom/apk/vk;->new(Ljava/lang/String;JLcom/apk/kj;)V

    :cond_4
    return-object v2

    .line 11
    :cond_5
    iget-object p2, p0, Lcom/apk/vk;->for:Lcom/apk/hm;

    check-cast p2, Lcom/apk/gm;

    .line 12
    monitor-enter p2

    .line 13
    :try_start_2
    iget-object v1, p2, Lcom/apk/ds;->do:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 14
    iget-wide v2, p2, Lcom/apk/ds;->for:J

    invoke-virtual {p2, v1}, Lcom/apk/ds;->if(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lcom/apk/ds;->for:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :cond_6
    monitor-exit p2

    .line 16
    move-object v2, v1

    check-cast v2, Lcom/apk/gl;

    if-nez v2, :cond_7

    move-object v2, v0

    goto :goto_1

    .line 17
    :cond_7
    instance-of p2, v2, Lcom/apk/al;

    if-eqz p2, :cond_8

    .line 18
    check-cast v2, Lcom/apk/al;

    goto :goto_1

    .line 19
    :cond_8
    new-instance p2, Lcom/apk/al;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/apk/al;-><init>(Lcom/apk/gl;ZZLcom/apk/kj;Lcom/apk/al$do;)V

    move-object v2, p2

    :goto_1
    if-eqz v2, :cond_9

    .line 20
    invoke-virtual {v2}, Lcom/apk/al;->if()V

    .line 21
    iget-object p2, p0, Lcom/apk/vk;->goto:Lcom/apk/kk;

    invoke-virtual {p2, p1, v2}, Lcom/apk/kk;->do(Lcom/apk/kj;Lcom/apk/al;)V

    :cond_9
    if-eqz v2, :cond_b

    .line 22
    sget-boolean p2, Lcom/apk/vk;->this:Z

    if-eqz p2, :cond_a

    const-string p2, "Loaded resource from cache"

    .line 23
    invoke-static {p2, p3, p4, p1}, Lcom/apk/vk;->new(Ljava/lang/String;JLcom/apk/kj;)V

    :cond_a
    return-object v2

    :cond_b
    return-object v0

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p2

    throw p1

    :catchall_1
    move-exception p1

    .line 25
    monitor-exit p2

    throw p1
.end method

.method public if(Lcom/apk/li;Ljava/lang/Object;Lcom/apk/kj;IILjava/lang/Class;Ljava/lang/Class;Lcom/apk/ni;Lcom/apk/uk;Ljava/util/Map;ZZLcom/apk/mj;ZZZZLcom/apk/er;Ljava/util/concurrent/Executor;)Lcom/apk/vk$new;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apk/li;",
            "Ljava/lang/Object;",
            "Lcom/apk/kj;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/apk/ni;",
            "Lcom/apk/uk;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/apk/qj<",
            "*>;>;ZZ",
            "Lcom/apk/mj;",
            "ZZZZ",
            "Lcom/apk/er;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/apk/vk$new;"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    sget-boolean v0, Lcom/apk/vk;->this:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/apk/cs;->if()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v13, v0

    .line 2
    iget-object v0, v15, Lcom/apk/vk;->if:Lcom/apk/zk;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcom/apk/yk;

    move-object v2, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p10

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p13

    invoke-direct/range {v2 .. v10}, Lcom/apk/yk;-><init>(Ljava/lang/Object;Lcom/apk/kj;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/mj;)V

    .line 4
    monitor-enter p0

    move/from16 v12, p14

    .line 5
    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, Lcom/apk/vk;->for(Lcom/apk/yk;ZJ)Lcom/apk/al;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    .line 6
    invoke-virtual/range {v1 .. v23}, Lcom/apk/vk;->else(Lcom/apk/li;Ljava/lang/Object;Lcom/apk/kj;IILjava/lang/Class;Ljava/lang/Class;Lcom/apk/ni;Lcom/apk/uk;Ljava/util/Map;ZZLcom/apk/mj;ZZZZLcom/apk/er;Ljava/util/concurrent/Executor;Lcom/apk/yk;J)Lcom/apk/vk$new;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Lcom/apk/dj;->try:Lcom/apk/dj;

    move-object/from16 v3, p18

    check-cast v3, Lcom/apk/fr;

    invoke-virtual {v3, v2, v0}, Lcom/apk/fr;->final(Lcom/apk/gl;Lcom/apk/dj;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 10
    :cond_2
    throw v1
.end method

.method public declared-synchronized try(Lcom/apk/wk;Lcom/apk/kj;Lcom/apk/al;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/wk<",
            "*>;",
            "Lcom/apk/kj;",
            "Lcom/apk/al<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 1
    :try_start_0
    iget-boolean v0, p3, Lcom/apk/al;->do:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/vk;->goto:Lcom/apk/kk;

    invoke-virtual {v0, p2, p3}, Lcom/apk/kk;->do(Lcom/apk/kj;Lcom/apk/al;)V

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/apk/vk;->do:Lcom/apk/dl;

    if-eqz p3, :cond_2

    .line 4
    iget-boolean v0, p1, Lcom/apk/wk;->throw:Z

    .line 5
    invoke-virtual {p3, v0}, Lcom/apk/dl;->do(Z)Ljava/util/Map;

    move-result-object p3

    .line 6
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 9
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
