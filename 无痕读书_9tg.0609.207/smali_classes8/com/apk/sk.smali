.class public Lcom/apk/sk;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/apk/qk$do;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lcom/apk/hs$new;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/sk$else;,
        Lcom/apk/sk$case;,
        Lcom/apk/sk$new;,
        Lcom/apk/sk$do;,
        Lcom/apk/sk$for;,
        Lcom/apk/sk$try;,
        Lcom/apk/sk$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/qk$do;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/apk/sk<",
        "*>;>;",
        "Lcom/apk/hs$new;"
    }
.end annotation


# instance fields
.field public volatile abstract:Z

.field public break:Lcom/apk/ni;

.field public final case:Lcom/apk/sk$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/sk$for<",
            "*>;"
        }
    .end annotation
.end field

.field public catch:Lcom/apk/yk;

.field public class:I

.field public const:I

.field public volatile continue:Z

.field public default:Lcom/apk/kj;

.field public final do:Lcom/apk/rk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/rk<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final else:Lcom/apk/sk$try;

.field public extends:Ljava/lang/Object;

.field public final:Lcom/apk/uk;

.field public finally:Lcom/apk/dj;

.field public final for:Lcom/apk/ks;

.field public goto:Lcom/apk/li;

.field public final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public import:Lcom/apk/sk$else;

.field public native:Lcom/apk/sk$case;

.field public final new:Lcom/apk/sk$new;

.field public package:Lcom/apk/uj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/uj<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile private:Lcom/apk/qk;

.field public public:J

.field public return:Z

.field public static:Ljava/lang/Object;

.field public super:Lcom/apk/mj;

.field public switch:Ljava/lang/Thread;

.field public this:Lcom/apk/kj;

.field public throw:Lcom/apk/sk$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/sk$do<",
            "TR;>;"
        }
    .end annotation
.end field

.field public throws:Lcom/apk/kj;

.field public final try:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/apk/sk<",
            "*>;>;"
        }
    .end annotation
.end field

.field public while:I


