.class public Lcom/apk/ry;
.super Ljava/lang/Object;
.source "OkDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ry$if;
    }
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public final for:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/apk/ty;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/zy;


# direct methods
.method public constructor <init>(Lcom/apk/ry$do;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    sget-object v0, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 4
    invoke-virtual {v0}, Lcom/apk/tw;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Download"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ry;->do:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/apk/mu;->super(Ljava/lang/String;)Z

    .line 6
    new-instance p1, Lcom/apk/zy;

    invoke-direct {p1}, Lcom/apk/zy;-><init>()V

    iput-object p1, p0, Lcom/apk/ry;->if:Lcom/apk/zy;

    .line 7
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/apk/ry;->for:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    sget-object v2, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    const-string p1, "5"

    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v4, "status not in(?)"

    const-string v8, "date ASC"

    invoke-virtual/range {v2 .. v9}, Lcom/apk/tx;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/hy;

    .line 11
    iget v3, v2, Lcom/apk/hy;->break:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :cond_1
    const/4 v3, 0x0

    .line 12
    iput v3, v2, Lcom/apk/hy;->break:I

    goto :goto_0

    .line 13
    :cond_2
    sget-object v0, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    if-eqz v0, :cond_4

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    iget-object v2, v0, Lcom/apk/tx;->do:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 16
    :try_start_0
    iget-object v2, v0, Lcom/apk/tx;->for:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 18
    iget-object v3, v0, Lcom/apk/tx;->for:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/apk/tx;->for()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Lcom/apk/tx;->if(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 19
    :cond_3
    iget-object p1, v0, Lcom/apk/tx;->for:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_2
    iget-object p1, v0, Lcom/apk/tx;->for:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 22
    iget-object p1, v0, Lcom/apk/tx;->do:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    .line 24
    :goto_3
    iget-object v1, v0, Lcom/apk/tx;->for:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 25
    iget-object v0, v0, Lcom/apk/tx;->do:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    throw p1

    .line 28
    :cond_4
    throw v1
.end method

.method public static for(Ljava/lang/String;Lcom/apk/qy;)Lcom/apk/ty;
    .locals 2
    .param p1    # Lcom/apk/qy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apk/qy<",
            "Ljava/io/File;",
            "+",
            "Lcom/apk/qy;",
            ">;)",
            "Lcom/apk/ty;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p1, Lcom/apk/qy;->if:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 4
    iget-object v0, v0, Lcom/apk/ry;->for:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/ty;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/apk/ty;

    invoke-direct {v1, p0, p1}, Lcom/apk/ty;-><init>(Ljava/lang/String;Lcom/apk/qy;)V

    .line 7
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static new(Lcom/apk/hy;)Lcom/apk/ty;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 2
    iget-object v0, v0, Lcom/apk/ry;->for:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v1, p0, Lcom/apk/hy;->do:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/ty;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/ty;

    invoke-direct {v1, p0}, Lcom/apk/ty;-><init>(Lcom/apk/hy;)V

    .line 5
    iget-object p0, p0, Lcom/apk/hy;->do:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public do(Ljava/lang/String;)Lcom/apk/ty;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ry;->for:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/ty;

    return-object p1
.end method

.method public if(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ry;->for:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
