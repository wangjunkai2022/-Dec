.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/database/sqlite/SQLiteDatabase;

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private b()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/j;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_mediation_open_sdk.db"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/j;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 6
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->c()Z

    :goto_0
    return-void
.end method

.method private c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 18
    :try_start_0
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->b()V

    .line 19
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    .line 21
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->c()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    :goto_0
    return p1

    .line 22
    :cond_0
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    .line 13
    :try_start_0
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->b()V

    .line 14
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p2, -0x1

    .line 16
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move-wide p1, p2

    :goto_0
    return-wide p1

    .line 17
    :cond_0
    throw p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    move-object v1, p0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->b()V

    .line 8
    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$b;

    iget-object v3, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$a;)V

    .line 11
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->c()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    .line 12
    :cond_0
    throw v0
.end method

.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->b()V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->b()V

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 6
    :cond_0
    throw p1
.end method
