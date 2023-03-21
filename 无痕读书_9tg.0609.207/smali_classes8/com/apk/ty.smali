.class public Lcom/apk/ty;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public do:Lcom/apk/hy;

.field public final for:Ljava/util/concurrent/ThreadPoolExecutor;

.field public if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/apk/sy;",
            ">;"
        }
    .end annotation
.end field

.field public new:Lcom/apk/cz;


# direct methods
.method public constructor <init>(Lcom/apk/hy;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    .line 19
    sget-object p1, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 20
    iget-object p1, p1, Lcom/apk/ry;->if:Lcom/apk/zy;

    .line 21
    invoke-virtual {p1}, Lcom/apk/zy;->do()Lcom/apk/dz;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ty;->for:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apk/ty;->if:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/apk/qy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apk/qy<",
            "Ljava/io/File;",
            "+",
            "Lcom/apk/qy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/hy;

    invoke-direct {v0}, Lcom/apk/hy;-><init>()V

    iput-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    .line 3
    iput-object p1, v0, Lcom/apk/hy;->do:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 5
    iget-object p1, p1, Lcom/apk/ry;->do:Ljava/lang/String;

    .line 6
    iput-object p1, v0, Lcom/apk/hy;->for:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 7
    iget-object p1, p2, Lcom/apk/qy;->if:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 8
    :goto_0
    iput-object p1, v0, Lcom/apk/hy;->if:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    const/4 v0, 0x0

    iput v0, p1, Lcom/apk/hy;->break:I

    const-wide/16 v1, -0x1

    .line 10
    iput-wide v1, p1, Lcom/apk/hy;->else:J

    .line 11
    iput-object p2, p1, Lcom/apk/hy;->const:Lcom/apk/qy;

    .line 12
    iput-boolean v0, p1, Lcom/apk/hy;->return:Z

    .line 13
    sget-object p1, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 14
    iget-object p1, p1, Lcom/apk/ry;->if:Lcom/apk/zy;

    .line 15
    invoke-virtual {p1}, Lcom/apk/zy;->do()Lcom/apk/dz;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ty;->for:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apk/ty;->if:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final break(Lcom/apk/hy;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget v1, p1, Lcom/apk/hy;->case:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "fraction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 3
    iget-wide v1, p1, Lcom/apk/hy;->else:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "totalSize"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    iget-wide v1, p1, Lcom/apk/hy;->goto:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "currentSize"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    iget v1, p1, Lcom/apk/hy;->break:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    iget v1, p1, Lcom/apk/hy;->catch:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    iget-wide v1, p1, Lcom/apk/hy;->class:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    sget-object v1, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 9
    iget-object p1, p1, Lcom/apk/hy;->do:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/apk/xx;->update(Landroid/content/ContentValues;Ljava/lang/String;)Z

    return-void
.end method

.method public case()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/ty;->if()V

    .line 2
    sget-object v0, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 3
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v1, v1, Lcom/apk/hy;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/xx;->delete(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 5
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v1, v1, Lcom/apk/hy;->do:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Lcom/apk/ry;->for:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/ty;

    .line 7
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    .line 8
    invoke-virtual {p0, v0}, Lcom/apk/ty;->break(Lcom/apk/hy;)V

    .line 9
    new-instance v1, Lcom/apk/yy;

    invoke-direct {v1, p0, v0}, Lcom/apk/yy;-><init>(Lcom/apk/ty;Lcom/apk/hy;)V

    invoke-static {v1}, Lcom/apk/mu;->u(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final do(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/apk/hy;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    move-object/from16 v0, p3

    if-eqz v1, :cond_1

    const/4 v8, 0x2

    .line 1
    iput v8, v0, Lcom/apk/hy;->break:I

    const/16 v9, 0x2000

    new-array v10, v9, [B

    .line 2
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, p1, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v11, v10, v2, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v4, v0, Lcom/apk/hy;->break:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v4, v8, :cond_0

    move-object/from16 v12, p2

    .line 4
    :try_start_1
    invoke-virtual {v12, v10, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v3, v3

    .line 5
    iget-wide v5, v0, Lcom/apk/hy;->else:J

    new-instance v7, Lcom/apk/ty$do;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, p0

    :try_start_2
    invoke-direct {v7, p0}, Lcom/apk/ty$do;-><init>(Lcom/apk/ty;)V

    move-object/from16 v2, p3

    invoke-static/range {v2 .. v7}, Lcom/apk/hy;->do(Lcom/apk/hy;JJLcom/apk/hy$do;)Lcom/apk/hy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v13, p0

    goto :goto_1

    :cond_0
    move-object v13, p0

    move-object/from16 v12, p2

    .line 6
    invoke-static/range {p2 .. p2}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 7
    invoke-static {v11}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 8
    invoke-static {p1}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception v0

    move-object v13, p0

    move-object/from16 v12, p2

    .line 9
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 10
    invoke-static {v11}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 11
    invoke-static {p1}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 12
    throw v0

    :cond_1
    move-object v13, p0

    return-void
.end method

.method public else()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/ty;->if()V

    .line 2
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v0, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/apk/mu;->while(Ljava/io/File;)Z

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    const/4 v1, 0x0

    iput v1, v0, Lcom/apk/hy;->break:I

    .line 6
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/apk/hy;->goto:J

    .line 7
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    const/4 v3, 0x0

    iput v3, v0, Lcom/apk/hy;->case:F

    .line 8
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iput-wide v1, v0, Lcom/apk/hy;->this:J

    .line 9
    sget-object v0, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 10
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {v0, v1}, Lcom/apk/tx;->try(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lcom/apk/ty;->this()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final for(Lcom/apk/hy;Ljava/lang/Throwable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p1, Lcom/apk/hy;->this:J

    const/4 v0, 0x4

    .line 2
    iput v0, p1, Lcom/apk/hy;->break:I

    .line 3
    iput-object p2, p1, Lcom/apk/hy;->while:Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p0, p1}, Lcom/apk/ty;->break(Lcom/apk/hy;)V

    .line 5
    new-instance p2, Lcom/apk/ty$if;

    invoke-direct {p2, p0, p1}, Lcom/apk/ty$if;-><init>(Lcom/apk/ty;Lcom/apk/hy;)V

    invoke-static {p2}, Lcom/apk/mu;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public goto()Lcom/apk/ty;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v0, v0, Lcom/apk/hy;->for:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v0, v0, Lcom/apk/hy;->try:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v2, v2, Lcom/apk/hy;->for:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v3, v3, Lcom/apk/hy;->try:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object v0, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 5
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {v0, v1}, Lcom/apk/tx;->try(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public if()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/ty;->for:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/apk/ty;->new:Lcom/apk/cz;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v0, v0, Lcom/apk/hy;->break:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    .line 4
    iput-wide v3, v0, Lcom/apk/hy;->this:J

    .line 5
    iput v2, v0, Lcom/apk/hy;->break:I

    .line 6
    invoke-virtual {p0, v0}, Lcom/apk/ty;->break(Lcom/apk/hy;)V

    .line 7
    new-instance v1, Lcom/apk/wy;

    invoke-direct {v1, p0, v0}, Lcom/apk/wy;-><init>(Lcom/apk/ty;Lcom/apk/hy;)V

    invoke-static {v1}, Lcom/apk/mu;->u(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v0, v0, Lcom/apk/hy;->break:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iput-wide v3, v0, Lcom/apk/hy;->this:J

    .line 10
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iput v2, v0, Lcom/apk/hy;->break:I

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v0, v0, Lcom/apk/hy;->break:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final new(Lcom/apk/hy;Ljava/io/File;)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p1, Lcom/apk/hy;->this:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p1, Lcom/apk/hy;->case:F

    const/4 v0, 0x5

    .line 3
    iput v0, p1, Lcom/apk/hy;->break:I

    .line 4
    iget-wide v0, p1, Lcom/apk/hy;->else:J

    iget-wide v2, p1, Lcom/apk/hy;->goto:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 5
    iput-wide v2, p1, Lcom/apk/hy;->else:J

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/apk/ty;->break(Lcom/apk/hy;)V

    .line 7
    new-instance v0, Lcom/apk/ty$for;

    invoke-direct {v0, p0, p1, p2}, Lcom/apk/ty$for;-><init>(Lcom/apk/ty;Lcom/apk/hy;Ljava/io/File;)V

    invoke-static {v0}, Lcom/apk/mu;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-wide v1, v0, Lcom/apk/hy;->goto:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/by;->do()Lcom/apk/by;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-lez v5, :cond_1

    .line 3
    iget-object v0, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v5, v5, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    .line 7
    new-instance v1, Lcom/apk/by;

    const-string v2, "breakpoint file does not exist!"

    invoke-direct {v1, v2}, Lcom/apk/by;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    .line 9
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v0, v0, Lcom/apk/hy;->const:Lcom/apk/qy;

    const-string v5, "Range"

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-object v7, v0, Lcom/apk/qy;->break:Lcom/apk/fy;

    invoke-virtual {v7, v5, v6}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/apk/qy;->for()Lcom/apk/ch0;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 13
    iget v5, v0, Lcom/apk/ch0;->try:I

    const/16 v6, 0x194

    if-eq v5, v6, :cond_1b

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_2

    goto/16 :goto_7

    .line 14
    :cond_2
    iget-object v5, v0, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-nez v5, :cond_3

    .line 15
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    new-instance v1, Lcom/apk/ay;

    const-string v2, "response body is null"

    invoke-direct {v1, v2}, Lcom/apk/ay;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    .line 16
    :cond_3
    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-wide v7, v6, Lcom/apk/hy;->else:J

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_4

    .line 17
    invoke-virtual {v5}, Lcom/apk/dh0;->throw()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/apk/hy;->else:J

    .line 18
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-wide v6, v6, Lcom/apk/hy;->else:J

    const/4 v8, 0x1

    cmp-long v9, v6, v3

    if-gez v9, :cond_5

    .line 19
    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    const-wide/32 v9, 0x6400000

    iput-wide v9, v6, Lcom/apk/hy;->else:J

    .line 20
    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iput-boolean v8, v6, Lcom/apk/hy;->return:Z

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {v5}, Lcom/apk/dh0;->throw()J

    move-result-wide v6

    cmp-long v9, v6, v3

    if-gez v9, :cond_6

    .line 22
    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v6, v6, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 23
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v7, v7, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 25
    invoke-static {v6}, Lcom/apk/mu;->while(Ljava/io/File;)Z

    .line 26
    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iput-boolean v8, v6, Lcom/apk/hy;->return:Z

    .line 27
    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iput-wide v3, v6, Lcom/apk/hy;->goto:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v1, v3

    goto :goto_0

    :catch_0
    move-exception v6

    .line 28
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :cond_6
    :goto_0
    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v6, v6, Lcom/apk/hy;->try:Ljava/lang/String;

    .line 30
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 31
    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v6, v6, Lcom/apk/hy;->if:Ljava/lang/String;

    const-string v7, "Content-Disposition"

    .line 32
    invoke-virtual {v0, v7}, Lcom/apk/ch0;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eqz v0, :cond_8

    const-string v9, "\""

    const-string v10, ""

    .line 33
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "filename="

    .line 34
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v8, :cond_7

    add-int/lit8 v9, v9, 0x9

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v9, "filename*="

    .line 36
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v8, :cond_8

    add-int/lit8 v9, v9, 0xa

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v9, "UTF-8\'\'"

    .line 38
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x7

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v7

    .line 40
    :cond_9
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v0, "/"

    .line 41
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 42
    array-length v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v6, :cond_b

    aget-object v11, v0, v10

    const-string v12, "?"

    .line 43
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 44
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v8, :cond_a

    .line 45
    invoke-virtual {v11, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 46
    :cond_b
    array-length v6, v0

    if-lez v6, :cond_c

    .line 47
    array-length v6, v0

    add-int/2addr v6, v8

    aget-object v7, v0, v6

    :cond_c
    move-object v0, v7

    .line 48
    :cond_d
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v0, "unknownfile_"

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    :try_start_2
    const-string v6, "UTF-8"

    .line 49
    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v6

    .line 50
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    move-object v6, v0

    .line 51
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iput-object v6, v0, Lcom/apk/hy;->try:Ljava/lang/String;

    .line 52
    :cond_f
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v0, v0, Lcom/apk/hy;->for:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/mu;->super(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 53
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    .line 54
    new-instance v1, Lcom/apk/cy;

    const-string v2, "SDCard isn\'t available, please check SD card and permission: WRITE_EXTERNAL_STORAGE, and you must pay attention to Android6.0 RunTime Permissions!"

    invoke-direct {v1, v2}, Lcom/apk/cy;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    .line 56
    :cond_10
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v0, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v7, v7, Lcom/apk/hy;->for:Ljava/lang/String;

    invoke-direct {v0, v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/apk/hy;->new:Ljava/lang/String;

    goto :goto_5

    .line 59
    :cond_11
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v6, v6, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_5
    cmp-long v6, v1, v3

    if-lez v6, :cond_12

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_12

    .line 61
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-static {}, Lcom/apk/by;->do()Lcom/apk/by;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    .line 62
    :cond_12
    iget-object v7, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-boolean v8, v7, Lcom/apk/hy;->return:Z

    if-nez v8, :cond_13

    .line 63
    iget-wide v8, v7, Lcom/apk/hy;->else:J

    cmp-long v10, v1, v8

    if-lez v10, :cond_13

    .line 64
    invoke-static {}, Lcom/apk/by;->do()Lcom/apk/by;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    :cond_13
    if-nez v6, :cond_14

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 66
    invoke-static {v0}, Lcom/apk/mu;->while(Ljava/io/File;)Z

    .line 67
    :cond_14
    iget-object v7, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-boolean v8, v7, Lcom/apk/hy;->return:Z

    if-nez v8, :cond_16

    .line 68
    iget-wide v7, v7, Lcom/apk/hy;->else:J

    cmp-long v9, v1, v7

    if-nez v9, :cond_16

    if-lez v6, :cond_16

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_15

    .line 70
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {p0, v1, v0}, Lcom/apk/ty;->new(Lcom/apk/hy;Ljava/io/File;)V

    return-void

    .line 71
    :cond_15
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-static {}, Lcom/apk/by;->do()Lcom/apk/by;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    .line 72
    :cond_16
    :try_start_3
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v6, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v6, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 74
    iget-object v7, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iput-wide v1, v7, Lcom/apk/hy;->goto:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 75
    :try_start_4
    sget-object v1, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 76
    iget-object v2, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {v1, v2}, Lcom/apk/tx;->try(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v5}, Lcom/apk/dh0;->for()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {p0, v1, v6, v2}, Lcom/apk/ty;->do(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/apk/hy;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 78
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v2, v1, Lcom/apk/hy;->break:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_17

    .line 79
    iput-wide v3, v1, Lcom/apk/hy;->this:J

    .line 80
    iput v5, v1, Lcom/apk/hy;->break:I

    .line 81
    invoke-virtual {p0, v1}, Lcom/apk/ty;->break(Lcom/apk/hy;)V

    .line 82
    new-instance v0, Lcom/apk/wy;

    invoke-direct {v0, p0, v1}, Lcom/apk/wy;-><init>(Lcom/apk/ty;Lcom/apk/hy;)V

    invoke-static {v0}, Lcom/apk/mu;->u(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_17
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    .line 83
    iget-boolean v2, v1, Lcom/apk/hy;->return:Z

    if-nez v2, :cond_19

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-wide v4, v3, Lcom/apk/hy;->else:J

    cmp-long v6, v1, v4

    if-nez v6, :cond_18

    .line 85
    invoke-virtual {p0, v3, v0}, Lcom/apk/ty;->new(Lcom/apk/hy;Ljava/io/File;)V

    goto :goto_6

    .line 86
    :cond_18
    invoke-static {}, Lcom/apk/by;->do()Lcom/apk/by;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 87
    :cond_19
    invoke-virtual {p0, v1, v0}, Lcom/apk/ty;->new(Lcom/apk/hy;Ljava/io/File;)V

    goto :goto_6

    .line 88
    :cond_1a
    new-instance v0, Lcom/apk/by;

    const-string v2, "unknown exception!"

    invoke-direct {v0, v2}, Lcom/apk/by;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v1, v0}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    :goto_6
    return-void

    :catch_2
    move-exception v0

    .line 90
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {p0, v1, v0}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception v0

    .line 91
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {p0, v1, v0}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    .line 92
    :cond_1b
    :goto_7
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-static {}, Lcom/apk/ay;->do()Lcom/apk/ay;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    :catch_4
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {p0, v1, v0}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void

    :catch_5
    move-exception v0

    .line 94
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    invoke-virtual {p0, v1, v0}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    return-void
.end method

.method public this()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 2
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v1, v1, Lcom/apk/hy;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/ry;->do(Ljava/lang/String;)Lcom/apk/ty;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    sget-object v0, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 4
    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v1, v1, Lcom/apk/hy;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v0, v0, Lcom/apk/hy;->break:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v0, v0, Lcom/apk/hy;->break:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v0, v0, Lcom/apk/hy;->break:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v0, v0, Lcom/apk/hy;->break:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 7
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v0, v0, Lcom/apk/hy;->new:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, " may be invalid or damaged, please call the method restart() to download again\uff01"

    if-nez v0, :cond_2

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    new-instance v2, Lcom/apk/cy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the file of the task with tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v4, v4, Lcom/apk/hy;->do:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/apk/cy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 9
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v2, v2, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-wide v4, v0, Lcom/apk/hy;->else:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v2, v2, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/apk/ty;->new(Lcom/apk/hy;Ljava/io/File;)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    new-instance v2, Lcom/apk/cy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v4, v4, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/apk/cy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/apk/ty;->for(Lcom/apk/hy;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v0, v0, Lcom/apk/hy;->do:Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v0, v0, Lcom/apk/hy;->break:I

    goto :goto_2

    .line 14
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, v0, Lcom/apk/hy;->this:J

    const/4 v3, 0x0

    .line 16
    iput v3, v0, Lcom/apk/hy;->break:I

    .line 17
    invoke-virtual {p0, v0}, Lcom/apk/ty;->break(Lcom/apk/hy;)V

    .line 18
    new-instance v3, Lcom/apk/uy;

    invoke-direct {v3, p0, v0}, Lcom/apk/uy;-><init>(Lcom/apk/ty;Lcom/apk/hy;)V

    invoke-static {v3}, Lcom/apk/mu;->u(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    .line 20
    iput-wide v1, v0, Lcom/apk/hy;->this:J

    const/4 v1, 0x1

    .line 21
    iput v1, v0, Lcom/apk/hy;->break:I

    .line 22
    invoke-virtual {p0, v0}, Lcom/apk/ty;->break(Lcom/apk/hy;)V

    .line 23
    new-instance v1, Lcom/apk/vy;

    invoke-direct {v1, p0, v0}, Lcom/apk/vy;-><init>(Lcom/apk/ty;Lcom/apk/hy;)V

    invoke-static {v1}, Lcom/apk/mu;->u(Ljava/lang/Runnable;)V

    .line 24
    new-instance v0, Lcom/apk/cz;

    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v1, v1, Lcom/apk/hy;->catch:I

    invoke-direct {v0, v1, p0}, Lcom/apk/cz;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/apk/ty;->new:Lcom/apk/cz;

    .line 25
    iget-object v1, p0, Lcom/apk/ty;->for:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public try(Lcom/apk/sy;)Lcom/apk/ty;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ty;->if:Ljava/util/Map;

    iget-object v1, p1, Lcom/apk/sy;->do:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
