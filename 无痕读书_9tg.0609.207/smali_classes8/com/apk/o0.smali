.class public Lcom/apk/o0;
.super Ljava/lang/Object;
.source "BookCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/o0$else;
    }
.end annotation


# static fields
.field public static try:Lcom/apk/o0;


# instance fields
.field public do:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public for:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public if:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;"
        }
    .end annotation
.end field

.field public new:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 14

    const-string v0, "collectId = ?"

    const-string v1, "max"

    const-string v2, "progress"

    const-string v3, "state"

    .line 1
    const-class v4, Lcom/manhua/data/bean/ComicDownloadBean;

    const-class v5, Lcom/biquge/ebook/app/bean/DownloadBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    :try_start_0
    new-array v9, v8, [J

    .line 2
    invoke-static {v5, v9}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biquge/ebook/app/bean/DownloadBean;

    .line 5
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-virtual {v10}, Lcom/biquge/ebook/app/bean/DownloadBean;->getState()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {v10}, Lcom/biquge/ebook/app/bean/DownloadBean;->getProgress()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {v10}, Lcom/biquge/ebook/app/bean/DownloadBean;->getMax()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    const-class v12, Lcom/biquge/ebook/app/bean/CollectBook;

    new-array v13, v7, [Ljava/lang/String;

    aput-object v0, v13, v8

    invoke-virtual {v10}, Lcom/biquge/ebook/app/bean/DownloadBean;->getNovelId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v6

    invoke-static {v12, v11, v13}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-array v9, v8, [Ljava/lang/String;

    .line 10
    invoke-static {v5, v9}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 11
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    new-array v5, v8, [J

    .line 12
    invoke-static {v4, v5}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 13
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 14
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/manhua/data/bean/ComicDownloadBean;

    .line 15
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 16
    invoke-virtual {v9}, Lcom/manhua/data/bean/ComicDownloadBean;->getState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-virtual {v9}, Lcom/manhua/data/bean/ComicDownloadBean;->getProgress()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    invoke-virtual {v9}, Lcom/manhua/data/bean/ComicDownloadBean;->getMax()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    const-class v11, Lcom/manhua/data/bean/ComicCollectBean;

    new-array v12, v7, [Ljava/lang/String;

    aput-object v0, v12, v8

    invoke-virtual {v9}, Lcom/manhua/data/bean/ComicDownloadBean;->getNovelId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v6

    invoke-static {v11, v10, v12}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    new-array v0, v8, [Ljava/lang/String;

    .line 20
    invoke-static {v4, v0}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_3
    :goto_3
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 23
    invoke-static {v0}, Lcom/biquge/ebook/app/app/AppService;->this(Landroid/content/Context;)V

    return-void
.end method

.method public static else()Lcom/apk/o0;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/o0;->try:Lcom/apk/o0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/o0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/o0;->try:Lcom/apk/o0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/o0;

    invoke-direct {v1}, Lcom/apk/o0;-><init>()V

    sput-object v1, Lcom/apk/o0;->try:Lcom/apk/o0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/o0;->try:Lcom/apk/o0;

    return-object v0
.end method


# virtual methods
.method public break(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/o0;->do:Lcom/apk/gg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, p0, Lcom/apk/o0;->do:Lcom/apk/gg;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/o0;->do:Lcom/apk/gg;

    invoke-virtual {v0, p1, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/biquge/ebook/app/app/AppService;->new(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    invoke-virtual {v0, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/apk/o0;->class(Lcom/biquge/ebook/app/bean/CollectBook;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public case(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/CollectBook;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public catch(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/o0;->for:Lcom/apk/gg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, p0, Lcom/apk/o0;->for:Lcom/apk/gg;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/o0;->for:Lcom/apk/gg;

    invoke-virtual {v0, p1, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/biquge/ebook/app/app/AppService;->try(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v0, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized class(Lcom/biquge/ebook/app/bean/CollectBook;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/apk/o0;->do:Lcom/apk/gg;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/apk/gg;->do()V

    .line 6
    iget-object v1, v1, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    invoke-virtual {v1, v0, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    invoke-virtual {v1, v0, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CACHE_DOWNLOAD_START"

    .line 10
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized const(Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/apk/o0;->for:Lcom/apk/gg;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apk/o0;->for:Lcom/apk/gg;

    invoke-virtual {v1, v0}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v1, v0, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v1, v0, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CACHE_DOWNLOAD_START"

    .line 8
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public do(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/apk/o0$else;)V
    .locals 9

    const-string v0, "SP_LOGIN_CHECK_XZ_KEY"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string v0, "{\"flag\":false,\"every\":[100,200,0]}"

    if-eqz p4, :cond_1

    const-string p4, "CACHE_NOVEL_FZYD_BATCH_CONFIG_KEY"

    .line 4
    invoke-static {p4, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p2}, Lcom/apk/w0;->return(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "CACHE_NOVEL_WJ_BATCH_CONFIG_KEY"

    .line 6
    invoke-static {p4, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_2
    const-string p4, "CACHE_NOVEL_LZ_BATCH_CONFIG_KEY"

    .line 7
    invoke-static {p4, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 8
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 9
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    new-instance v8, Lcom/apk/o0$do;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p6

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/apk/o0$do;-><init>(Lcom/apk/o0;Lcom/apk/o0$else;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz v0, :cond_8

    .line 10
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p5

    if-eqz p5, :cond_7

    .line 11
    sget-object p3, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    if-eqz p3, :cond_3

    .line 12
    invoke-virtual {p3}, Lcom/apk/gg;->size()I

    move-result p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-lez p3, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    const p1, 0x7f10012f

    .line 13
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_3

    .line 14
    :cond_5
    new-instance p3, Lcom/apk/lv;

    invoke-direct {p3}, Lcom/apk/lv;-><init>()V

    .line 15
    new-instance p5, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;

    invoke-direct {p5, p1, p2, p4, v8}, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$for;)V

    .line 16
    instance-of p1, p5, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz p1, :cond_6

    .line 17
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean p1, p3, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 19
    :cond_6
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 20
    iput-boolean p1, p3, Lcom/apk/lv;->continue:Z

    .line 21
    :goto_2
    iput-object p3, p5, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 22
    invoke-virtual {p5}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :goto_3
    return-void

    .line 23
    :cond_7
    throw p3

    .line 24
    :cond_8
    throw p3

    .line 25
    :cond_9
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object p4

    .line 26
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-virtual {p4, p1, v0, p2}, Lcom/apk/s0;->goto(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    return-void

    .line 27
    :cond_a
    new-instance p4, Lcom/apk/o0$if;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p6

    move v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/apk/o0$if;-><init>(Lcom/apk/o0;Lcom/apk/o0$else;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4}, Lcom/apk/o0;->throw(Landroid/app/Activity;Lcom/apk/o0$else;)V

    return-void
.end method

.method public final final(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/o0;->do:Lcom/apk/gg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, p0, Lcom/apk/o0;->do:Lcom/apk/gg;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/o0;->do:Lcom/apk/gg;

    invoke-virtual {v0, p1, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/biquge/ebook/app/app/AppService;->new(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    invoke-virtual {v0, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setProgress(I)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/apk/o0;->class(Lcom/biquge/ebook/app/bean/CollectBook;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public for(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/apk/o0$else;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/apk/o0;->if(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/apk/o0$else;)V

    return-void
.end method

.method public goto(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/o0;->do:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/gg;->do()V

    .line 3
    iget-object v0, v0, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public if(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/apk/o0$else;)V
    .locals 8

    const-string v0, "SP_LOGIN_CHECK_XZ_KEY"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-virtual {v0, p1, v1, p2}, Lcom/apk/s0;->goto(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/apk/o0$for;

    move-object v1, v0

    move-object v2, p0

    move v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/apk/o0$for;-><init>(Lcom/apk/o0;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/o0$else;)V

    invoke-virtual {p0, p1, v0}, Lcom/apk/o0;->throw(Landroid/app/Activity;Lcom/apk/o0$else;)V

    return-void
.end method

.method public import()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v0}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Ljava/util/HashSet;

    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/apk/o0;->catch(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public new(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "novelId = ?"

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/apk/o0;->final(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    invoke-virtual {v1, p1}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "readPage"

    const/4 v3, 0x0

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "percentage"

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "progress"

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "max"

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "state"

    const/4 v4, 0x1

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "fileType"

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "readChapterId"

    const-string v5, ""

    .line 11
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-class v2, Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "collectId = ?"

    aput-object v7, v6, v3

    aput-object p1, v6, v4

    invoke-static {v2, v1, v6}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    const-class v1, Lcom/biquge/ebook/app/bean/ChapterBean;

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 14
    const-class v1, Lcom/biquge/ebook/app/bean/CacheFailedBean;

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 15
    const-class v1, Lcom/biquge/ebook/app/bean/BookMark;

    new-array v2, v5, [Ljava/lang/String;

    const-string v6, "chapterId = ?"

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 16
    const-class v1, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 17
    invoke-static {p1}, Lcom/apk/w;->super(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biquge/ebook/app/bean/DownloadProgress;->removeDownloadProgress(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->removeNovelFootprint(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :goto_0
    invoke-static {p1}, Lcom/apk/ze;->import(Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lcom/apk/da;->throws(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/apk/da;->default(Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bookId = ?"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    .line 23
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/biquge/ebook/app/bean/TaskInfo;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/TaskInfo;

    if-eqz p1, :cond_1

    .line 24
    invoke-static {p1}, Lcom/apk/kf;->goto(Lcom/biquge/ebook/app/bean/TaskInfo;)Z

    :cond_1
    const p1, 0x7f10012b

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 25
    invoke-static {p1, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final super(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/o0;->for:Lcom/apk/gg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, p0, Lcom/apk/o0;->for:Lcom/apk/gg;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/o0;->for:Lcom/apk/gg;

    invoke-virtual {v0, p1, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/biquge/ebook/app/app/AppService;->try(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v0, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setProgress(I)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public this(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/o0;->for:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/gg;->do()V

    .line 3
    iget-object v0, v0, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final throw(Landroid/app/Activity;Lcom/apk/o0$else;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "CACHE_DOWNLOAD_4G"

    .line 2
    invoke-static {v1}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v1}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/eg;->a()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f1000cd

    .line 5
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1000cc

    .line 6
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1000ca

    .line 7
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/apk/o0$new;

    invoke-direct {v5, p0, p2}, Lcom/apk/o0$new;-><init>(Lcom/apk/o0;Lcom/apk/o0$else;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/apk/o0$try;

    invoke-direct {v7, p0, p2}, Lcom/apk/o0$try;-><init>(Lcom/apk/o0;Lcom/apk/o0$else;)V

    const/4 v8, 0x1

    move-object v1, p1

    .line 8
    invoke-static/range {v1 .. v8}, Lcom/apk/ze;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Lcom/apk/et;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 9
    invoke-interface {p2, p1}, Lcom/apk/o0$else;->do(Z)V

    goto :goto_1

    .line 10
    :cond_3
    new-instance v0, Lcom/apk/o0$case;

    invoke-direct {v0, p0, p2}, Lcom/apk/o0$case;-><init>(Lcom/apk/o0;Lcom/apk/o0$else;)V

    invoke-static {p1, v0}, Lcom/apk/eg;->private(Landroid/content/Context;Lcom/apk/et;)V

    :goto_1
    return-void
.end method

.method public try(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/apk/o0;->super(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v0, p1}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "progress"

    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "state"

    const/4 v3, 0x1

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    const-class v1, Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "collectId = ?"

    aput-object v6, v5, v2

    aput-object p1, v5, v3

    invoke-static {v1, v0, v5}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 8
    const-class v0, Lcom/biquge/ebook/app/bean/CacheFailedBean;

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "novelId = ?"

    aput-object v4, v1, v2

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    const p1, 0x7f10012b

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 9
    invoke-static {p1, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public while()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/o0;->if:Lcom/apk/gg;

    invoke-virtual {v0}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Ljava/util/HashSet;

    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/apk/o0;->break(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
