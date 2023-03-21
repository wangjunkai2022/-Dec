.class public Lcom/apk/wk;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/apk/sk$do;
.implements Lcom/apk/hs$new;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/wk$for;,
        Lcom/apk/wk$new;,
        Lcom/apk/wk$try;,
        Lcom/apk/wk$if;,
        Lcom/apk/wk$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/sk$do<",
        "TR;>;",
        "Lcom/apk/hs$new;"
    }
.end annotation


# static fields
.field public static final default:Lcom/apk/wk$for;


# instance fields
.field public final break:Lcom/apk/km;

.field public final case:Lcom/apk/xk;

.field public final catch:Ljava/util/concurrent/atomic/AtomicInteger;

.field public class:Lcom/apk/kj;

.field public const:Z

.field public final do:Lcom/apk/wk$try;

.field public final else:Lcom/apk/km;

.field public final:Z

.field public final for:Lcom/apk/al$do;

.field public final goto:Lcom/apk/km;

.field public final if:Lcom/apk/ks;

.field public import:Lcom/apk/dj;

.field public native:Z

.field public final new:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/apk/wk<",
            "*>;>;"
        }
    .end annotation
.end field

.field public public:Lcom/apk/bl;

.field public return:Z

.field public static:Lcom/apk/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/al<",
            "*>;"
        }
    .end annotation
.end field

.field public super:Z

.field public switch:Lcom/apk/sk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/sk<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final this:Lcom/apk/km;

.field public throw:Z

.field public volatile throws:Z

.field public final try:Lcom/apk/wk$for;

.field public while:Lcom/apk/gl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gl<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/wk$for;

    invoke-direct {v0}, Lcom/apk/wk$for;-><init>()V

    sput-object v0, Lcom/apk/wk;->default:Lcom/apk/wk$for;

    return-void
.end method

