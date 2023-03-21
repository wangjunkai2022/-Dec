.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;
.super Ljava/lang/Object;
.source "NpthDataManager.java"


# static fields
.field public static volatile c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;


# instance fields
.field public a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;

.field public b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;
    .locals 2

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;

    invoke-direct {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;-><init>()V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;

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
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 7
    :try_start_0
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/b;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/j;->b(Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;

    invoke-direct {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;-><init>()V

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;

    return-void
.end method

.method public declared-synchronized a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;)V
    .locals 2

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;

    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
