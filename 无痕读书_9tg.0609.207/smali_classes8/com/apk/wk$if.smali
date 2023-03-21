.class public Lcom/apk/wk$if;
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
    name = "if"
.end annotation


# instance fields
.field public final do:Lcom/apk/er;

.field public final synthetic if:Lcom/apk/wk;


# direct methods
.method public constructor <init>(Lcom/apk/wk;Lcom/apk/er;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/wk$if;->if:Lcom/apk/wk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/wk$if;->do:Lcom/apk/er;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/wk$if;->do:Lcom/apk/er;

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
    iget-object v1, p0, Lcom/apk/wk$if;->if:Lcom/apk/wk;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/apk/wk$if;->if:Lcom/apk/wk;

    iget-object v2, v2, Lcom/apk/wk;->do:Lcom/apk/wk$try;

    iget-object v3, p0, Lcom/apk/wk$if;->do:Lcom/apk/er;

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
    iget-object v2, p0, Lcom/apk/wk$if;->if:Lcom/apk/wk;

    iget-object v2, v2, Lcom/apk/wk;->static:Lcom/apk/al;

    invoke-virtual {v2}, Lcom/apk/al;->if()V

    .line 13
    iget-object v2, p0, Lcom/apk/wk$if;->if:Lcom/apk/wk;

    iget-object v3, p0, Lcom/apk/wk$if;->do:Lcom/apk/er;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 14
    :try_start_2
    iget-object v4, v2, Lcom/apk/wk;->static:Lcom/apk/al;

    iget-object v2, v2, Lcom/apk/wk;->import:Lcom/apk/dj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    check-cast v3, Lcom/apk/fr;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3, v4, v2}, Lcom/apk/fr;->final(Lcom/apk/gl;Lcom/apk/dj;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :try_start_5
    iget-object v2, p0, Lcom/apk/wk$if;->if:Lcom/apk/wk;

    iget-object v3, p0, Lcom/apk/wk$if;->do:Lcom/apk/er;

    invoke-virtual {v2, v3}, Lcom/apk/wk;->goto(Lcom/apk/er;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 16
    new-instance v3, Lcom/apk/mk;

    invoke-direct {v3, v2}, Lcom/apk/mk;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    const/4 v2, 0x0

    .line 17
    throw v2

    .line 18
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/apk/wk$if;->if:Lcom/apk/wk;

    invoke-virtual {v2}, Lcom/apk/wk;->new()V

    .line 19
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 20
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    .line 21
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2

    :catchall_2
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method
