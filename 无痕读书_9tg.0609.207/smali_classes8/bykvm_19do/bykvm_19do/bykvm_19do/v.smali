.class public Lbykvm_19do/bykvm_19do/bykvm_19do/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_19do/v$a;
    }
.end annotation


# static fields
.field public static d:I

.field public static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

.field public final b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

.field public final c:Lbykvm_19do/bykvm_19do/bykvm_19do/v$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->o:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;-><init>()V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    .line 4
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/w;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/w;-><init>()V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    .line 5
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/y;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/y;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    .line 6
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/z;-><init>()V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    .line 7
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/d0;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/d0;-><init>()V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    .line 8
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;-><init>()V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    .line 9
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/x;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/x;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    .line 10
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;-><init>()V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lbykvm_19do/bykvm_19do/bykvm_19do/k2;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/v$a;

    const-string v1, "bd_embed_m_log.db"

    const/4 v2, 0x0

    const/16 v3, 0x1d

    invoke-direct {v0, p1, v1, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/v$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/v$a;

    .line 3
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    .line 4
    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    return-void
.end method

.method private a([Lbykvm_19do/bykvm_19do/bykvm_19do/u;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    .line 86
    aput-object v2, p5, v0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 p2, 0xc8

    :cond_1
    :goto_1
    if-lez p2, :cond_2

    .line 87
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 88
    aget-object v1, p1, v0

    invoke-direct {p0, p3, v1, p4, p2}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Landroid/database/sqlite/SQLiteDatabase;Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v1

    aput-object v1, p5, v0

    .line 89
    aget-object v1, p5, v0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int/2addr p2, v1

    if-lez p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method private a(JI)Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE pack SET _fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " WHERE "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "local_time_ms"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, "SELECT * FROM "

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "session_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ORDER BY "

    const-string v1, "local_time_ms"

    const-string v2, " LIMIT "

    invoke-static {v0, p2, p1, v1, v2}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    const-string v0, "DELETE FROM "

    .line 2
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "session_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    const-string v1, "local_time_ms"

    const-string v2, "<="

    invoke-static {v0, p2, p1, v1, v2}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/lang/String;I)Lorg/json/JSONArray;
    .locals 10

    const-string v0, ", "

    .line 90
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 91
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v5, v2

    .line 92
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 93
    invoke-virtual {p2, p4}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a(Landroid/database/Cursor;)Lbykvm_19do/bykvm_19do/bykvm_19do/u;

    .line 94
    sget-boolean v7, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz v7, :cond_1

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryEvnetInner, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :cond_1
    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 97
    iget-wide v7, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_0

    .line 98
    iget-wide v5, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    goto :goto_0

    :cond_2
    cmp-long v7, v5, v2

    if-lez v7, :cond_3

    .line 99
    invoke-direct {p0, p2, p3, v5, v6}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-wide v2, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p4, v4

    .line 100
    :goto_1
    :try_start_2
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p4, :cond_4

    move-wide v5, v2

    .line 101
    :cond_3
    :goto_2
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    move-wide v2, v5

    .line 102
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryEvent, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_2
    move-exception p1

    if-eqz p4, :cond_5

    .line 103
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_5
    throw p1
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_19do/z;Lbykvm_19do/bykvm_19do/bykvm_19do/d0;Lbykvm_19do/bykvm_19do/bykvm_19do/b0;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;
    .locals 11

    const-string v0, ", "

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 105
    iget-object v3, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 106
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    const-string v8, "SELECT * FROM page WHERE session_id=? LIMIT 500"

    .line 107
    invoke-virtual {p4, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 109
    invoke-virtual {p3, v8}, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->a(Landroid/database/Cursor;)Lbykvm_19do/bykvm_19do/bykvm_19do/u;

    .line 110
    sget-boolean v4, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz v4, :cond_0

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryPageInner, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_0
    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->j()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 114
    :cond_1
    iget-wide v9, p3, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;->i:J

    add-long/2addr v6, v9

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    const-string p3, "DELETE FROM page WHERE session_id=?"

    .line 115
    invoke-virtual {p4, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p3

    goto :goto_2

    :catchall_1
    move-exception p3

    move-object v8, v5

    .line 116
    :goto_2
    :try_start_2
    invoke-static {p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_4

    .line 117
    :cond_3
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-lez p3, :cond_6

    const-wide/16 p3, 0x3e8

    cmp-long v1, v6, p3

    if-lez v1, :cond_5

    goto :goto_4

    :cond_5
    move-wide v6, p3

    .line 119
    :goto_4
    iput-wide v6, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/d0;->i:J

    .line 120
    iget-object v1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    iput-object v1, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    .line 121
    iget-wide v1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    iput-wide v1, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    .line 122
    iget-wide v1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    add-long/2addr v1, v6

    div-long/2addr v1, p3

    iput-wide v1, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/d0;->j:J

    .line 123
    iget-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-static {p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)J

    move-result-wide p3

    iput-wide p3, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b:J

    .line 124
    iget-object p3, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->e:Ljava/lang/String;

    iput-object p3, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->e:Ljava/lang/String;

    .line 125
    iget-object p1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f:Ljava/lang/String;

    iput-object p1, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f:Ljava/lang/String;

    .line 126
    :cond_6
    sget-boolean p1, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz p1, :cond_7

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryPage, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-object v3

    :catchall_2
    move-exception p1

    if-eqz v8, :cond_8

    .line 128
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_8
    throw p1
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_19do/a0;Ljava/util/HashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/a0;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V
    .locals 2

    .line 4
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_19do/z;Z)Z
    .locals 0

    .line 35
    iget-boolean p1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/z;->l:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/a0;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;

    const/4 v2, 0x0

    .line 132
    :try_start_0
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/v$a;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM pack ORDER BY local_time_ms DESC,_full DESC LIMIT 2"

    .line 133
    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->g()Lbykvm_19do/bykvm_19do/bykvm_19do/u;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;

    .line 136
    invoke-virtual {v1, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->a(Landroid/database/Cursor;)Lbykvm_19do/bykvm_19do/bykvm_19do/u;

    .line 137
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v2

    .line 138
    :goto_1
    :try_start_2
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v1, "queryPack, "

    .line 140
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_2

    .line 141
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_2
    throw v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/u;",
            ">;)V"
        }
    .end annotation

    const-string v0, "save, "

    .line 180
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/v$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 183
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbykvm_19do/bykvm_19do/bykvm_19do/u;

    .line 184
    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 187
    :goto_1
    :try_start_3
    sget v2, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->d:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr v2, p1

    sput v2, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->d:I

    .line 188
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_1

    .line 189
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 190
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_2

    .line 191
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    .line 192
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 193
    :cond_2
    :goto_3
    throw p1
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/a0;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/a0;",
            ">;)V"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResult, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 146
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 147
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 148
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v8, 0x0

    .line 150
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 151
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;

    iget v9, v9, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->j:I

    if-nez v9, :cond_0

    .line 152
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;

    invoke-direct {p0, v9, v0, v6}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/a0;Ljava/util/HashMap;Z)V

    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;

    invoke-direct {p0, v9, v4, v7}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/a0;Ljava/util/HashMap;Z)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 155
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;

    .line 157
    iget v8, v4, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->j:I

    if-nez v8, :cond_3

    .line 158
    iget v8, v4, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->k:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    if-nez v8, :cond_2

    .line 159
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 160
    iget v9, v4, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->k:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_2
    invoke-direct {p0, v4, v8, v7}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/a0;Ljava/util/HashMap;Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    const-wide/16 v10, 0x5

    cmp-long v12, v8, v10

    if-lez v12, :cond_4

    .line 162
    invoke-direct {p0, v4, v3, v7}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/a0;Ljava/util/HashMap;Z)V

    .line 163
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 165
    :cond_4
    invoke-direct {p0, v4, v5, v7}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/a0;Ljava/util/HashMap;Z)V

    goto :goto_2

    .line 166
    :cond_5
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/v$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "DELETE FROM pack WHERE local_time_ms=?"

    :try_start_1
    new-array v3, v6, [Ljava/lang/String;

    .line 169
    iget-wide v4, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 170
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;

    .line 171
    iget-wide v2, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    iget v0, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->j:I

    add-int/2addr v0, v6

    iput v0, p2, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->j:I

    invoke-direct {p0, v2, v3, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_4

    .line 172
    :cond_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 174
    :try_start_3
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_8

    .line 175
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 176
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    return-void

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_9

    .line 177
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception p2

    .line 178
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 179
    :cond_9
    :goto_6
    throw p1
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 48

    move-object/from16 v7, p0

    .line 36
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v1, "launch"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z;

    .line 37
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v2, "terminate"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lbykvm_19do/bykvm_19do/bykvm_19do/d0;

    .line 38
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lbykvm_19do/bykvm_19do/bykvm_19do/b0;

    .line 39
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v2, "eventv3"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lbykvm_19do/bykvm_19do/bykvm_19do/y;

    .line 40
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lbykvm_19do/bykvm_19do/bykvm_19do/w;

    .line 41
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v2, "event_misc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lbykvm_19do/bykvm_19do/bykvm_19do/x;

    .line 42
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v13, "pack"

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;

    .line 43
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v11, 0x0

    const/16 v31, 0x0

    .line 44
    :try_start_0
    iget-object v2, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/v$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 45
    :try_start_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "SELECT * FROM launch ORDER BY local_time_ms DESC LIMIT 5"

    .line 46
    invoke-virtual {v9, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const-wide/high16 v32, -0x8000000000000000L

    const-wide v34, 0x7fffffffffffffffL

    move-object v8, v1

    move-wide/from16 v4, v32

    move-wide/from16 v2, v34

    move-object/from16 v1, p1

    .line 47
    :goto_0
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    move-object/from16 v16, v13

    if-eqz v6, :cond_b

    .line 48
    invoke-virtual {v0, v10}, Lbykvm_19do/bykvm_19do/bykvm_19do/z;->a(Landroid/database/Cursor;)Lbykvm_19do/bykvm_19do/bykvm_19do/u;

    .line 49
    iget-object v6, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->j()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v13, v16

    const/4 v11, 0x0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v6, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z;->j:Ljava/lang/String;

    iget-object v11, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    invoke-virtual {v11}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v6, :cond_2

    :try_start_3
    iget v6, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z;->i:I

    iget-object v11, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    .line 51
    invoke-virtual {v11}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c()I

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v6, v11, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v36, v1

    :goto_1
    move-object/from16 v21, v14

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v9

    move-object v11, v10

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move-object v8, v9

    move-object v11, v10

    goto/16 :goto_11

    .line 52
    :cond_2
    :goto_2
    :try_start_4
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 53
    invoke-static {v6, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/m0;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const-string v1, "app_version"

    .line 54
    :try_start_5
    iget-object v11, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z;->j:Ljava/lang/String;

    invoke-virtual {v6, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const-string v1, "version_code"

    .line 55
    :try_start_6
    iget v11, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z;->i:I

    invoke-virtual {v6, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v36, v6

    goto :goto_1

    .line 56
    :goto_3
    iget-wide v13, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    cmp-long v1, v13, v2

    if-gez v1, :cond_3

    .line 57
    :try_start_7
    iget-wide v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide/from16 v37, v1

    goto :goto_4

    :cond_3
    move-wide/from16 v37, v2

    .line 58
    :goto_4
    :try_start_8
    iget-wide v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    cmp-long v3, v1, v4

    if-lez v3, :cond_4

    .line 59
    :try_start_9
    iget-wide v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-wide/from16 v39, v1

    goto :goto_5

    :cond_4
    move-wide/from16 v39, v4

    :goto_5
    move-object/from16 v14, v21

    .line 60
    :try_start_a
    invoke-direct {v7, v0, v15, v14, v9}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/z;Lbykvm_19do/bykvm_19do/bykvm_19do/d0;Lbykvm_19do/bykvm_19do/bykvm_19do/b0;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v21

    const/4 v13, 0x3

    new-array v11, v13, [Lbykvm_19do/bykvm_19do/bykvm_19do/u;

    aput-object v19, v11, v31

    const/4 v1, 0x1

    aput-object v18, v11, v1

    const/4 v1, 0x2

    aput-object v20, v11, v1

    new-array v6, v13, [Lorg/json/JSONArray;

    const/4 v3, 0x0

    .line 61
    iget-object v5, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v4, v9

    move-object/from16 v41, v6

    invoke-direct/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a([Lbykvm_19do/bykvm_19do/bykvm_19do/u;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v1

    .line 62
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-lez v2, :cond_5

    .line 63
    :try_start_b
    iget-wide v2, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    const/4 v4, 0x0

    aget-object v5, v41, v31

    const/4 v6, 0x1

    aget-object v22, v41, v6

    const/16 v23, 0x2

    aget-object v24, v41, v23
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v6, v8

    move-object v8, v12

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    move-wide v9, v2

    move-object/from16 v44, v11

    const/4 v3, 0x0

    move-object/from16 v11, v36

    move-object v2, v12

    move-object v12, v4

    move-object/from16 v45, v16

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object v13, v15

    move-object/from16 v46, v14

    move-object/from16 v14, v21

    move-object/from16 v47, v15

    move-object v15, v5

    move-object/from16 v16, v22

    move-object/from16 v17, v24

    :try_start_c
    invoke-virtual/range {v8 .. v17}, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->a(JLorg/json/JSONObject;Lbykvm_19do/bykvm_19do/bykvm_19do/z;Lbykvm_19do/bykvm_19do/bykvm_19do/d0;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    :goto_6
    move-object v1, v0

    move-object/from16 v8, v42

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    goto/16 :goto_c

    :cond_5
    move-object v6, v8

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    move-object/from16 v44, v11

    move-object v2, v12

    move-object/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v45, v16

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 64
    :try_start_d
    iput-boolean v4, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z;->k:Z

    .line 65
    iget-wide v9, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v15, v41, v31

    aget-object v16, v41, v4

    aget-object v17, v41, v3

    move-object v8, v2

    move-object/from16 v11, v36

    move-object v12, v0

    invoke-virtual/range {v8 .. v17}, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->a(JLorg/json/JSONObject;Lbykvm_19do/bykvm_19do/bykvm_19do/z;Lbykvm_19do/bykvm_19do/bykvm_19do/d0;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 66
    :goto_7
    sget-boolean v5, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v5, :cond_7

    .line 67
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packer launch, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-gtz v8, :cond_6

    const/4 v13, 0x1

    goto :goto_8

    :cond_6
    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", sid:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 68
    :cond_7
    :try_start_f
    invoke-virtual {v2, v6}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object/from16 v8, v42

    move-object/from16 v9, v45

    const/4 v6, 0x0

    :try_start_10
    invoke-virtual {v8, v9, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object v10, v5

    :goto_9
    move v5, v1

    :goto_a
    const/4 v11, 0x3

    if-ge v5, v11, :cond_a

    .line 69
    iget-object v12, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v13, v2

    move-object/from16 v2, v44

    move-object v15, v6

    const/4 v14, 0x2

    move v3, v5

    const/16 v16, 0x1

    move-object v4, v8

    move-object v5, v12

    move-object/from16 v6, v41

    invoke-direct/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a([Lbykvm_19do/bykvm_19do/bykvm_19do/u;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v5

    .line 70
    aget-object v1, v41, v31

    if-nez v1, :cond_9

    aget-object v1, v41, v16

    if-nez v1, :cond_9

    aget-object v1, v41, v14

    if-eqz v1, :cond_8

    goto :goto_b

    :cond_8
    move-object v2, v13

    move-object v6, v15

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto :goto_a

    .line 71
    :cond_9
    :goto_b
    iget-wide v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v28, v41, v31

    aget-object v29, v41, v16

    aget-object v30, v41, v14

    move-object/from16 v21, v13

    move-wide/from16 v22, v1

    move-object/from16 v24, v36

    invoke-virtual/range {v21 .. v30}, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->a(JLorg/json/JSONObject;Lbykvm_19do/bykvm_19do/bykvm_19do/z;Lbykvm_19do/bykvm_19do/bykvm_19do/d0;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 72
    invoke-virtual {v13, v10}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {v8, v9, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move v1, v5

    move-object v2, v13

    move-object v6, v15

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto :goto_9

    :cond_a
    move-object v12, v2

    move-object v11, v6

    move-object v13, v9

    move-object/from16 v1, v36

    move-wide/from16 v2, v37

    move-wide/from16 v4, v39

    move-object/from16 v14, v46

    move-object/from16 v15, v47

    move-object v9, v8

    move-object v8, v10

    move-object/from16 v10, v43

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v8, v42

    goto :goto_e

    :catch_2
    move-exception v0

    :goto_c
    move-object/from16 v8, v42

    goto :goto_10

    :cond_b
    move-object v8, v9

    move-object/from16 v43, v10

    const/4 v14, 0x2

    const/16 v16, 0x1

    cmp-long v0, v2, v34

    if-eqz v0, :cond_c

    cmp-long v0, v4, v32

    if-eqz v0, :cond_c

    const-string v0, "DELETE FROM launch WHERE local_time_ms>=? AND local_time_ms<=?"

    :try_start_11
    new-array v1, v14, [Ljava/lang/String;

    .line 73
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v31

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_c
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 75
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    .line 76
    :try_start_12
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 77
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    :goto_d
    return v16

    :catchall_4
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object v8, v9

    move-object/from16 v43, v10

    :goto_e
    move-object v1, v0

    :goto_f
    move-object/from16 v11, v43

    goto :goto_14

    :catch_5
    move-exception v0

    move-object v8, v9

    move-object/from16 v43, v10

    :goto_10
    move-object/from16 v11, v43

    goto :goto_11

    :catchall_6
    move-exception v0

    move-object v8, v9

    move-object v15, v11

    goto :goto_13

    :catch_6
    move-exception v0

    move-object v8, v9

    move-object v15, v11

    goto :goto_11

    :catchall_7
    move-exception v0

    move-object v15, v11

    move-object v1, v0

    move-object v8, v15

    move-object v11, v8

    goto :goto_14

    :catch_7
    move-exception v0

    move-object v15, v11

    move-object v8, v15

    move-object v11, v8

    .line 78
    :goto_11
    :try_start_13
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v11, :cond_d

    .line 79
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v8, :cond_e

    .line 80
    :try_start_14
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 81
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    :cond_e
    :goto_12
    return v31

    :catchall_8
    move-exception v0

    :goto_13
    move-object v1, v0

    :goto_14
    if-eqz v11, :cond_f

    .line 82
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v8, :cond_10

    .line 83
    :try_start_15
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    goto :goto_15

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 84
    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 85
    :cond_10
    :goto_15
    throw v1
.end method

.method public a(Lorg/json/JSONObject;Lbykvm_19do/bykvm_19do/bykvm_19do/z;Z)Z
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 v8, p3

    .line 5
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v2, "eventv3"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_19do/y;

    .line 6
    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_19do/w;

    .line 7
    sget-object v3, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v4, "event_misc"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbykvm_19do/bykvm_19do/bykvm_19do/x;

    .line 8
    sget-object v4, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->e:Ljava/util/HashMap;

    const-string v9, "pack"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;

    .line 9
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const/4 v13, 0x0

    const/16 v20, 0x0

    .line 10
    :try_start_0
    iget-object v4, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/v$a;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 11
    :try_start_1
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v12, 0x3

    new-array v10, v12, [Lbykvm_19do/bykvm_19do/bykvm_19do/u;

    aput-object v2, v10, v20

    const/4 v6, 0x1

    aput-object v1, v10, v6

    const/16 v21, 0x2

    aput-object v3, v10, v21

    new-array v5, v12, [Lorg/json/JSONArray;

    const/4 v3, 0x0

    .line 12
    iget-object v4, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v16, v4

    move-object v4, v11

    move-object/from16 v22, v5

    move-object/from16 v5, v16

    move-object/from16 v23, v9

    const/4 v9, 0x1

    move-object/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a([Lbykvm_19do/bykvm_19do/bykvm_19do/u;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v1

    .line 13
    aget-object v2, v22, v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v2, :cond_0

    :try_start_2
    aget-object v2, v22, v20

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v11

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v13, v11

    goto/16 :goto_c

    :cond_0
    :goto_0
    :try_start_3
    aget-object v2, v22, v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-eqz v2, :cond_1

    :try_start_4
    aget-object v2, v22, v9

    .line 14
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gtz v2, :cond_3

    :cond_1
    :try_start_5
    aget-object v2, v22, v21
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v2, :cond_2

    :try_start_6
    aget-object v2, v22, v21

    .line 15
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-gtz v2, :cond_3

    .line 16
    :cond_2
    :try_start_7
    invoke-direct {v7, v0, v8}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/z;Z)Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v2, :cond_6

    .line 17
    :cond_3
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v7, v0, v8}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/z;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    goto :goto_1

    :cond_4
    move-object v4, v13

    :goto_1
    const/4 v5, 0x0

    const/16 v16, 0x0

    aget-object v17, v22, v20

    aget-object v18, v22, v9

    aget-object v19, v22, v21
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v24, v10

    move-object v10, v15

    move-object v6, v11

    move-wide v11, v2

    move-object v3, v13

    move-object/from16 v13, p1

    move-object v2, v14

    move-object v14, v4

    move-object v4, v15

    move-object v15, v5

    :try_start_9
    invoke-virtual/range {v10 .. v19}, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->a(JLorg/json/JSONObject;Lbykvm_19do/bykvm_19do/bykvm_19do/z;Lbykvm_19do/bykvm_19do/bykvm_19do/d0;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 18
    invoke-virtual {v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v14

    move-object/from16 v15, v23

    invoke-virtual {v6, v15, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 19
    sget-boolean v2, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz v2, :cond_5

    invoke-direct {v7, v0, v8}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/z;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send launch, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", hadUI:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :cond_5
    iput-boolean v9, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z;->l:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v5, v1

    move-object v8, v14

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v11

    :goto_2
    move-object v1, v0

    move-object v13, v6

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-object v6, v11

    :goto_3
    move-object v13, v6

    goto/16 :goto_c

    :cond_6
    move-object/from16 v24, v10

    move-object v6, v11

    move-object v3, v13

    move-object v2, v14

    move-object v4, v15

    move-object/from16 v15, v23

    move v5, v1

    move-object v8, v2

    :goto_4
    const/4 v14, 0x3

    if-ge v5, v14, :cond_a

    .line 22
    :try_start_a
    iget-object v10, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v13, v3

    move v3, v5

    move-object v11, v4

    move-object v4, v6

    move-object v5, v10

    move-object v12, v6

    move-object/from16 v6, v22

    :try_start_b
    invoke-direct/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a([Lbykvm_19do/bykvm_19do/bykvm_19do/u;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v5

    .line 23
    aget-object v1, v22, v20
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v1, :cond_7

    :try_start_c
    aget-object v1, v22, v20

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-gtz v1, :cond_8

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v13, v12

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object v13, v12

    goto/16 :goto_c

    :cond_7
    :goto_5
    :try_start_d
    aget-object v1, v22, v9

    if-eqz v1, :cond_9

    aget-object v1, v22, v9

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 24
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    aget-object v17, v22, v20

    aget-object v18, v22, v9

    aget-object v19, v22, v21
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object v10, v11

    move-object v6, v11

    move-object v9, v12

    move-wide v11, v1

    move-object v1, v13

    move-object/from16 v13, p1

    const/4 v2, 0x3

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    :try_start_e
    invoke-virtual/range {v10 .. v19}, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->a(JLorg/json/JSONObject;Lbykvm_19do/bykvm_19do/bykvm_19do/z;Lbykvm_19do/bykvm_19do/bykvm_19do/d0;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 25
    invoke-virtual {v6, v8}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v9, v3, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_6

    :cond_9
    move-object v6, v11

    move-object v9, v12

    move-object v1, v13

    move-object v3, v15

    const/4 v2, 0x3

    :goto_6
    move-object v15, v3

    move-object v4, v6

    move-object v6, v9

    const/4 v9, 0x1

    move-object v3, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v9, v12

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v9, v12

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v9, v6

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v9, v6

    goto :goto_a

    :cond_a
    move-object v9, v6

    .line 26
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 27
    :try_start_f
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    :goto_7
    const/4 v1, 0x1

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 28
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_8
    return v1

    :catchall_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v9, v11

    :goto_9
    move-object v1, v0

    move-object v13, v9

    goto :goto_e

    :catch_8
    move-exception v0

    move-object v9, v11

    :goto_a
    move-object v13, v9

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object v1, v13

    :goto_b
    move-object v1, v0

    goto :goto_e

    :catch_9
    move-exception v0

    move-object v1, v13

    .line 29
    :goto_c
    :try_start_10
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    if-eqz v13, :cond_b

    .line 30
    :try_start_11
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 31
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    :cond_b
    :goto_d
    return v20

    :catchall_9
    move-exception v0

    goto :goto_b

    :goto_e
    if-eqz v13, :cond_c

    .line 32
    :try_start_12
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 33
    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 34
    :cond_c
    :goto_f
    throw v1
.end method
