.class public Lcom/apk/wx;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field public static final try:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public do:Lcom/apk/yx;

.field public for:Lcom/apk/yx;

.field public if:Lcom/apk/yx;

.field public new:Lcom/apk/yx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/apk/wx;->try:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 2
    invoke-virtual {v1}, Lcom/apk/tw;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "okgo.db"

    const/4 v4, 0x1

    .line 3
    invoke-direct {v0, v1, v3, v2, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 4
    new-instance v1, Lcom/apk/yx;

    const-string v2, "cache"

    invoke-direct {v1, v2}, Lcom/apk/yx;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/apk/wx;->do:Lcom/apk/yx;

    .line 5
    new-instance v1, Lcom/apk/yx;

    const-string v2, "cookie"

    invoke-direct {v1, v2}, Lcom/apk/yx;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/apk/wx;->if:Lcom/apk/yx;

    .line 6
    new-instance v1, Lcom/apk/yx;

    const-string v3, "download"

    invoke-direct {v1, v3}, Lcom/apk/yx;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/apk/wx;->for:Lcom/apk/yx;

    .line 7
    new-instance v1, Lcom/apk/yx;

    const-string v3, "upload"

    invoke-direct {v1, v3}, Lcom/apk/yx;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/apk/wx;->new:Lcom/apk/yx;

    .line 8
    iget-object v1, v0, Lcom/apk/wx;->do:Lcom/apk/yx;

    new-instance v3, Lcom/apk/vx;

    const-string v5, "VARCHAR"

    const-string v6, "key"

    invoke-direct {v3, v6, v5, v4, v4}, Lcom/apk/vx;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 9
    iget-object v6, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v7, "INTEGER"

    const-string v8, "localExpire"

    invoke-static {v6, v3, v8, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v3

    .line 10
    iget-object v6, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v8, "BLOB"

    const-string v9, "head"

    invoke-static {v6, v3, v9, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v3

    .line 11
    iget-object v6, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v9, "data"

    invoke-static {v6, v3, v9, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v3

    .line 12
    iget-object v1, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, v0, Lcom/apk/wx;->if:Lcom/apk/yx;

    new-instance v3, Lcom/apk/vx;

    const-string v6, "host"

    invoke-direct {v3, v6, v5}, Lcom/apk/vx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v9, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v10, "name"

    invoke-static {v9, v3, v10, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v3

    .line 15
    iget-object v9, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v11, "domain"

    invoke-static {v9, v3, v11, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v3

    .line 16
    iget-object v9, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-static {v9, v3, v2, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 17
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v2, Lcom/apk/vx;

    filled-new-array {v6, v10, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/apk/vx;-><init>([Ljava/lang/String;)V

    .line 19
    iget-object v1, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, v0, Lcom/apk/wx;->for:Lcom/apk/yx;

    new-instance v2, Lcom/apk/vx;

    const-string v3, "tag"

    invoke-direct {v2, v3, v5, v4, v4}, Lcom/apk/vx;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 21
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v6, "url"

    invoke-static {v4, v2, v6, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 22
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v9, "folder"

    invoke-static {v4, v2, v9, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 23
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v10, "filePath"

    invoke-static {v4, v2, v10, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 24
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v11, "fileName"

    invoke-static {v4, v2, v11, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 25
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v12, "fraction"

    invoke-static {v4, v2, v12, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 26
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v13, "totalSize"

    invoke-static {v4, v2, v13, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 27
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v14, "currentSize"

    invoke-static {v4, v2, v14, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 28
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    const-string v15, "status"

    invoke-static {v4, v2, v15, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 29
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v16, v15

    const-string v15, "priority"

    invoke-static {v4, v2, v15, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 30
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v17, v15

    const-string v15, "date"

    invoke-static {v4, v2, v15, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 31
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v18, v15

    const-string v15, "request"

    invoke-static {v4, v2, v15, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 32
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v19, v15

    const-string v15, "extra1"

    invoke-static {v4, v2, v15, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 33
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v20, v15

    const-string v15, "extra2"

    invoke-static {v4, v2, v15, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 34
    iget-object v4, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v21, v15

    const-string v15, "extra3"

    invoke-static {v4, v2, v15, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 35
    iget-object v1, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, v0, Lcom/apk/wx;->new:Lcom/apk/yx;

    new-instance v2, Lcom/apk/vx;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v5, v4, v4}, Lcom/apk/vx;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 37
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-static {v3, v2, v6, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 38
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-static {v3, v2, v9, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 39
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-static {v3, v2, v10, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 40
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-static {v3, v2, v11, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 41
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-static {v3, v2, v12, v5}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 42
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-static {v3, v2, v13, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 43
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-static {v3, v2, v14, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 44
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v4, v16

    invoke-static {v3, v2, v4, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 45
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v4, v17

    invoke-static {v3, v2, v4, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 46
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v4, v18

    invoke-static {v3, v2, v4, v7}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 47
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v4, v19

    invoke-static {v3, v2, v4, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 48
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v4, v20

    invoke-static {v3, v2, v4, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 49
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    move-object/from16 v4, v21

    invoke-static {v3, v2, v4, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 50
    iget-object v3, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-static {v3, v2, v15, v8}, Lcom/apk/goto;->if(Ljava/util/List;Lcom/apk/vx;Ljava/lang/String;Ljava/lang/String;)Lcom/apk/vx;

    move-result-object v2

    .line 51
    iget-object v1, v1, Lcom/apk/yx;->if:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/wx;->do:Lcom/apk/yx;

    invoke-virtual {v0}, Lcom/apk/yx;->do()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/wx;->if:Lcom/apk/yx;

    invoke-virtual {v0}, Lcom/apk/yx;->do()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/apk/wx;->for:Lcom/apk/yx;

    invoke-virtual {v0}, Lcom/apk/yx;->do()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/apk/wx;->new:Lcom/apk/yx;

    invoke-virtual {v0}, Lcom/apk/yx;->do()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/apk/wx;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/apk/wx;->do:Lcom/apk/yx;

    invoke-static {p1, p2}, Lcom/apk/mu;->n(Landroid/database/sqlite/SQLiteDatabase;Lcom/apk/yx;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/apk/wx;->if:Lcom/apk/yx;

    invoke-static {p1, p2}, Lcom/apk/mu;->n(Landroid/database/sqlite/SQLiteDatabase;Lcom/apk/yx;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "DROP TABLE IF EXISTS cookie"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/apk/wx;->for:Lcom/apk/yx;

    invoke-static {p1, p2}, Lcom/apk/mu;->n(Landroid/database/sqlite/SQLiteDatabase;Lcom/apk/yx;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DROP TABLE IF EXISTS download"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/apk/wx;->new:Lcom/apk/yx;

    invoke-static {p1, p2}, Lcom/apk/mu;->n(Landroid/database/sqlite/SQLiteDatabase;Lcom/apk/yx;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "DROP TABLE IF EXISTS upload"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Lcom/apk/wx;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