.method public constructor <init>(Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Lcom/apk/xk;Lcom/apk/al$do;Landroidx/core/util/Pools$Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/km;",
            "Lcom/apk/km;",
            "Lcom/apk/km;",
            "Lcom/apk/km;",
            "Lcom/apk/xk;",
            "Lcom/apk/al$do;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/apk/wk<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/wk;->default:Lcom/apk/wk$for;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lcom/apk/wk$try;

    invoke-direct {v1}, Lcom/apk/wk$try;-><init>()V

    iput-object v1, p0, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    .line 4
    new-instance v1, Lcom/apk/ks$if;

    invoke-direct {v1}, Lcom/apk/ks$if;-><init>()V

    .line 5
    iput-object v1, p0, Lcom/apk/wk;->if:Lcom/apk/ks;

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/apk/wk;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    iput-object p1, p0, Lcom/apk/wk;->else:Lcom/apk/km;

    .line 8
    iput-object p2, p0, Lcom/apk/wk;->goto:Lcom/apk/km;

    .line 9
    iput-object p3, p0, Lcom/apk/wk;->this:Lcom/apk/km;

    .line 10
    iput-object p4, p0, Lcom/apk/wk;->break:Lcom/apk/km;

    .line 11
    iput-object p5, p0, Lcom/apk/wk;->case:Lcom/apk/xk;

    .line 12
    iput-object p6, p0, Lcom/apk/wk;->for:Lcom/apk/al$do;

    .line 13
    iput-object p7, p0, Lcom/apk/wk;->new:Landroidx/core/util/Pools$Pool;

    .line 14
    iput-object v0, p0, Lcom/apk/wk;->try:Lcom/apk/wk$for;

    return-void
.end method


# virtual methods
.method public final case()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/wk;->return:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/apk/wk;->native:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/apk/wk;->throws:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public declared-synchronized do(Lcom/apk/er;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/wk;->if:Lcom/apk/ks;

    invoke-virtual {v0}, Lcom/apk/ks;->do()V

    .line 2
    iget-object v0, p0, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    .line 3
    iget-object v0, v0, Lcom/apk/wk$try;->do:Ljava/util/List;

    new-instance v1, Lcom/apk/wk$new;

    invoke-direct {v1, p1, p2}, Lcom/apk/wk$new;-><init>(Lcom/apk/er;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean v0, p0, Lcom/apk/wk;->native:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/apk/wk;->try(I)V

    .line 6
    new-instance v0, Lcom/apk/wk$if;

    invoke-direct {v0, p0, p1}, Lcom/apk/wk$if;-><init>(Lcom/apk/wk;Lcom/apk/er;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/apk/wk;->return:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Lcom/apk/wk;->try(I)V

    .line 9
    new-instance v0, Lcom/apk/wk$do;

    invoke-direct {v0, p0, p1}, Lcom/apk/wk$do;-><init>(Lcom/apk/wk;Lcom/apk/er;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-boolean p1, p0, Lcom/apk/wk;->throws:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, Lcom/apk/eg;->try(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized else()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/wk;->class:Lcom/apk/kj;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    .line 3
    iget-object v0, v0, Lcom/apk/wk$try;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/apk/wk;->class:Lcom/apk/kj;

    .line 5
    iput-object v0, p0, Lcom/apk/wk;->static:Lcom/apk/al;

    .line 6
    iput-object v0, p0, Lcom/apk/wk;->while:Lcom/apk/gl;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/apk/wk;->return:Z

    .line 8
    iput-boolean v1, p0, Lcom/apk/wk;->throws:Z

    .line 9
    iput-boolean v1, p0, Lcom/apk/wk;->native:Z

    .line 10
    iget-object v2, p0, Lcom/apk/wk;->switch:Lcom/apk/sk;

    .line 11
    iget-object v3, v2, Lcom/apk/sk;->else:Lcom/apk/sk$try;

    .line 12
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    .line 13
    :try_start_1
    iput-boolean v4, v3, Lcom/apk/sk$try;->do:Z

    .line 14
    invoke-virtual {v3, v1}, Lcom/apk/sk$try;->do(Z)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v2}, Lcom/apk/sk;->class()V

    .line 16
    :cond_0
    iput-object v0, p0, Lcom/apk/wk;->switch:Lcom/apk/sk;

    .line 17
    iput-object v0, p0, Lcom/apk/wk;->public:Lcom/apk/bl;

    .line 18
    iput-object v0, p0, Lcom/apk/wk;->import:Lcom/apk/dj;

    .line 19
    iget-object v0, p0, Lcom/apk/wk;->new:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 21
    :try_start_3
    monitor-exit v3

    throw v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public for()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/apk/wk;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/wk;->throws:Z

    .line 3
    iget-object v1, p0, Lcom/apk/wk;->switch:Lcom/apk/sk;

    .line 4
    iput-boolean v0, v1, Lcom/apk/sk;->continue:Z

    .line 5
    iget-object v0, v1, Lcom/apk/sk;->private:Lcom/apk/qk;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/apk/qk;->cancel()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/wk;->case:Lcom/apk/xk;

    iget-object v1, p0, Lcom/apk/wk;->class:Lcom/apk/kj;

    check-cast v0, Lcom/apk/vk;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/apk/vk;->do:Lcom/apk/dl;

    if-eqz v2, :cond_3

    .line 10
    iget-boolean v3, p0, Lcom/apk/wk;->throw:Z

    .line 11
    invoke-virtual {v2, v3}, Lcom/apk/dl;->do(Z)Ljava/util/Map;

    move-result-object v2

    .line 12
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 15
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public declared-synchronized goto(Lcom/apk/er;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/wk;->if:Lcom/apk/ks;

    invoke-virtual {v0}, Lcom/apk/ks;->do()V

    .line 2
    iget-object v0, p0, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    .line 3
    iget-object v0, v0, Lcom/apk/wk$try;->do:Ljava/util/List;

    .line 4
    new-instance v1, Lcom/apk/wk$new;

    .line 5
    sget-object v2, Lcom/apk/as;->if:Ljava/util/concurrent/Executor;

    .line 6
    invoke-direct {v1, p1, v2}, Lcom/apk/wk$new;-><init>(Lcom/apk/er;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    invoke-virtual {p1}, Lcom/apk/wk$try;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/apk/wk;->for()V

    .line 10
    iget-boolean p1, p0, Lcom/apk/wk;->native:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/apk/wk;->return:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/apk/wk;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/apk/wk;->else()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public if()Lcom/apk/ks;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/wk;->if:Lcom/apk/ks;

    return-object v0
.end method

.method public new()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/wk;->if:Lcom/apk/ks;

    invoke-virtual {v0}, Lcom/apk/ks;->do()V

    .line 3
    invoke-virtual {p0}, Lcom/apk/wk;->case()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lcom/apk/eg;->try(ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/apk/wk;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 5
    invoke-static {v1, v2}, Lcom/apk/eg;->try(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/wk;->static:Lcom/apk/al;

    .line 7
    invoke-virtual {p0}, Lcom/apk/wk;->else()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/apk/al;->try()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public this(Lcom/apk/sk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/sk<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/wk;->final:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/wk;->this:Lcom/apk/km;

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/apk/wk;->super:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/wk;->break:Lcom/apk/km;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apk/wk;->goto:Lcom/apk/km;

    .line 4
    :goto_0
    iget-object v0, v0, Lcom/apk/km;->do:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized try(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/wk;->case()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lcom/apk/eg;->try(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/wk;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/apk/wk;->static:Lcom/apk/al;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/wk;->static:Lcom/apk/al;

    invoke-virtual {p1}, Lcom/apk/al;->if()V
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
