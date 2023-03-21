.class public Lcom/baidu/tts/database/f;
.super Ljava/lang/Object;
.source "TransactionTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/database/f$a;
    }
.end annotation


# instance fields
.field public a:Landroid/database/sqlite/SQLiteDatabase;

.field public b:Lcom/baidu/tts/database/f$a;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/database/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    iput-object p2, p0, Lcom/baidu/tts/database/f;->b:Lcom/baidu/tts/database/f$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/database/f;->b:Lcom/baidu/tts/database/f$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/database/f;->b:Lcom/baidu/tts/database/f$a;

    iget-object v2, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0, v2}, Lcom/baidu/tts/database/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 7
    iget-object v0, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11
    iget-object v1, p0, Lcom/baidu/tts/database/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 12
    :cond_1
    throw v0

    :cond_2
    :goto_2
    return v1
.end method
