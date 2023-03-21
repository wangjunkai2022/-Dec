.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h;
.super Ljava/lang/Object;
.source "Npth.java"


# static fields
.field public static a:Z


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;ZZ)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, v1, p3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;ZZZ)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h;

    monitor-enter v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p4

    .line 2
    :try_start_0
    invoke-static/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;ZZZZ)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class p4, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h;

    monitor-enter p4

    .line 3
    :try_start_0
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p4

    return-void

    :cond_0
    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    .line 4
    :try_start_1
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    :cond_1
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/a;->f(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p4

    return-void

    .line 7
    :cond_2
    :try_start_2
    invoke-static {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;)V

    .line 8
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/e;->a(Landroid/content/Context;)V

    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    .line 9
    :cond_3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/a;->a()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/a;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 10
    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/c;

    invoke-direct {p2, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/a;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/b;)V

    :cond_4
    const/4 p1, 0x1

    .line 11
    sput-boolean p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h;->a:Z

    .line 12
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/h;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h$a;

    invoke-direct {p2, p0, p5}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p4

    return-void

    .line 13
    :cond_5
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params must be not null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context must be not null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit p4

    throw p0
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/g;)V
    .locals 1

    .line 15
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->d()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/g;)V

    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->d()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
