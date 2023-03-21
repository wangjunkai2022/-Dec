.class public Lcom/ss/android/downloadlib/g;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Lcom/ss/android/downloadlib/g;


# instance fields
.field public final b:Lcom/ss/android/download/api/a;

.field public final c:Lcom/ss/android/downloadlib/f;

.field public final d:Lcom/ss/android/downloadad/api/a;

.field public e:Lcom/ss/android/downloadad/api/b;

.field public f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Lcom/ss/android/downloadlib/f;

    new-instance v0, Lcom/ss/android/downloadlib/e;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/g;->b:Lcom/ss/android/download/api/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/g;->f:J

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/g;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/g;->d:Lcom/ss/android/downloadad/api/a;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/ss/android/downloadlib/g$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;
    .locals 2

    const-class v0, Lcom/ss/android/downloadlib/g;

    sget-object v1, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/downloadlib/g$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/g$1;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    return-object p0
.end method

.method public static synthetic a(Lcom/ss/android/downloadlib/g;)Lcom/ss/android/downloadlib/g;
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    return-object p0
.end method

.method public static synthetic b(Lcom/ss/android/downloadlib/g;)Lcom/ss/android/downloadlib/f;
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/g;->h()Lcom/ss/android/downloadlib/f;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->b()V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/ss/android/downloadlib/c/g;

    invoke-direct {v4}, Lcom/ss/android/downloadlib/c/g;-><init>()V

    new-instance v5, Lcom/ss/android/downloadlib/c/f;

    invoke-direct {v5, p1}, Lcom/ss/android/downloadlib/c/f;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/ss/android/downloadlib/c;

    invoke-direct {v6}, Lcom/ss/android/downloadlib/c;-><init>()V

    const-string v3, "misc_config"

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/c/c;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/appdownloader/c/h;)V

    new-instance v0, Lcom/ss/android/downloadlib/c/d;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/c/d;-><init>()V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/g;)V

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->registerDownloadCacheSyncListener(Lcom/ss/android/socialbase/downloader/depend/k;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p1

    new-instance v0, Lcom/ss/android/downloadlib/addownload/k;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/r;)V

    new-instance p1, Lcom/ss/android/downloadlib/c/e;

    invoke-direct {p1}, Lcom/ss/android/downloadlib/c/e;-><init>()V

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/d/c;)V

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p1

    invoke-static {}, Lcom/ss/android/downloadlib/f/c;->a()Lcom/ss/android/downloadlib/f/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/j;)V

    return-void
.end method

.method private h()Lcom/ss/android/downloadlib/f;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Lcom/ss/android/downloadlib/f;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ss/android/download/api/a;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->b:Lcom/ss/android/download/api/a;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v6, Lcom/ss/android/downloadlib/g$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/g$4;-><init>(Lcom/ss/android/downloadlib/g;Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    invoke-static {v6}, Lcom/ss/android/downloadlib/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ss/android/download/api/download/a/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/g;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/f;->a(Lcom/ss/android/download/api/download/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Lcom/ss/android/downloadlib/g$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/downloadlib/g$2;-><init>(Lcom/ss/android/downloadlib/g;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v8, Lcom/ss/android/downloadlib/g$6;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/downloadlib/g$6;-><init>(Lcom/ss/android/downloadlib/g;Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    invoke-static {v8}, Lcom/ss/android/downloadlib/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 10
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v9, Lcom/ss/android/downloadlib/g$7;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/downloadlib/g$7;-><init>(Lcom/ss/android/downloadlib/g;Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    invoke-static {v9}, Lcom/ss/android/downloadlib/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/OnItemClickListener;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 11
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v10, Lcom/ss/android/downloadlib/g$5;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/downloadlib/g$5;-><init>(Lcom/ss/android/downloadlib/g;Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/OnItemClickListener;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    invoke-static {v10}, Lcom/ss/android/downloadlib/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Lcom/ss/android/downloadlib/g$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/downloadlib/g$3;-><init>(Lcom/ss/android/downloadlib/g;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/g;->f:J

    return-wide v0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/g;->f:J

    return-void
.end method

.method public d()Lcom/ss/android/downloadad/api/a;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Lcom/ss/android/downloadad/api/a;

    return-object v0
.end method

.method public e()Lcom/ss/android/downloadad/api/b;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->e:Lcom/ss/android/downloadad/api/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/b;->a()Lcom/ss/android/downloadlib/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/g;->e:Lcom/ss/android/downloadad/api/b;

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->e:Lcom/ss/android/downloadad/api/b;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/d;->e()V

    return-void
.end method
