.class public Lcom/apk/h6;
.super Lcom/apk/f6;
.source "BaseMainActivity.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/receiver/PkgReceiver;

.field public for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;"
        }
    .end annotation
.end field

.field public if:J

.field public new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;"
        }
    .end annotation
.end field

.field public try:Lcom/biquge/ebook/app/bean/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/c6;

    invoke-direct {v1, p0}, Lcom/apk/c6;-><init>(Lcom/apk/h6;)V

    .line 2
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->init(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/f6;->setStatusTransparent()V

    .line 3
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 4
    invoke-static {p0}, Lcom/apk/iu;->try(Landroid/app/Activity;)I

    move-result v1

    iput v1, p1, Lcom/apk/u0;->do:I

    .line 5
    new-instance v1, Lcom/apk/au;

    invoke-direct {v1, p0}, Lcom/apk/au;-><init>(Landroid/app/Activity;)V

    .line 6
    iget-boolean v1, v1, Lcom/apk/au;->for:Z

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcom/apk/au;

    invoke-direct {v1, p0}, Lcom/apk/au;-><init>(Landroid/app/Activity;)V

    .line 8
    invoke-virtual {v1}, Lcom/apk/au;->for()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Lcom/apk/au;

    invoke-direct {v1, p0}, Lcom/apk/au;-><init>(Landroid/app/Activity;)V

    .line 10
    iget v1, v1, Lcom/apk/au;->new:I

    .line 11
    iput v1, p1, Lcom/apk/u0;->if:I

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/apk/eg;->interface(Landroid/app/Activity;)Z

    move-result v1

    .line 13
    iput-boolean v1, p1, Lcom/apk/u0;->for:Z

    if-nez v1, :cond_1

    .line 14
    invoke-static {p0}, Lcom/apk/iu;->case(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/apk/u0;->for:Z

    .line 15
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "package"

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    new-instance v1, Lcom/biquge/ebook/app/receiver/PkgReceiver;

    invoke-direct {v1}, Lcom/biquge/ebook/app/receiver/PkgReceiver;-><init>()V

    iput-object v1, p0, Lcom/apk/h6;->do:Lcom/biquge/ebook/app/receiver/PkgReceiver;

    .line 20
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "openType"

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    throw v0

    .line 25
    :cond_3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_4

    :goto_0
    return-void

    .line 26
    :cond_4
    throw v0

    .line 27
    :cond_5
    throw v0
.end method

.method public initData()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    invoke-super/range {p0 .. p0}, Lcom/apk/f6;->initData()V

    .line 2
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v0

    .line 3
    iput-object v1, v0, Lcom/apk/f;->if:Landroid/app/Activity;

    .line 4
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v0

    .line 5
    iput-object v1, v0, Lcom/apk/f;->if:Landroid/app/Activity;

    const-string v2, "SYNC_SHELF_BOOKS_TAG"

    .line 6
    invoke-static {v2}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7
    invoke-static {v2}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, ","

    .line 9
    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 10
    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_14

    aget-object v12, v0, v5

    .line 11
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 12
    sget-object v3, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string v5, "id"

    const-string v13, "content://"

    .line 13
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_10

    .line 14
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".MyContentProvider/CollectBook"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v15, :cond_2

    .line 16
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_1
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    const-class v0, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 19
    const-class v6, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/apk/n2;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 20
    new-instance v9, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-direct {v9}, Lcom/biquge/ebook/app/bean/CollectBook;-><init>()V

    .line 21
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lcom/apk/n2;->e(Lorg/litepal/crud/LitePalSupport;J)V

    .line 22
    invoke-static {v9, v0, v15}, Lcom/apk/n2;->D(Ljava/lang/Object;Ljava/util/List;Landroid/database/Cursor;)V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-virtual {v9}, Lcom/biquge/ebook/app/bean/CollectBook;->getDbBaseObjId()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v3

    move-object v7, v12

    move-object v8, v9

    move-object v14, v9

    move-object/from16 v9, v16

    move-object v4, v11

    move-object v11, v0

    :try_start_3
    invoke-static/range {v6 .. v11}, Lcom/apk/n2;->B(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 25
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v4, v11

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v11

    :goto_2
    move-object v11, v4

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :catch_2
    move-exception v0

    const/4 v11, 0x0

    goto :goto_4

    :cond_2
    const/4 v11, 0x0

    :goto_3
    if-eqz v15, :cond_3

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_14

    :catch_3
    move-exception v0

    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 26
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-eqz v15, :cond_3

    .line 27
    :goto_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 28
    :cond_3
    iput-object v11, v1, Lcom/apk/h6;->for:Ljava/util/List;

    .line 29
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".MyContentProvider/ComicCollectBean"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_4

    .line 31
    :try_start_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 32
    :goto_6
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    const-class v0, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 34
    const-class v6, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/apk/n2;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 35
    new-instance v15, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-direct {v15}, Lcom/manhua/data/bean/ComicCollectBean;-><init>()V

    .line 36
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v15, v6, v7}, Lcom/apk/n2;->e(Lorg/litepal/crud/LitePalSupport;J)V

    .line 37
    invoke-static {v15, v0, v4}, Lcom/apk/n2;->D(Ljava/lang/Object;Ljava/util/List;Landroid/database/Cursor;)V

    .line 38
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-virtual {v15}, Lcom/manhua/data/bean/ComicCollectBean;->getDbBaseObjId()Ljava/lang/String;

    move-result-object v9

    move-object v6, v3

    move-object v7, v12

    move-object v8, v15

    invoke-static/range {v6 .. v11}, Lcom/apk/n2;->B(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 40
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_13

    :catch_5
    move-exception v0

    goto :goto_7

    :cond_4
    const/4 v14, 0x0

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_9

    :catchall_3
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_12

    :catch_6
    move-exception v0

    const/4 v4, 0x0

    :goto_7
    const/4 v14, 0x0

    .line 41
    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v4, :cond_6

    .line 42
    :goto_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_6
    iput-object v14, v1, Lcom/apk/h6;->new:Ljava/util/List;

    .line 44
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".MyContentProvider/User"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v3, :cond_8

    .line 46
    :try_start_a
    new-instance v4, Lcom/biquge/ebook/app/bean/User;

    invoke-direct {v4}, Lcom/biquge/ebook/app/bean/User;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 47
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    const-class v0, Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-static {v4, v0, v3}, Lcom/apk/n2;->D(Ljava/lang/Object;Ljava/util/List;Landroid/database/Cursor;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_7
    move-object v14, v4

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v14, v4

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v14, v3

    goto/16 :goto_11

    :catch_8
    move-exception v0

    const/4 v14, 0x0

    :goto_a
    move-object/from16 v17, v14

    move-object v14, v3

    goto :goto_c

    :cond_8
    const/4 v14, 0x0

    :goto_b
    if-eqz v3, :cond_a

    .line 50
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_d

    :catchall_5
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_11

    :catch_9
    move-exception v0

    const/4 v14, 0x0

    const/16 v17, 0x0

    .line 51
    :goto_c
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v14, :cond_9

    .line 52
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object/from16 v14, v17

    .line 53
    :cond_a
    :goto_d
    iput-object v14, v1, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    const/4 v3, 0x1

    if-eqz v14, :cond_b

    .line 54
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_SHOW_AGREENMENT_KEY"

    invoke-virtual {v0, v4, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_SELECT_GENDER_KEY"

    invoke-virtual {v0, v4, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    :cond_b
    :try_start_d
    invoke-static {}, Lcom/apk/w0;->goto()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 58
    invoke-static {v0}, Lcom/apk/w0;->package(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    :cond_c
    :goto_e
    iget-object v0, v1, Lcom/apk/h6;->for:Ljava/util/List;

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/apk/h6;->new:Ljava/util/List;

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    if-eqz v0, :cond_f

    .line 61
    :cond_d
    iget-object v0, v1, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    const-string v0, ""

    .line 62
    :goto_f
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/apk/v0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v4, Lcom/apk/zs;

    invoke-direct {v4}, Lcom/apk/zs;-><init>()V

    .line 64
    iput-object v1, v4, Lcom/apk/zs;->do:Landroid/content/Context;

    const v5, 0x7f1001d8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    .line 65
    invoke-static {v5, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iput-object v0, v4, Lcom/apk/zs;->for:Ljava/lang/String;

    const v0, 0x7f1001d7

    .line 67
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    iput-object v0, v4, Lcom/apk/zs;->new:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/apk/d6;

    invoke-direct {v0, v1}, Lcom/apk/d6;-><init>(Lcom/apk/h6;)V

    .line 70
    iput-object v0, v4, Lcom/apk/zs;->try:Lcom/apk/ft;

    .line 71
    invoke-static {v4}, Lcom/apk/eg;->f(Lcom/apk/zs;)V

    .line 72
    :cond_f
    :goto_10
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    :catchall_6
    move-exception v0

    :goto_11
    if-eqz v14, :cond_10

    .line 73
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_10
    throw v0

    :catchall_7
    move-exception v0

    move-object v14, v4

    :goto_12
    move-object v4, v14

    :goto_13
    if-eqz v4, :cond_11

    .line 75
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_11
    throw v0

    :catchall_8
    move-exception v0

    move-object v14, v15

    :goto_14
    move-object v15, v14

    :goto_15
    if-eqz v15, :cond_12

    .line 77
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_12
    throw v0

    :cond_13
    const/4 v4, 0x0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_14
    :goto_16
    return-void
.end method

.method public isImmersionBarEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getLoginType()I

    move-result v0

    iget-object v1, p0, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/User;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/apk/g5;->try(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h6;->for:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/h6;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 3
    invoke-virtual {v2}, Lorg/litepal/crud/LitePalSupport;->clearSavedState()V

    .line 4
    invoke-static {v2}, Lcom/apk/n2;->v(Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/apk/ze;->Y(Z)V

    const-string v0, "SP_BOOK_READ_FIRST_GUIDE_KEY"

    .line 6
    invoke-static {v0, v1}, Lcom/apk/ze;->O(Ljava/lang/String;Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/h6;->new:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/apk/h6;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicCollectBean;

    .line 9
    invoke-virtual {v2}, Lorg/litepal/crud/LitePalSupport;->clearSavedState()V

    .line 10
    invoke-static {v2}, Lcom/apk/mu;->x(Lcom/manhua/data/bean/ComicCollectBean;)Z

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v1}, Lcom/apk/ze;->Z(Z)V

    const-string v0, "SP_READ_FIRST_GUIDE_KEY"

    .line 12
    invoke-static {v0, v1}, Lcom/apk/ze;->O(Ljava/lang/String;Z)V

    .line 13
    :cond_3
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 14
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    if-eqz v0, :cond_4

    .line 15
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/e6;

    invoke-direct {v1, p0}, Lcom/apk/e6;-><init>(Lcom/apk/h6;)V

    .line 16
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/apk/h6;->for:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/apk/h6;->new:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apk/h6;->if:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const v0, 0x7f10019e

    .line 3
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apk/h6;->if:J

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/apk/h6;->do:Lcom/biquge/ebook/app/receiver/PkgReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 5
    sget-object v2, Lcom/apk/cg;->for:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/apk/cg;->do(I)V

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    sget-object v0, Lcom/apk/cg;->if:Landroid/app/NotificationManager;

    if-eqz v0, :cond_2

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 10
    sget-object v0, Lcom/apk/cg;->if:Landroid/app/NotificationManager;

    const-string v2, "bqg_channel"

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_2
    :goto_1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/o0;->while()V

    .line 13
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v0

    .line 14
    iget-object v2, v0, Lcom/apk/f;->if:Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 15
    iput-object v1, v0, Lcom/apk/f;->if:Landroid/app/Activity;

    .line 16
    :cond_3
    sget-object v0, Lcom/apk/e;->this:Lcom/apk/e;

    if-eqz v0, :cond_4

    .line 17
    sput-object v1, Lcom/apk/e;->this:Lcom/apk/e;

    .line 18
    :cond_4
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v0

    .line 19
    iget-object v2, v0, Lcom/apk/f;->if:Landroid/app/Activity;

    if-eqz v2, :cond_5

    .line 20
    iput-object v1, v0, Lcom/apk/f;->if:Landroid/app/Activity;

    .line 21
    :cond_5
    sget-object v0, Lcom/apk/c;->this:Lcom/apk/c;

    if-eqz v0, :cond_6

    .line 22
    sput-object v1, Lcom/apk/c;->this:Lcom/apk/c;

    .line 23
    :cond_6
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 24
    iget-object v2, v0, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    if-eqz v2, :cond_7

    .line 25
    iput-object v1, v0, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    .line 26
    :cond_7
    iget-object v2, v0, Lcom/biquge/ebook/app/app/AppContext;->for:Lcom/biquge/ebook/app/app/AppContext$if;

    if-eqz v2, :cond_8

    .line 27
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28
    iput-object v1, v0, Lcom/biquge/ebook/app/app/AppContext;->for:Lcom/biquge/ebook/app/app/AppContext$if;

    .line 29
    :cond_8
    invoke-static {}, Lcom/apk/switch;->for()Lcom/apk/switch;

    move-result-object v0

    .line 30
    iget-object v2, v0, Lcom/apk/switch;->try:Lcom/apk/d60;

    if-eqz v2, :cond_9

    .line 31
    invoke-virtual {v2}, Lcom/apk/d60;->case()V

    .line 32
    iput-object v1, v0, Lcom/apk/switch;->try:Lcom/apk/d60;

    .line 33
    :cond_9
    iget-object v2, v0, Lcom/apk/switch;->else:Lcom/swl/gg/ggs/SwlAdAdInsert;

    if-eqz v2, :cond_a

    .line 34
    invoke-virtual {v2}, Lcom/swl/gg/ggs/SwlAdAdInsert;->onDestroy()V

    .line 35
    iput-object v1, v0, Lcom/apk/switch;->else:Lcom/swl/gg/ggs/SwlAdAdInsert;

    .line 36
    :cond_a
    iget-object v0, p0, Lcom/apk/h6;->for:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 37
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iput-object v1, p0, Lcom/apk/h6;->for:Ljava/util/List;

    .line 39
    :cond_b
    iget-object v0, p0, Lcom/apk/h6;->new:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 40
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iput-object v1, p0, Lcom/apk/h6;->new:Ljava/util/List;

    .line 42
    :cond_c
    iget-object v0, p0, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    if-eqz v0, :cond_d

    .line 43
    iput-object v1, p0, Lcom/apk/h6;->try:Lcom/biquge/ebook/app/bean/User;

    :cond_d
    return-void

    .line 44
    :cond_e
    throw v1
.end method
