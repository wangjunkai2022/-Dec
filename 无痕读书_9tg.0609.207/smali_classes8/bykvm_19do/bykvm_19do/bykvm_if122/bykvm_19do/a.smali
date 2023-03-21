.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;
.super Ljava/lang/Object;
.source "InternalContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a$b;
    }
.end annotation


# static fields
.field public static volatile a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static volatile b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

.field public static volatile c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "V1"

    :try_start_1
    new-instance v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;

    invoke-direct {v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->e()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    move-result-object v5

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    move-result-object v6

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;

    .line 7
    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;-><init>(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;)V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;
    .locals 1

    .line 10
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;
    .locals 1

    .line 9
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a$b;->a()Landroid/app/Application;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a$b;->a()Landroid/app/Application;

    move-result-object v1

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;

    .line 5
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    nop

    :cond_0
    if-eqz p0, :cond_1

    .line 7
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;

    .line 8
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "V3"

    :try_start_1
    new-instance v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;

    invoke-direct {v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->e()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    move-result-object v5

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;

    move-result-object v6

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;

    .line 7
    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;-><init>(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$b;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;)V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    return-object v0
.end method

.method public static d()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->b(Landroid/content/Context;)V

    .line 3
    :cond_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static e()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/b;

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_if122/a;

    return-object v0
.end method

.method public static f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;
    .locals 2

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    invoke-direct {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;-><init>()V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    return-object v0
.end method
