.class public Lcom/apk/p4;
.super Lcom/apk/c1;
.source "NovelShelfPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/CollectBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/apk/t4;


# direct methods
.method public constructor <init>(Lcom/apk/t4;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/p4;->if:Lcom/apk/t4;

    iput-boolean p2, p0, Lcom/apk/p4;->do:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lcom/apk/p4;->do:Z

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/v0;->const()Z

    move-result v2

    const-string v3, "lastUpdateTime"

    const-string v4, "isNew"

    const-string v5, "lastCapterName"

    const-string v6, "lastCapterId"

    const-string v7, "collectId = ?"

    const-string v8, "icon"

    const-string v9, "loginName"

    const-string v10, "name"

    const-string v11, ""

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_f

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v15, "SP_SYNC_CLOUD_SHELF_KEY"

    .line 4
    invoke-static {v15, v14}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v15

    .line 5
    invoke-static {v14}, Lcom/apk/p0;->native(Z)V

    if-eqz v15, :cond_0

    const-string v15, "cache"

    const-string v14, "no"

    .line 6
    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->new()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/Bookshelf.aspx"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 8
    invoke-static {v14, v2}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v14, "data"

    .line 9
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 10
    invoke-static {v2}, Lcom/apk/ze;->i0(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_e

    .line 12
    invoke-static {}, Lcom/apk/ze;->B()Z

    move-result v14

    if-nez v14, :cond_1

    .line 13
    invoke-static {v13}, Lcom/apk/ze;->Y(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_1
    if-eqz v0, :cond_5

    .line 14
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/biquge/ebook/app/bean/Book;

    if-eqz v15, :cond_3

    new-array v13, v12, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v7, v13, v16

    .line 16
    invoke-virtual {v15}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v13, v17

    invoke-static {v13}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v13

    const-class v12, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v13, v12}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v12, :cond_2

    .line 17
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-class v13, Lcom/biquge/ebook/app/bean/CollectBook;

    move-object/from16 v19, v14

    const/4 v1, 0x2

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v14, v1

    invoke-virtual {v15}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x1

    aput-object v1, v14, v15

    invoke-static {v13, v12, v14}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object/from16 v19, v14

    .line 20
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v15}, Lcom/biquge/ebook/app/bean/Book;->getFirstChapterId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    .line 22
    invoke-static {v15, v13, v1, v12, v11}, Lcom/apk/ze;->do(Lcom/biquge/ebook/app/bean/Book;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v14, v19

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v1, p0

    goto :goto_0

    .line 24
    :cond_4
    invoke-static {v0}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 25
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_3

    .line 26
    :cond_5
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/Book;

    .line 27
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/apk/n2;->throw(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 28
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 29
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v10, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v14

    invoke-virtual {v14}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getUpdateTime()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v12}, Lcom/biquge/ebook/app/bean/CollectBook;->getAddTime()J

    move-result-wide v14

    const-wide/16 v19, 0x0

    cmp-long v21, v14, v19

    if-nez v21, :cond_6

    const-string v14, "addTime"

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    :cond_6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getBookStatus()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "bookStatus"

    .line 36
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getBookStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 37
    :cond_7
    :try_start_4
    invoke-virtual {v12}, Lcom/biquge/ebook/app/bean/CollectBook;->getLastCapterId()Ljava/lang/String;

    move-result-object v12

    .line 38
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getLastChapterId()Ljava/lang/String;

    move-result-object v14

    .line 39
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 40
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getLastChapterId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getLastChapter()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    :cond_8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getMajorCharacters()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "MajorCharacters"

    .line 44
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getMajorCharacters()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_9
    const-class v12, Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v15, v14

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v15, v14

    invoke-static {v12, v13, v15}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    .line 46
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 47
    :cond_a
    invoke-static {v0}, Lcom/apk/n2;->y(Lcom/biquge/ebook/app/bean/Book;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    .line 48
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 49
    :cond_b
    :goto_3
    :try_start_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz v1, :cond_c

    .line 50
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getCloudList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getCloudList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 51
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getCloudList()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/apk/p0;->import(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_d
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getBookStatus()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/apk/w0;->private(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 54
    :catch_3
    :cond_e
    :try_start_8
    invoke-static {}, Lcom/apk/qd;->case()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :cond_f
    :goto_5
    invoke-static {}, Lcom/apk/n2;->protected()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-string v1, "loginName = ?"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_b

    .line 58
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 59
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    .line 60
    :cond_12
    :try_start_9
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 61
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 62
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v11

    .line 63
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getChapterUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getExternalUrl()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v0, v11, v12, v2}, Lcom/apk/qd;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 65
    :cond_13
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lcom/apk/v3;->throw(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 66
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 67
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 68
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_14
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 70
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_15
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 72
    :try_start_a
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getLastCapterId()Ljava/lang/String;

    move-result-object v12

    .line 73
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getLastChapterId()Ljava/lang/String;

    move-result-object v13

    .line 74
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_17

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    .line 75
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getLastChapterId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getLastChapter()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 78
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getLastTime()Ljava/lang/String;

    move-result-object v12

    .line 79
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 80
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getUpdateTime()Ljava/lang/String;

    move-result-object v12

    .line 81
    :cond_16
    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_17
    const-class v12, Lcom/biquge/ebook/app/bean/CollectBook;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    const/4 v13, 0x2

    :try_start_b
    new-array v14, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    const/4 v15, 0x1

    :try_start_c
    aput-object v0, v14, v15

    invoke-static {v12, v11, v14}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    :goto_7
    const/4 v15, 0x1

    goto :goto_8

    :catch_7
    move-exception v0

    const/4 v13, 0x2

    goto :goto_7

    .line 83
    :goto_8
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_18
    const/4 v13, 0x2

    const/4 v15, 0x1

    .line 84
    :goto_9
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 85
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->if(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_6

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    const/4 v13, 0x2

    const/4 v15, 0x1

    .line 86
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_19
    :goto_b
    const/4 v1, 0x0

    .line 87
    invoke-static {v1}, Lcom/apk/p0;->native(Z)V

    .line 88
    invoke-static {}, Lcom/apk/t4;->for()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/p4;->if:Lcom/apk/t4;

    .line 4
    iget-object v0, v0, Lcom/apk/t4;->for:Lcom/apk/v5;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/v5;->if(Ljava/util/List;)V

    :cond_0
    return-void
.end method
