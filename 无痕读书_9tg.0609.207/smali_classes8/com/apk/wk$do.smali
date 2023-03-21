.class public Lcom/apk/wk$do;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/wk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final do:Lcom/apk/er;

.field public final synthetic if:Lcom/apk/wk;


# direct methods
.method public constructor <init>(Lcom/apk/wk;Lcom/apk/er;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/wk$do;->if:Lcom/apk/wk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/wk$do;->do:Lcom/apk/er;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/wk$do;->do:Lcom/apk/er;

    check-cast v0, Lcom/apk/fr;

    .line 2
    iget-object v1, v0, Lcom/apk/fr;->if:Lcom/apk/ks;

    invoke-virtual {v1}, Lcom/apk/ks;->do()V

    .line 3
    iget-object v0, v0, Lcom/apk/fr;->for:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/apk/wk$do;->if:Lcom/apk/wk;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/apk/wk$do;->if:Lcom/apk/wk;

    iget-object v2, v2, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    iget-object v3, p0, Lcom/apk/wk$do;->do:Lcom/apk/er;

    .line 7
    iget-object v2, v2, Lcom/apk/wk$try;->do:Ljava/util/List;

    .line 8
    new-instance v4, Lcom/apk/wk$new;

    .line 9
    sget-object v5, Lcom/apk/as;->if:Ljava/util/concurrent/Executor;

    .line 10
    invoke-direct {v4, v3, v5}, Lcom/apk/wk$new;-><init>(Lcom/apk/er;Ljava/util/concurrent/Executor;)V

    .line 11
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/apk/wk$do;->if:Lcom/apk/wk;

    iget-object v3, p0, Lcom/apk/wk$do;->do:Lcom/apk/er;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 13
    :try_start_2
    iget-object v2, v2, Lcom/apk/wk;->public:Lcom/apk/bl;

    check-cast v3, Lcom/apk/fr;

    const/4 v4, 0x5

    .line 14
    invoke-virtual {v3, v2, v4}, Lcom/apk/fr;->const(Lcom/apk/bl;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 15
    :try_start_3
    new-instance v3, Lcom/apk/mk;

    invoke-direct {v3, v2}, Lcom/apk/mk;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    const/4 v2, 0x0

    .line 16
    throw v2

    .line 17
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/apk/wk$do;->if:Lcom/apk/wk;

    invoke-virtual {v2}, Lcom/apk/wk;->new()V

    .line 18
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    .line 20
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    :catchall_2
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
