.class public Lorg/litepal/tablemanager/Connector;
.super Ljava/lang/Object;
.source "Connector.java"


# static fields
.field public static mLitePalHelper:Lorg/litepal/tablemanager/LitePalOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildConnection()Lorg/litepal/tablemanager/LitePalOpenHelper;
    .locals 6

    .line 1
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->checkSelfValid()V

    .line 3
    sget-object v1, Lorg/litepal/tablemanager/Connector;->mLitePalHelper:Lorg/litepal/tablemanager/LitePalOpenHelper;

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getDbName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getStorage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "external"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/databases/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getStorage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "internal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getStorage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getStorage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "//"

    .line 9
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 12
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 13
    :cond_1
    invoke-static {v2, v3, v1}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_2
    :goto_0
    new-instance v2, Lorg/litepal/tablemanager/LitePalOpenHelper;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getVersion()I

    move-result v0

    invoke-direct {v2, v1, v0}, Lorg/litepal/tablemanager/LitePalOpenHelper;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/litepal/tablemanager/Connector;->mLitePalHelper:Lorg/litepal/tablemanager/LitePalOpenHelper;

    .line 15
    :cond_3
    sget-object v0, Lorg/litepal/tablemanager/Connector;->mLitePalHelper:Lorg/litepal/tablemanager/LitePalOpenHelper;

    return-object v0
.end method

.method public static clearLitePalOpenHelperInstance()V
    .locals 1

    .line 1
    sget-object v0, Lorg/litepal/tablemanager/Connector;->mLitePalHelper:Lorg/litepal/tablemanager/LitePalOpenHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lorg/litepal/tablemanager/Connector;->mLitePalHelper:Lorg/litepal/tablemanager/LitePalOpenHelper;

    :cond_0
    return-void
.end method

.method public static getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    const-class v0, Lorg/litepal/tablemanager/Connector;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->buildConnection()Lorg/litepal/tablemanager/LitePalOpenHelper;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
