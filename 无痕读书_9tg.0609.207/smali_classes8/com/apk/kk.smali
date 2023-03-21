.class public final Lcom/apk/kk;
.super Ljava/lang/Object;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/kk$if;
    }
.end annotation


# instance fields
.field public final do:Z

.field public final for:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/apk/al<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final if:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/apk/kj;",
            "Lcom/apk/kk$if;",
            ">;"
        }
    .end annotation
.end field

.field public new:Lcom/apk/al$do;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/kk$do;

    invoke-direct {v0}, Lcom/apk/kk$do;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/apk/kk;->if:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lcom/apk/kk;->for:Ljava/lang/ref/ReferenceQueue;

    .line 6
    iput-boolean p1, p0, Lcom/apk/kk;->do:Z

    .line 7
    new-instance p1, Lcom/apk/lk;

    invoke-direct {p1, p0}, Lcom/apk/lk;-><init>(Lcom/apk/kk;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized do(Lcom/apk/kj;Lcom/apk/al;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/kj;",
            "Lcom/apk/al<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/apk/kk$if;

    iget-object v1, p0, Lcom/apk/kk;->for:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lcom/apk/kk;->do:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/apk/kk$if;-><init>(Lcom/apk/kj;Lcom/apk/al;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 2
    iget-object p2, p0, Lcom/apk/kk;->if:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/kk$if;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 3
    iput-object p2, p1, Lcom/apk/kk$if;->for:Lcom/apk/gl;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public if(Lcom/apk/kk$if;)V
    .locals 7
    .param p1    # Lcom/apk/kk$if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/kk;->if:Ljava/util/Map;

    iget-object v1, p1, Lcom/apk/kk$if;->do:Lcom/apk/kj;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p1, Lcom/apk/kk$if;->if:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/apk/kk$if;->for:Lcom/apk/gl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Lcom/apk/al;

    iget-object v2, p1, Lcom/apk/kk$if;->for:Lcom/apk/gl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/apk/kk$if;->do:Lcom/apk/kj;

    iget-object v6, p0, Lcom/apk/kk;->new:Lcom/apk/al$do;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/apk/al;-><init>(Lcom/apk/gl;ZZLcom/apk/kj;Lcom/apk/al$do;)V

    .line 6
    iget-object v1, p0, Lcom/apk/kk;->new:Lcom/apk/al$do;

    iget-object p1, p1, Lcom/apk/kk$if;->do:Lcom/apk/kj;

    invoke-interface {v1, p1, v0}, Lcom/apk/al$do;->do(Lcom/apk/kj;Lcom/apk/al;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
