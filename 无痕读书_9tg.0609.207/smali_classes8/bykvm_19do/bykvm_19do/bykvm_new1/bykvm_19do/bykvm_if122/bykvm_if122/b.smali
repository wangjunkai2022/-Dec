.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;
.super Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/a;
.source "DuplicateLogDAO.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/a<",
        "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "duplicatelog"

    .line 1
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;)Landroid/content/ContentValues;
    .locals 3

    .line 14
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 15
    iget-object v1, p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-wide v1, p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "insert_time"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 1
    check-cast p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "path"

    const-string v1, "TEXT"

    const-string v2, "insert_time"

    const-string v3, "INTEGER"

    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->public(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ext1"

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ext2"

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;)V
    .locals 2

    const-string v0, "_id"

    if-eqz p2, :cond_1

    .line 7
    iget-object v1, p2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_19do/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    .line 9
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " where "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in (select "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " order by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "insert_time"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " desc limit 1000 offset "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1f4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/j;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/bykvm_if122/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    const-string v5, "path=?"

    :try_start_1
    new-array v6, v1, [Ljava/lang/String;

    aput-object p2, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/j;->b(Ljava/lang/Throwable;)V

    :goto_1
    if-lez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_2
    return v0
.end method
