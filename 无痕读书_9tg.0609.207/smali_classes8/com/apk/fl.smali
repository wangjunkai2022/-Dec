.class public final Lcom/apk/fl;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lcom/apk/gl;
.implements Lcom/apk/hs$new;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/gl<",
        "TZ;>;",
        "Lcom/apk/hs$new;"
    }
.end annotation


# static fields
.field public static final try:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/apk/fl<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final do:Lcom/apk/ks;

.field public for:Z

.field public if:Lcom/apk/gl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gl<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public new:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/fl$do;

    invoke-direct {v0}, Lcom/apk/fl$do;-><init>()V

    const/16 v1, 0x14

    .line 2
    invoke-static {v1, v0}, Lcom/apk/hs;->do(ILcom/apk/hs$if;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/apk/fl;->try:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/ks$if;

    invoke-direct {v0}, Lcom/apk/ks$if;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/apk/fl;->do:Lcom/apk/ks;

    return-void
.end method

.method public static try(Lcom/apk/gl;)Lcom/apk/fl;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apk/gl<",
            "TZ;>;)",
            "Lcom/apk/fl<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/fl;->try:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/fl;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {v0, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/apk/fl;->new:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/apk/fl;->for:Z

    .line 5
    iput-object p0, v0, Lcom/apk/fl;->if:Lcom/apk/gl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized case()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/fl;->do:Lcom/apk/ks;

    invoke-virtual {v0}, Lcom/apk/ks;->do()V

    .line 2
    iget-boolean v0, p0, Lcom/apk/fl;->for:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/apk/fl;->for:Z

    .line 4
    iget-boolean v0, p0, Lcom/apk/fl;->new:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/apk/fl;->do()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized do()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/fl;->do:Lcom/apk/ks;

    invoke-virtual {v0}, Lcom/apk/ks;->do()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/fl;->new:Z

    .line 3
    iget-boolean v0, p0, Lcom/apk/fl;->for:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/fl;->if:Lcom/apk/gl;

    invoke-interface {v0}, Lcom/apk/gl;->do()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/fl;->if:Lcom/apk/gl;

    .line 6
    sget-object v0, Lcom/apk/fl;->try:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/fl;->if:Lcom/apk/gl;

    invoke-interface {v0}, Lcom/apk/gl;->for()I

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fl;->if:Lcom/apk/gl;

    invoke-interface {v0}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public if()Lcom/apk/ks;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fl;->do:Lcom/apk/ks;

    return-object v0
.end method

.method public new()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fl;->if:Lcom/apk/gl;

    invoke-interface {v0}, Lcom/apk/gl;->new()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