# direct methods
.method public constructor <init>(Lcom/apk/sk$new;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/sk$new;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/apk/sk<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/rk;

    invoke-direct {v0}, Lcom/apk/rk;-><init>()V

    iput-object v0, p0, Lcom/apk/sk;->do:Lcom/apk/rk;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/sk;->if:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/apk/ks$if;

    invoke-direct {v0}, Lcom/apk/ks$if;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/apk/sk;->for:Lcom/apk/ks;

    .line 6
    new-instance v0, Lcom/apk/sk$for;

    invoke-direct {v0}, Lcom/apk/sk$for;-><init>()V

    iput-object v0, p0, Lcom/apk/sk;->case:Lcom/apk/sk$for;

    .line 7
    new-instance v0, Lcom/apk/sk$try;

    invoke-direct {v0}, Lcom/apk/sk$try;-><init>()V

    iput-object v0, p0, Lcom/apk/sk;->else:Lcom/apk/sk$try;

    .line 8
    iput-object p1, p0, Lcom/apk/sk;->new:Lcom/apk/sk$new;

    .line 9
    iput-object p2, p0, Lcom/apk/sk;->try:Landroidx/core/util/Pools$Pool;

    return-void
.end method


# virtual methods
.method public final break(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, " in "

    .line 1
    invoke-static {p1, v0}, Lcom/apk/goto;->while(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-static {p2, p3}, Lcom/apk/cs;->do(J)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", load key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/apk/sk;->catch:Lcom/apk/yk;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p2, ", "

    .line 3
    invoke-static {p2, p4}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final case(Ljava/lang/Object;Lcom/apk/dj;)Lcom/apk/gl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/apk/dj;",
            ")",
            "Lcom/apk/gl<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/bl;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/sk;->do:Lcom/apk/rk;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/rk;->new(Ljava/lang/Class;)Lcom/apk/el;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/apk/sk;->super:Lcom/apk/mj;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    sget-object v1, Lcom/apk/dj;->new:Lcom/apk/dj;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lcom/apk/sk;->do:Lcom/apk/rk;

    .line 5
    iget-boolean v1, v1, Lcom/apk/rk;->import:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 6
    :goto_1
    sget-object v3, Lcom/apk/eo;->this:Lcom/apk/lj;

    invoke-virtual {v0, v3}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object v4, v0

    goto :goto_3

    .line 8
    :cond_4
    new-instance v0, Lcom/apk/mj;

    invoke-direct {v0}, Lcom/apk/mj;-><init>()V

    .line 9
    iget-object v3, p0, Lcom/apk/sk;->super:Lcom/apk/mj;

    invoke-virtual {v0, v3}, Lcom/apk/mj;->new(Lcom/apk/mj;)V

    .line 10
    sget-object v3, Lcom/apk/eo;->this:Lcom/apk/lj;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 11
    iget-object v4, v0, Lcom/apk/mj;->if:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 12
    :goto_3
    iget-object v0, p0, Lcom/apk/sk;->goto:Lcom/apk/li;

    .line 13
    iget-object v0, v0, Lcom/apk/li;->if:Lcom/apk/oi;

    .line 14
    iget-object v0, v0, Lcom/apk/oi;->try:Lcom/apk/wj;

    .line 15
    monitor-enter v0

    :try_start_0
    const-string v1, "Argument must not be null"

    .line 16
    invoke-static {p1, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object v1, v0, Lcom/apk/wj;->do:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/vj$do;

    if-nez v1, :cond_6

    .line 18
    iget-object v3, v0, Lcom/apk/wj;->do:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apk/vj$do;

    .line 19
    invoke-interface {v5}, Lcom/apk/vj$do;->do()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v1, v5

    :cond_6
    if-nez v1, :cond_7

    .line 20
    sget-object v1, Lcom/apk/wj;->if:Lcom/apk/vj$do;

    .line 21
    :cond_7
    invoke-interface {v1, p1}, Lcom/apk/vj$do;->if(Ljava/lang/Object;)Lcom/apk/vj;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 22
    :try_start_1
    iget v5, p0, Lcom/apk/sk;->class:I

    iget v6, p0, Lcom/apk/sk;->const:I

    new-instance v7, Lcom/apk/sk$if;

    invoke-direct {v7, p0, p2}, Lcom/apk/sk$if;-><init>(Lcom/apk/sk;Lcom/apk/dj;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/apk/el;->do(Lcom/apk/vj;Lcom/apk/mj;IILcom/apk/tk$do;)Lcom/apk/gl;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-interface {p1}, Lcom/apk/vj;->if()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/apk/vj;->if()V

    throw p2

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit v0

    throw p1
.end method

.method public final catch()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/apk/sk;->super()V

    .line 2
    new-instance v0, Lcom/apk/bl;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/apk/sk;->if:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/apk/bl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lcom/apk/sk;->throw:Lcom/apk/sk$do;

    check-cast v1, Lcom/apk/wk;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iput-object v0, v1, Lcom/apk/wk;->public:Lcom/apk/bl;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    monitor-enter v1

    .line 8
    :try_start_1
    iget-object v0, v1, Lcom/apk/wk;->if:Lcom/apk/ks;

    invoke-virtual {v0}, Lcom/apk/ks;->do()V

    .line 9
    iget-boolean v0, v1, Lcom/apk/wk;->throws:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/apk/wk;->else()V

    .line 11
    monitor-exit v1

    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, v1, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    invoke-virtual {v0}, Lcom/apk/wk$try;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-boolean v0, v1, Lcom/apk/wk;->return:Z

    if-nez v0, :cond_4

    .line 14
    iput-boolean v2, v1, Lcom/apk/wk;->return:Z

    .line 15
    iget-object v0, v1, Lcom/apk/wk;->class:Lcom/apk/kj;

    .line 16
    iget-object v3, v1, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/apk/wk$try;->do:Ljava/util/List;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    .line 19
    invoke-virtual {v1, v3}, Lcom/apk/wk;->try(I)V

    .line 20
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    iget-object v3, v1, Lcom/apk/wk;->case:Lcom/apk/xk;

    check-cast v3, Lcom/apk/vk;

    invoke-virtual {v3, v1, v0, v4}, Lcom/apk/vk;->try(Lcom/apk/wk;Lcom/apk/kj;Lcom/apk/al;)V

    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/wk$new;

    .line 24
    iget-object v4, v3, Lcom/apk/wk$new;->if:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/apk/wk$do;

    iget-object v3, v3, Lcom/apk/wk$new;->do:Lcom/apk/er;

    invoke-direct {v5, v1, v3}, Lcom/apk/wk$do;-><init>(Lcom/apk/wk;Lcom/apk/er;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v1}, Lcom/apk/wk;->new()V

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/apk/sk;->else:Lcom/apk/sk$try;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_2
    iput-boolean v2, v0, Lcom/apk/sk$try;->for:Z

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/apk/sk$try;->do(Z)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/apk/sk;->class()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0

    throw v1

    .line 32
    :cond_3
    :try_start_3
    throw v4

    .line 33
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already failed once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 35
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 36
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final class()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/sk;->else:Lcom/apk/sk$try;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, v0, Lcom/apk/sk$try;->if:Z

    .line 4
    iput-boolean v1, v0, Lcom/apk/sk$try;->do:Z

    .line 5
    iput-boolean v1, v0, Lcom/apk/sk$try;->for:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    iget-object v0, p0, Lcom/apk/sk;->case:Lcom/apk/sk$for;

    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/apk/sk$for;->do:Lcom/apk/kj;

    .line 9
    iput-object v2, v0, Lcom/apk/sk$for;->if:Lcom/apk/pj;

    .line 10
    iput-object v2, v0, Lcom/apk/sk$for;->for:Lcom/apk/fl;

    .line 11
    iget-object v0, p0, Lcom/apk/sk;->do:Lcom/apk/rk;

    .line 12
    iput-object v2, v0, Lcom/apk/rk;->for:Lcom/apk/li;

    .line 13
    iput-object v2, v0, Lcom/apk/rk;->new:Ljava/lang/Object;

    .line 14
    iput-object v2, v0, Lcom/apk/rk;->final:Lcom/apk/kj;

    .line 15
    iput-object v2, v0, Lcom/apk/rk;->else:Ljava/lang/Class;

    .line 16
    iput-object v2, v0, Lcom/apk/rk;->catch:Ljava/lang/Class;

    .line 17
    iput-object v2, v0, Lcom/apk/rk;->this:Lcom/apk/mj;

    .line 18
    iput-object v2, v0, Lcom/apk/rk;->super:Lcom/apk/ni;

    .line 19
    iput-object v2, v0, Lcom/apk/rk;->break:Ljava/util/Map;

    .line 20
    iput-object v2, v0, Lcom/apk/rk;->throw:Lcom/apk/uk;

    .line 21
    iget-object v3, v0, Lcom/apk/rk;->do:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 22
    iput-boolean v1, v0, Lcom/apk/rk;->class:Z

    .line 23
    iget-object v3, v0, Lcom/apk/rk;->if:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 24
    iput-boolean v1, v0, Lcom/apk/rk;->const:Z

    .line 25
    iput-boolean v1, p0, Lcom/apk/sk;->abstract:Z

    .line 26
    iput-object v2, p0, Lcom/apk/sk;->goto:Lcom/apk/li;

    .line 27
    iput-object v2, p0, Lcom/apk/sk;->this:Lcom/apk/kj;

    .line 28
    iput-object v2, p0, Lcom/apk/sk;->super:Lcom/apk/mj;

    .line 29
    iput-object v2, p0, Lcom/apk/sk;->break:Lcom/apk/ni;

    .line 30
    iput-object v2, p0, Lcom/apk/sk;->catch:Lcom/apk/yk;

    .line 31
    iput-object v2, p0, Lcom/apk/sk;->throw:Lcom/apk/sk$do;

    .line 32
    iput-object v2, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    .line 33
    iput-object v2, p0, Lcom/apk/sk;->private:Lcom/apk/qk;

    .line 34
    iput-object v2, p0, Lcom/apk/sk;->switch:Ljava/lang/Thread;

    .line 35
    iput-object v2, p0, Lcom/apk/sk;->throws:Lcom/apk/kj;

    .line 36
    iput-object v2, p0, Lcom/apk/sk;->extends:Ljava/lang/Object;

    .line 37
    iput-object v2, p0, Lcom/apk/sk;->finally:Lcom/apk/dj;

    .line 38
    iput-object v2, p0, Lcom/apk/sk;->package:Lcom/apk/uj;

    const-wide/16 v3, 0x0

    .line 39
    iput-wide v3, p0, Lcom/apk/sk;->public:J

    .line 40
    iput-boolean v1, p0, Lcom/apk/sk;->continue:Z

    .line 41
    iput-object v2, p0, Lcom/apk/sk;->static:Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/apk/sk;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/apk/sk;->try:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0

    throw v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/apk/sk;

    .line 2
    iget-object v0, p0, Lcom/apk/sk;->break:Lcom/apk/ni;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/apk/sk;->break:Lcom/apk/ni;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/apk/sk;->while:I

    iget p1, p1, Lcom/apk/sk;->while:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final const()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/sk;->switch:Ljava/lang/Thread;

    .line 2
    invoke-static {}, Lcom/apk/cs;->if()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apk/sk;->public:J

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/apk/sk;->continue:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/apk/sk;->private:Lcom/apk/qk;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/apk/sk;->private:Lcom/apk/qk;

    .line 4
    invoke-interface {v0}, Lcom/apk/qk;->if()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    invoke-virtual {p0, v1}, Lcom/apk/sk;->this(Lcom/apk/sk$else;)Lcom/apk/sk$else;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    .line 6
    invoke-virtual {p0}, Lcom/apk/sk;->goto()Lcom/apk/qk;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/sk;->private:Lcom/apk/qk;

    .line 7
    iget-object v1, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    sget-object v2, Lcom/apk/sk$else;->new:Lcom/apk/sk$else;

    if-ne v1, v2, :cond_0

    .line 8
    sget-object v0, Lcom/apk/sk$case;->if:Lcom/apk/sk$case;

    iput-object v0, p0, Lcom/apk/sk;->native:Lcom/apk/sk$case;

    .line 9
    iget-object v0, p0, Lcom/apk/sk;->throw:Lcom/apk/sk$do;

    check-cast v0, Lcom/apk/wk;

    invoke-virtual {v0, p0}, Lcom/apk/wk;->this(Lcom/apk/sk;)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    sget-object v2, Lcom/apk/sk$else;->case:Lcom/apk/sk$else;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/apk/sk;->continue:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/apk/sk;->catch()V

    :cond_3
    return-void
.end method

.method public do(Lcom/apk/kj;Ljava/lang/Exception;Lcom/apk/uj;Lcom/apk/dj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/kj;",
            "Ljava/lang/Exception;",
            "Lcom/apk/uj<",
            "*>;",
            "Lcom/apk/dj;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/apk/uj;->if()V

    .line 2
    new-instance v0, Lcom/apk/bl;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/apk/bl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-interface {p3}, Lcom/apk/uj;->do()Ljava/lang/Class;

    move-result-object p2

    .line 4
    iput-object p1, v0, Lcom/apk/bl;->if:Lcom/apk/kj;

    .line 5
    iput-object p4, v0, Lcom/apk/bl;->for:Lcom/apk/dj;

    .line 6
    iput-object p2, v0, Lcom/apk/bl;->new:Ljava/lang/Class;

    .line 7
    iget-object p1, p0, Lcom/apk/sk;->if:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/apk/sk;->switch:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 9
    sget-object p1, Lcom/apk/sk$case;->if:Lcom/apk/sk$case;

    iput-object p1, p0, Lcom/apk/sk;->native:Lcom/apk/sk$case;

    .line 10
    iget-object p1, p0, Lcom/apk/sk;->throw:Lcom/apk/sk$do;

    check-cast p1, Lcom/apk/wk;

    invoke-virtual {p1, p0}, Lcom/apk/wk;->this(Lcom/apk/sk;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/apk/sk;->const()V

    :goto_0
    return-void
.end method

.method public final else()V
    .locals 13

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    .line 2
    iget-wide v1, p0, Lcom/apk/sk;->public:J

    const-string v3, "data: "

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/apk/sk;->extends:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apk/sk;->throws:Lcom/apk/kj;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apk/sk;->package:Lcom/apk/uj;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/apk/sk;->break(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/apk/sk;->package:Lcom/apk/uj;

    iget-object v2, p0, Lcom/apk/sk;->extends:Ljava/lang/Object;

    iget-object v3, p0, Lcom/apk/sk;->finally:Lcom/apk/dj;

    invoke-virtual {p0, v1, v2, v3}, Lcom/apk/sk;->try(Lcom/apk/uj;Ljava/lang/Object;Lcom/apk/dj;)Lcom/apk/gl;

    move-result-object v1
    :try_end_0
    .catch Lcom/apk/bl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    iget-object v2, p0, Lcom/apk/sk;->default:Lcom/apk/kj;

    iget-object v3, p0, Lcom/apk/sk;->finally:Lcom/apk/dj;

    .line 5
    iput-object v2, v1, Lcom/apk/bl;->if:Lcom/apk/kj;

    .line 6
    iput-object v3, v1, Lcom/apk/bl;->for:Lcom/apk/dj;

    .line 7
    iput-object v0, v1, Lcom/apk/bl;->new:Ljava/lang/Class;

    .line 8
    iget-object v2, p0, Lcom/apk/sk;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_f

    .line 9
    iget-object v2, p0, Lcom/apk/sk;->finally:Lcom/apk/dj;

    .line 10
    instance-of v3, v1, Lcom/apk/cl;

    if-eqz v3, :cond_1

    .line 11
    move-object v3, v1

    check-cast v3, Lcom/apk/cl;

    invoke-interface {v3}, Lcom/apk/cl;->if()V

    .line 12
    :cond_1
    iget-object v3, p0, Lcom/apk/sk;->case:Lcom/apk/sk$for;

    .line 13
    iget-object v3, v3, Lcom/apk/sk$for;->for:Lcom/apk/fl;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 14
    invoke-static {v1}, Lcom/apk/fl;->try(Lcom/apk/gl;)Lcom/apk/fl;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_3
    move-object v3, v0

    .line 15
    :goto_2
    invoke-virtual {p0}, Lcom/apk/sk;->super()V

    .line 16
    iget-object v6, p0, Lcom/apk/sk;->throw:Lcom/apk/sk$do;

    check-cast v6, Lcom/apk/wk;

    .line 17
    monitor-enter v6

    .line 18
    :try_start_1
    iput-object v1, v6, Lcom/apk/wk;->while:Lcom/apk/gl;

    .line 19
    iput-object v2, v6, Lcom/apk/wk;->import:Lcom/apk/dj;

    .line 20
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 21
    monitor-enter v6

    .line 22
    :try_start_2
    iget-object v1, v6, Lcom/apk/wk;->if:Lcom/apk/ks;

    invoke-virtual {v1}, Lcom/apk/ks;->do()V

    .line 23
    iget-boolean v1, v6, Lcom/apk/wk;->throws:Z

    if-eqz v1, :cond_4

    .line 24
    iget-object v1, v6, Lcom/apk/wk;->while:Lcom/apk/gl;

    invoke-interface {v1}, Lcom/apk/gl;->do()V

    .line 25
    invoke-virtual {v6}, Lcom/apk/wk;->else()V

    .line 26
    monitor-exit v6

    goto :goto_4

    .line 27
    :cond_4
    iget-object v1, v6, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    invoke-virtual {v1}, Lcom/apk/wk$try;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 28
    iget-boolean v1, v6, Lcom/apk/wk;->native:Z

    if-nez v1, :cond_d

    .line 29
    iget-object v1, v6, Lcom/apk/wk;->try:Lcom/apk/wk$for;

    iget-object v8, v6, Lcom/apk/wk;->while:Lcom/apk/gl;

    iget-boolean v9, v6, Lcom/apk/wk;->const:Z

    iget-object v11, v6, Lcom/apk/wk;->class:Lcom/apk/kj;

    iget-object v12, v6, Lcom/apk/wk;->for:Lcom/apk/al$do;

    if-eqz v1, :cond_c

    .line 30
    new-instance v1, Lcom/apk/al;

    const/4 v10, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/apk/al;-><init>(Lcom/apk/gl;ZZLcom/apk/kj;Lcom/apk/al$do;)V

    .line 31
    iput-object v1, v6, Lcom/apk/wk;->static:Lcom/apk/al;

    .line 32
    iput-boolean v4, v6, Lcom/apk/wk;->native:Z

    .line 33
    iget-object v1, v6, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    if-eqz v1, :cond_b

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/apk/wk$try;->do:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    .line 36
    invoke-virtual {v6, v1}, Lcom/apk/wk;->try(I)V

    .line 37
    iget-object v1, v6, Lcom/apk/wk;->class:Lcom/apk/kj;

    .line 38
    iget-object v7, v6, Lcom/apk/wk;->static:Lcom/apk/al;

    .line 39
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 40
    iget-object v8, v6, Lcom/apk/wk;->case:Lcom/apk/xk;

    check-cast v8, Lcom/apk/vk;

    invoke-virtual {v8, v6, v1, v7}, Lcom/apk/vk;->try(Lcom/apk/wk;Lcom/apk/kj;Lcom/apk/al;)V

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/wk$new;

    .line 43
    iget-object v7, v2, Lcom/apk/wk$new;->if:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/apk/wk$if;

    iget-object v2, v2, Lcom/apk/wk$new;->do:Lcom/apk/er;

    invoke-direct {v8, v6, v2}, Lcom/apk/wk$if;-><init>(Lcom/apk/wk;Lcom/apk/er;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 44
    :cond_5
    invoke-virtual {v6}, Lcom/apk/wk;->new()V

    .line 45
    :goto_4
    sget-object v1, Lcom/apk/sk$else;->try:Lcom/apk/sk$else;

    iput-object v1, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    .line 46
    :try_start_3
    iget-object v1, p0, Lcom/apk/sk;->case:Lcom/apk/sk$for;

    .line 47
    iget-object v1, v1, Lcom/apk/sk$for;->for:Lcom/apk/fl;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_8

    .line 48
    iget-object v1, p0, Lcom/apk/sk;->case:Lcom/apk/sk$for;

    iget-object v2, p0, Lcom/apk/sk;->new:Lcom/apk/sk$new;

    iget-object v6, p0, Lcom/apk/sk;->super:Lcom/apk/mj;

    if-eqz v1, :cond_7

    .line 49
    check-cast v2, Lcom/apk/vk$for;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Lcom/apk/vk$for;->do()Lcom/apk/zl;

    move-result-object v0

    iget-object v2, v1, Lcom/apk/sk$for;->do:Lcom/apk/kj;

    new-instance v7, Lcom/apk/pk;

    iget-object v8, v1, Lcom/apk/sk$for;->if:Lcom/apk/pj;

    iget-object v9, v1, Lcom/apk/sk$for;->for:Lcom/apk/fl;

    invoke-direct {v7, v8, v9, v6}, Lcom/apk/pk;-><init>(Lcom/apk/gj;Ljava/lang/Object;Lcom/apk/mj;)V

    .line 50
    invoke-interface {v0, v2, v7}, Lcom/apk/zl;->do(Lcom/apk/kj;Lcom/apk/zl$if;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    :try_start_5
    iget-object v0, v1, Lcom/apk/sk$for;->for:Lcom/apk/fl;

    invoke-virtual {v0}, Lcom/apk/fl;->case()V

    goto :goto_6

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/apk/sk$for;->for:Lcom/apk/fl;

    invoke-virtual {v1}, Lcom/apk/fl;->case()V

    .line 52
    throw v0

    .line 53
    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_8
    :goto_6
    if-eqz v3, :cond_9

    .line 54
    invoke-virtual {v3}, Lcom/apk/fl;->case()V

    .line 55
    :cond_9
    iget-object v0, p0, Lcom/apk/sk;->else:Lcom/apk/sk$try;

    .line 56
    monitor-enter v0

    .line 57
    :try_start_6
    iput-boolean v4, v0, Lcom/apk/sk$try;->if:Z

    .line 58
    invoke-virtual {v0, v5}, Lcom/apk/sk$try;->do(Z)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_10

    .line 59
    invoke-virtual {p0}, Lcom/apk/sk;->class()V

    goto :goto_7

    :catchall_1
    move-exception v1

    .line 60
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_a

    .line 61
    invoke-virtual {v3}, Lcom/apk/fl;->case()V

    :cond_a
    throw v0

    .line 62
    :cond_b
    :try_start_7
    throw v0

    .line 63
    :cond_c
    throw v0

    .line 64
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 66
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    .line 67
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 68
    :cond_f
    invoke-virtual {p0}, Lcom/apk/sk;->const()V

    :cond_10
    :goto_7
    return-void
.end method

.method public final final()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/sk;->native:Lcom/apk/sk$case;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/sk;->else()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized run reason: "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/sk;->native:Lcom/apk/sk$case;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/apk/sk;->const()V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/apk/sk$else;->do:Lcom/apk/sk$else;

    invoke-virtual {p0, v0}, Lcom/apk/sk;->this(Lcom/apk/sk$else;)Lcom/apk/sk$else;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    .line 6
    invoke-virtual {p0}, Lcom/apk/sk;->goto()Lcom/apk/qk;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/sk;->private:Lcom/apk/qk;

    .line 7
    invoke-virtual {p0}, Lcom/apk/sk;->const()V

    :goto_0
    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/sk$case;->if:Lcom/apk/sk$case;

    iput-object v0, p0, Lcom/apk/sk;->native:Lcom/apk/sk$case;

    .line 2
    iget-object v0, p0, Lcom/apk/sk;->throw:Lcom/apk/sk$do;

    check-cast v0, Lcom/apk/wk;

    invoke-virtual {v0, p0}, Lcom/apk/wk;->this(Lcom/apk/sk;)V

    return-void
.end method

.method public final goto()Lcom/apk/qk;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized stage: "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance v0, Lcom/apk/ll;

    iget-object v1, p0, Lcom/apk/sk;->do:Lcom/apk/rk;

    invoke-direct {v0, v1, p0}, Lcom/apk/ll;-><init>(Lcom/apk/rk;Lcom/apk/qk$do;)V

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Lcom/apk/nk;

    iget-object v1, p0, Lcom/apk/sk;->do:Lcom/apk/rk;

    invoke-direct {v0, v1, p0}, Lcom/apk/nk;-><init>(Lcom/apk/rk;Lcom/apk/qk$do;)V

    return-object v0

    .line 5
    :cond_3
    new-instance v0, Lcom/apk/hl;

    iget-object v1, p0, Lcom/apk/sk;->do:Lcom/apk/rk;

    invoke-direct {v0, v1, p0}, Lcom/apk/hl;-><init>(Lcom/apk/rk;Lcom/apk/qk$do;)V

    return-object v0
.end method

.method public if()Lcom/apk/ks;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/sk;->for:Lcom/apk/ks;

    return-object v0
.end method

.method public new(Lcom/apk/kj;Ljava/lang/Object;Lcom/apk/uj;Lcom/apk/dj;Lcom/apk/kj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/kj;",
            "Ljava/lang/Object;",
            "Lcom/apk/uj<",
            "*>;",
            "Lcom/apk/dj;",
            "Lcom/apk/kj;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/sk;->throws:Lcom/apk/kj;

    .line 2
    iput-object p2, p0, Lcom/apk/sk;->extends:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/apk/sk;->package:Lcom/apk/uj;

    .line 4
    iput-object p4, p0, Lcom/apk/sk;->finally:Lcom/apk/dj;

    .line 5
    iput-object p5, p0, Lcom/apk/sk;->default:Lcom/apk/kj;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/apk/sk;->switch:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 7
    sget-object p1, Lcom/apk/sk$case;->for:Lcom/apk/sk$case;

    iput-object p1, p0, Lcom/apk/sk;->native:Lcom/apk/sk$case;

    .line 8
    iget-object p1, p0, Lcom/apk/sk;->throw:Lcom/apk/sk$do;

    check-cast p1, Lcom/apk/wk;

    invoke-virtual {p1, p0}, Lcom/apk/wk;->this(Lcom/apk/sk;)V

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/sk;->else()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    throw p1
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/sk;->package:Lcom/apk/uj;

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/apk/sk;->continue:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/apk/sk;->catch()V
    :try_end_0
    .catch Lcom/apk/mk; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/apk/uj;->if()V

    :cond_0
    return-void

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/apk/sk;->final()V
    :try_end_1
    .catch Lcom/apk/mk; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/apk/uj;->if()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "DecodeJob"

    const/4 v3, 0x3

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/apk/sk;->continue:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/apk/sk;->import:Lcom/apk/sk$else;

    sget-object v3, Lcom/apk/sk$else;->try:Lcom/apk/sk$else;

    if-eq v2, v3, :cond_4

    .line 10
    iget-object v2, p0, Lcom/apk/sk;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lcom/apk/sk;->catch()V

    .line 12
    :cond_4
    iget-boolean v2, p0, Lcom/apk/sk;->continue:Z

    if-nez v2, :cond_5

    .line 13
    throw v1

    .line 14
    :cond_5
    throw v1

    :catch_0
    move-exception v1

    .line 15
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0}, Lcom/apk/uj;->if()V

    .line 17
    :cond_6
    throw v1
.end method

.method public final super()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/sk;->for:Lcom/apk/ks;

    invoke-virtual {v0}, Lcom/apk/ks;->do()V

    .line 2
    iget-boolean v0, p0, Lcom/apk/sk;->abstract:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/apk/sk;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apk/sk;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/apk/sk;->abstract:Z

    return-void
.end method

.method public final this(Lcom/apk/sk$else;)Lcom/apk/sk$else;
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/sk$else;->if:Lcom/apk/sk$else;

    sget-object v1, Lcom/apk/sk$else;->for:Lcom/apk/sk$else;

    sget-object v2, Lcom/apk/sk$else;->case:Lcom/apk/sk$else;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    if-eq v3, v0, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    const/4 v0, 0x5

    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v2

    .line 3
    :cond_2
    iget-boolean p1, p0, Lcom/apk/sk;->return:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/apk/sk$else;->new:Lcom/apk/sk$else;

    :goto_1
    return-object v2

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/apk/sk;->final:Lcom/apk/uk;

    invoke-virtual {p1}, Lcom/apk/uk;->do()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    invoke-virtual {p0, v1}, Lcom/apk/sk;->this(Lcom/apk/sk$else;)Lcom/apk/sk$else;

    move-result-object v1

    :goto_2
    return-object v1

    .line 6
    :cond_6
    iget-object p1, p0, Lcom/apk/sk;->final:Lcom/apk/uk;

    invoke-virtual {p1}, Lcom/apk/uk;->if()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 7
    :cond_7
    invoke-virtual {p0, v0}, Lcom/apk/sk;->this(Lcom/apk/sk$else;)Lcom/apk/sk$else;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public final try(Lcom/apk/uj;Ljava/lang/Object;Lcom/apk/dj;)Lcom/apk/gl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apk/uj<",
            "*>;TData;",
            "Lcom/apk/dj;",
            ")",
            "Lcom/apk/gl<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/bl;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/apk/uj;->if()V

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/apk/cs;->if()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/apk/sk;->case(Ljava/lang/Object;Lcom/apk/dj;)Lcom/apk/gl;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    .line 4
    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded result "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p0, p3, v1, v2, v0}, Lcom/apk/sk;->break(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    invoke-interface {p1}, Lcom/apk/uj;->if()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/apk/uj;->if()V

    throw p2
.end method
