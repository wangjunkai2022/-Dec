.class public Lcom/apk/oi;
.super Ljava/lang/Object;
.source "Registry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/oi$if;,
        Lcom/apk/oi$do;,
        Lcom/apk/oi$try;,
        Lcom/apk/oi$new;,
        Lcom/apk/oi$for;
    }
.end annotation


# instance fields
.field public final break:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final case:Lcom/apk/up;

.field public final do:Lcom/apk/an;

.field public final else:Lcom/apk/sq;

.field public final for:Lcom/apk/vq;

.field public final goto:Lcom/apk/uq;

.field public final if:Lcom/apk/rq;

.field public final new:Lcom/apk/wq;

.field public final this:Lcom/apk/tq;

.field public final try:Lcom/apk/wj;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/uq;

    invoke-direct {v0}, Lcom/apk/uq;-><init>()V

    iput-object v0, p0, Lcom/apk/oi;->goto:Lcom/apk/uq;

    .line 3
    new-instance v0, Lcom/apk/tq;

    invoke-direct {v0}, Lcom/apk/tq;-><init>()V

    iput-object v0, p0, Lcom/apk/oi;->this:Lcom/apk/tq;

    .line 4
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance v1, Lcom/apk/is;

    invoke-direct {v1}, Lcom/apk/is;-><init>()V

    new-instance v2, Lcom/apk/js;

    invoke-direct {v2}, Lcom/apk/js;-><init>()V

    .line 5
    new-instance v3, Lcom/apk/hs$for;

    invoke-direct {v3, v0, v1, v2}, Lcom/apk/hs$for;-><init>(Landroidx/core/util/Pools$Pool;Lcom/apk/hs$if;Lcom/apk/hs$try;)V

    .line 6
    iput-object v3, p0, Lcom/apk/oi;->break:Landroidx/core/util/Pools$Pool;

    .line 7
    new-instance v0, Lcom/apk/an;

    invoke-direct {v0, v3}, Lcom/apk/an;-><init>(Landroidx/core/util/Pools$Pool;)V

    iput-object v0, p0, Lcom/apk/oi;->do:Lcom/apk/an;

    .line 8
    new-instance v0, Lcom/apk/rq;

    invoke-direct {v0}, Lcom/apk/rq;-><init>()V

    iput-object v0, p0, Lcom/apk/oi;->if:Lcom/apk/rq;

    .line 9
    new-instance v0, Lcom/apk/vq;

    invoke-direct {v0}, Lcom/apk/vq;-><init>()V

    iput-object v0, p0, Lcom/apk/oi;->for:Lcom/apk/vq;

    .line 10
    new-instance v0, Lcom/apk/wq;

    invoke-direct {v0}, Lcom/apk/wq;-><init>()V

    iput-object v0, p0, Lcom/apk/oi;->new:Lcom/apk/wq;

    .line 11
    new-instance v0, Lcom/apk/wj;

    invoke-direct {v0}, Lcom/apk/wj;-><init>()V

    iput-object v0, p0, Lcom/apk/oi;->try:Lcom/apk/wj;

    .line 12
    new-instance v0, Lcom/apk/up;

    invoke-direct {v0}, Lcom/apk/up;-><init>()V

    iput-object v0, p0, Lcom/apk/oi;->case:Lcom/apk/up;

    .line 13
    new-instance v0, Lcom/apk/sq;

    invoke-direct {v0}, Lcom/apk/sq;-><init>()V

    iput-object v0, p0, Lcom/apk/oi;->else:Lcom/apk/sq;

    const-string v0, "Gif"

    const-string v1, "Bitmap"

    const-string v2, "BitmapDrawable"

    .line 14
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v0, "legacy_prepend_all"

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "legacy_append"

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/apk/oi;->for:Lcom/apk/vq;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/apk/vq;->do:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    iget-object v3, v0, Lcom/apk/vq;->do:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 25
    iget-object v5, v0, Lcom/apk/vq;->do:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 28
    iget-object v4, v0, Lcom/apk/vq;->do:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 29
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public case(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lcom/apk/ym<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/oi;->do:Lcom/apk/an;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v3, v0, Lcom/apk/an;->if:Lcom/apk/an$do;

    .line 5
    iget-object v3, v3, Lcom/apk/an$do;->do:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/an$do$do;

    if-nez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v3, Lcom/apk/an$do$do;->do:Ljava/util/List;

    :goto_0
    if-nez v1, :cond_2

    .line 7
    iget-object v1, v0, Lcom/apk/an;->do:Lcom/apk/cn;

    invoke-virtual {v1, v2}, Lcom/apk/cn;->new(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 8
    iget-object v3, v0, Lcom/apk/an;->if:Lcom/apk/an$do;

    .line 9
    iget-object v3, v3, Lcom/apk/an$do;->do:Ljava/util/Map;

    new-instance v4, Lcom/apk/an$do$do;

    invoke-direct {v4, v1}, Lcom/apk/an$do$do;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/an$do$do;

    if-nez v3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already cached loaders for model: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    :goto_1
    monitor-exit v0

    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_5

    .line 15
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apk/ym;

    .line 16
    invoke-interface {v6, p1}, Lcom/apk/ym;->do(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_3

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 18
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 19
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    return-object v2

    .line 20
    :cond_6
    new-instance v0, Lcom/apk/oi$for;

    invoke-direct {v0, p1, v1}, Lcom/apk/oi$for;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    throw v0

    .line 21
    :cond_7
    new-instance v0, Lcom/apk/oi$for;

    invoke-direct {v0, p1}, Lcom/apk/oi$for;-><init>(Ljava/lang/Object;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0

    throw p1

    .line 23
    :cond_8
    throw v1
.end method

.method public do(Ljava/lang/Class;Lcom/apk/gj;)Lcom/apk/oi;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/gj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/apk/gj<",
            "TData;>;)",
            "Lcom/apk/oi;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/oi;->if:Lcom/apk/rq;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/rq;->do:Ljava/util/List;

    new-instance v2, Lcom/apk/rq$do;

    invoke-direct {v2, p1, p2}, Lcom/apk/rq$do;-><init>(Ljava/lang/Class;Lcom/apk/gj;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public else(Lcom/apk/vj$do;)Lcom/apk/oi;
    .locals 3
    .param p1    # Lcom/apk/vj$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/vj$do<",
            "*>;)",
            "Lcom/apk/oi;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/oi;->try:Lcom/apk/wj;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/wj;->do:Ljava/util/Map;

    invoke-interface {p1}, Lcom/apk/vj$do;->do()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/zm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/apk/zm<",
            "TModel;TData;>;)",
            "Lcom/apk/oi;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/oi;->do:Lcom/apk/an;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/an;->do:Lcom/apk/cn;

    invoke-virtual {v1, p1, p2, p3}, Lcom/apk/cn;->do(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)V

    .line 4
    iget-object p1, v0, Lcom/apk/an;->if:Lcom/apk/an$do;

    .line 5
    iget-object p1, p1, Lcom/apk/an$do;->do:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public goto(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/tp;)Lcom/apk/oi;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/tp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lcom/apk/tp<",
            "TTResource;TTranscode;>;)",
            "Lcom/apk/oi;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/oi;->case:Lcom/apk/up;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/up;->do:Ljava/util/List;

    new-instance v2, Lcom/apk/up$do;

    invoke-direct {v2, p1, p2, p3}, Lcom/apk/up$do;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/tp;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public if(Ljava/lang/Class;Lcom/apk/pj;)Lcom/apk/oi;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/pj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/apk/pj<",
            "TTResource;>;)",
            "Lcom/apk/oi;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/oi;->new:Lcom/apk/wq;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/wq;->do:Ljava/util/List;

    new-instance v2, Lcom/apk/wq$do;

    invoke-direct {v2, p1, p2}, Lcom/apk/wq$do;-><init>(Ljava/lang/Class;Lcom/apk/pj;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/oj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/apk/oj<",
            "TData;TTResource;>;)",
            "Lcom/apk/oi;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/oi;->for:Lcom/apk/vq;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/apk/vq;->do(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/apk/vq$do;

    invoke-direct {v1, p2, p3, p4}, Lcom/apk/vq$do;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public this(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/zm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/apk/zm<",
            "+TModel;+TData;>;)",
            "Lcom/apk/oi;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/oi;->do:Lcom/apk/an;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/an;->do:Lcom/apk/cn;

    .line 4
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lcom/apk/cn;->case(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-virtual {v1, p1, p2, p3}, Lcom/apk/cn;->do(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apk/zm;

    .line 9
    invoke-interface {p2}, Lcom/apk/zm;->do()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, v0, Lcom/apk/an;->if:Lcom/apk/an$do;

    .line 11
    iget-object p1, p1, Lcom/apk/an$do;->do:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_4
    monitor-exit v1

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public try()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/oi;->else:Lcom/apk/sq;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/sq;->do:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v0, Lcom/apk/oi$if;

    invoke-direct {v0}, Lcom/apk/oi$if;-><init>()V

    throw v0

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method
