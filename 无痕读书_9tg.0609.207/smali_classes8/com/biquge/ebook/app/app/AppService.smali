.class public Lcom/biquge/ebook/app/app/AppService;
.super Landroid/app/Service;
.source "AppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/app/AppService$for;,
        Lcom/biquge/ebook/app/app/AppService$if;
    }
.end annotation


# static fields
.field public static do:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/app/AppService$if;",
            ">;"
        }
    .end annotation
.end field

.field public static for:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static if:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/app/AppService$for;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static break(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const v1, 0x7fffffff

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 6
    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 7
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/biquge/ebook/app/app/AppService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static declared-synchronized case(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-class v0, Lcom/biquge/ebook/app/app/AppService;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    .line 2
    invoke-virtual {v1}, Lcom/apk/gg;->do()V

    .line 3
    iget-object v1, v1, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const p0, 0x7f10011f

    .line 5
    :try_start_1
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/apk/o0;->do:Lcom/apk/gg;

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    new-instance p0, Lcom/biquge/ebook/app/app/AppService$if;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/biquge/ebook/app/app/AppService$if;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/app/AppService$do;)V

    .line 10
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p2

    .line 11
    iget-object v1, p2, Lcom/apk/o;->try:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/16 v4, 0xb

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p2, Lcom/apk/o;->try:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    :cond_3
    iget-object p2, p2, Lcom/apk/o;->try:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 15
    invoke-virtual {p0, p2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 16
    sget-object p2, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    if-nez p2, :cond_4

    .line 17
    new-instance p2, Lcom/apk/gg;

    invoke-direct {p2}, Lcom/apk/gg;-><init>()V

    sput-object p2, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    .line 18
    :cond_4
    sget-object p2, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    invoke-virtual {p2, p1, p0}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static catch(Ljava/lang/String;IIII)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apk/o0;->goto(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "max"

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "progress"

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-ltz p3, :cond_1

    const-string p1, "percentage"

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const/4 p1, -0x1

    if-eq p4, p1, :cond_2

    const-string p1, "state"

    .line 6
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    :cond_2
    const-class p1, Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, "collectId = ?"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p0, p2, p3

    invoke-static {p1, v0, p2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/util/List;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 4
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static declared-synchronized else(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-class v0, Lcom/biquge/ebook/app/app/AppService;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/biquge/ebook/app/app/AppService;->if:Lcom/apk/gg;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/biquge/ebook/app/app/AppService;->if:Lcom/apk/gg;

    invoke-virtual {v1, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/app/AppService$for;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz p0, :cond_1

    const p0, 0x7f10011f

    .line 3
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_1
    if-eqz v1, :cond_4

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 5
    sget-object p0, Lcom/biquge/ebook/app/app/AppService;->for:Lcom/apk/gg;

    if-nez p0, :cond_2

    .line 6
    new-instance p0, Lcom/apk/gg;

    invoke-direct {p0}, Lcom/apk/gg;-><init>()V

    sput-object p0, Lcom/biquge/ebook/app/app/AppService;->for:Lcom/apk/gg;

    .line 7
    :cond_2
    sget-object p0, Lcom/biquge/ebook/app/app/AppService;->for:Lcom/apk/gg;

    invoke-virtual {p0, p1, p3}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_3
    monitor-exit v0

    return-void

    .line 9
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/apk/o0;->for:Lcom/apk/gg;

    if-eqz p0, :cond_5

    .line 11
    invoke-virtual {p0, p1}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_5
    new-instance p0, Lcom/biquge/ebook/app/app/AppService$for;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/biquge/ebook/app/app/AppService$for;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/app/AppService$do;)V

    .line 13
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p2

    .line 14
    iget-object p3, p2, Lcom/apk/o;->case:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p3, :cond_6

    .line 15
    new-instance p3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/16 v3, 0xb

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, p3

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object p3, p2, Lcom/apk/o;->case:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    :cond_6
    iget-object p2, p2, Lcom/apk/o;->case:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    .line 18
    invoke-virtual {p0, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    sget-object p2, Lcom/biquge/ebook/app/app/AppService;->if:Lcom/apk/gg;

    if-nez p2, :cond_7

    .line 20
    new-instance p2, Lcom/apk/gg;

    invoke-direct {p2}, Lcom/apk/gg;-><init>()V

    sput-object p2, Lcom/biquge/ebook/app/app/AppService;->if:Lcom/apk/gg;

    .line 21
    :cond_7
    sget-object p2, Lcom/biquge/ebook/app/app/AppService;->if:Lcom/apk/gg;

    invoke-virtual {p2, p1, p0}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static for(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static goto(Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "novelId = ? and oid = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class p1, Lcom/manhua/data/bean/ComicChapterBean;

    invoke-virtual {p0, p1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/manhua/data/bean/ComicChapterBean;

    return-object p0
.end method

.method public static if(Ljava/lang/String;Lcom/biquge/ebook/app/bean/CollectBook;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Lcom/biquge/ebook/app/bean/ChapterBean;I)Z
    .locals 10

    .line 1
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 2
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/apk/o0;->goto(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ROLLNAME_LAYOUT_KEY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/apk/n2;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    goto :goto_3

    .line 5
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_4

    .line 6
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p0}, Lcom/apk/p0;->final(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0, v0}, Lcom/apk/w;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v8, p2

    .line 8
    invoke-static/range {v4 .. v9}, Lcom/apk/n2;->super(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Z)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    :goto_3
    if-eq p4, v1, :cond_8

    add-int/2addr p4, v3

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p1, v2}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 11
    invoke-virtual {p1, p4}, Lcom/biquge/ebook/app/bean/CollectBook;->setProgress(I)V

    .line 12
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/apk/o0;->class(Lcom/biquge/ebook/app/bean/CollectBook;)V

    .line 13
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result p1

    invoke-static {p0, p1, p4, v1, v2}, Lcom/biquge/ebook/app/app/AppService;->catch(Ljava/lang/String;IIII)V

    goto :goto_6

    :cond_5
    const/4 p0, 0x3

    :try_start_1
    new-array p0, p0, [Ljava/lang/String;

    const-string p1, "novelId = ? and chapterId = ?"

    aput-object p1, p0, v2

    .line 14
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    const/4 p1, 0x2

    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-static {p0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class p1, Lcom/biquge/ebook/app/bean/CacheFailedBean;

    .line 15
    invoke-virtual {p0, p1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;

    if-nez p0, :cond_8

    .line 16
    new-instance p0, Lcom/biquge/ebook/app/bean/CacheFailedBean;

    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/biquge/ebook/app/bean/CacheFailedBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_6
    :goto_4
    if-nez v0, :cond_7

    .line 19
    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    goto :goto_5

    .line 20
    :cond_7
    invoke-virtual {p1, v3}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 21
    :goto_5
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/apk/o0;->class(Lcom/biquge/ebook/app/bean/CollectBook;)V

    const/4 v2, 0x1

    :cond_8
    :goto_6
    return v2
.end method

.method public static new(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    .line 3
    invoke-virtual {v0}, Lcom/apk/gg;->do()V

    .line 4
    iget-object v0, v0, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    invoke-virtual {v0, p0}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/app/AppService$if;

    .line 6
    sget-object v1, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    invoke-virtual {v1, p0}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static this(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/biquge/ebook/app/app/AppService;->break(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/app/AppService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static try(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->if:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->if:Lcom/apk/gg;

    .line 3
    invoke-virtual {v0}, Lcom/apk/gg;->do()V

    .line 4
    iget-object v0, v0, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->if:Lcom/apk/gg;

    invoke-virtual {v0, p0}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/app/AppService$for;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 7
    :cond_0
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->if:Lcom/apk/gg;

    invoke-virtual {v0, p0}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
