.class public final Lcom/tencent/bugly/proguard/m;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final a:J

.field public static b:Lcom/tencent/bugly/proguard/m;


# instance fields
.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/bugly/proguard/m;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/bugly/proguard/m;->c:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/m;->e:Ljava/util/Map;

    .line 4
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/m;->d:Ljava/lang/String;

    const-string v0, "crashrecord"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/m;->f:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/m;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/m;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/m;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/m;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/m;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/tencent/bugly/proguard/m;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/m;

    .line 7
    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/m;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/bugly/proguard/m;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/m;I)Ljava/util/List;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/m;->c(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List<",
            "*>;>(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    .line 10
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/m;->c:Landroid/content/Context;

    const-string v3, "crashrecord"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p1, 0x0

    .line 12
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    .line 15
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "open record file error"

    new-array p2, v0, [Ljava/lang/Object;

    .line 16
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    .line 17
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 18
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_2

    .line 19
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 20
    :cond_2
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_2
    :try_start_7
    const-string p1, "writeCrashRecord error"

    new-array p2, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 22
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/m;ILjava/util/List;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/m;->a(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/l;)Z
    .locals 5

    .line 4
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/l;->g:J

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/l;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/tencent/bugly/proguard/m;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/bugly/proguard/m;->e:Ljava/util/Map;

    return-object p0
.end method

.method private declared-synchronized b(I)Z
    .locals 12

    monitor-enter p0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/m;->c(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    monitor-exit p0

    return v0

    .line 6
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide/32 v8, 0x5265c00

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/proguard/l;

    .line 10
    iget-object v10, v7, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, v7, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    iget-object v11, p0, Lcom/tencent/bugly/proguard/m;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v7, Lcom/tencent/bugly/proguard/l;->d:I

    if-lez v10, :cond_2

    .line 11
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-wide v10, v7, Lcom/tencent/bugly/proguard/l;->c:J

    add-long/2addr v10, v8

    cmp-long v8, v10, v2

    if-gez v8, :cond_1

    .line 13
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_5

    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/l;

    iget-wide v4, v4, Lcom/tencent/bugly/proguard/l;->c:J

    add-long/2addr v4, v8

    cmp-long v7, v4, v2

    if-gez v7, :cond_4

    .line 17
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 18
    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/proguard/m;->a(ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit p0

    return v0

    .line 20
    :cond_4
    monitor-exit p0

    return v6

    .line 21
    :cond_5
    :try_start_2
    invoke-interface {v1, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 22
    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/proguard/m;->a(ILjava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_3
    const-string p1, "isFrequentCrash failed"

    new-array v1, v0, [Ljava/lang/Object;

    .line 24
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public static synthetic b(Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/l;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/l;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/tencent/bugly/proguard/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/l;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/tencent/bugly/proguard/l;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget p0, p0, Lcom/tencent/bugly/proguard/l;->d:I

    if-gtz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/tencent/bugly/proguard/m;I)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/m;->b(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/tencent/bugly/proguard/m;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/bugly/proguard/m;->f:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List<",
            "*>;>(I)TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/m;->c:Landroid/content/Context;

    const-string v4, "crashrecord"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_0

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-object p1, v0

    :catch_1
    :try_start_4
    const-string v2, "get object error"

    new-array v3, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_2

    .line 10
    :goto_0
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_2
    move-object p1, v0

    :catch_3
    :try_start_6
    const-string v2, "open record file error"

    new-array v3, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p1, :cond_2

    goto :goto_0

    :catchall_1
    move-exception v2

    :goto_1
    if-eqz p1, :cond_1

    .line 12
    :try_start_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    .line 13
    :cond_1
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_4
    :try_start_8
    const-string p1, "readCrashRecord error"

    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 15
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object p1

    new-instance v0, Lcom/tencent/bugly/proguard/m$1;

    const/16 v1, 0x3ec

    invoke-direct {v0, p0, v1, p2}, Lcom/tencent/bugly/proguard/m$1;-><init>(Lcom/tencent/bugly/proguard/m;II)V

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized a(I)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/m;->f:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 24
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/m$2;

    invoke-direct {v2, p0, p1}, Lcom/tencent/bugly/proguard/m$2;-><init>(Lcom/tencent/bugly/proguard/m;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_1
    const-string p1, "canInit error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw p1
.end method
