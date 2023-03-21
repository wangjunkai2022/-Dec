.class public Lcom/apk/l3;
.super Lcom/apk/c1;
.source "ComicShelfPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/manhua/data/bean/ComicCollectBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/apk/p3;


# direct methods
.method public constructor <init>(Lcom/apk/p3;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/l3;->if:Lcom/apk/p3;

    iput-boolean p2, p0, Lcom/apk/l3;->do:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 26

    move-object/from16 v1, p0

    .line 1
    iget-boolean v2, v1, Lcom/apk/l3;->do:Z

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    const-string v3, "isNew"

    const-string v4, "lastCapterName"

    const-string v5, "lastCapterId"

    const-string v6, "lastUpdateTime"

    const-string v7, "icon"

    const-string v8, ""

    const-string v9, "name"

    const-string v10, "collectId = ?"

    const-string v11, "loginName"

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_9

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

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
    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->try()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/Bookshelf.aspx"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 8
    invoke-static {v14, v0}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v14, "data"

    .line 9
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 10
    invoke-static {v0}, Lcom/apk/ze;->k0(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 12
    invoke-static {}, Lcom/apk/ze;->C()Z

    move-result v14

    if-nez v14, :cond_1

    .line 13
    invoke-static {v13}, Lcom/apk/ze;->Z(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    if-eqz v2, :cond_4

    .line 14
    :try_start_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/manhua/data/bean/ComicBean;

    new-array v13, v12, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v10, v13, v16

    .line 16
    invoke-virtual {v15}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v13, v17

    invoke-static {v13}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v13

    const-class v12, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v13, v12}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v12, :cond_2

    .line 17
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-class v13, Lcom/manhua/data/bean/ComicCollectBean;

    move-object/from16 v19, v0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    invoke-virtual {v15}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x1

    aput-object v1, v0, v15

    invoke-static {v13, v12, v0}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object/from16 v19, v0

    .line 20
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v15}, Lcom/manhua/data/bean/ComicBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x1

    .line 22
    invoke-static {v15, v12, v0, v1, v8}, Lcom/apk/ze;->if(Lcom/manhua/data/bean/ComicBean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v0

    .line 23
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v0, v19

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_0

    .line 24
    :cond_3
    invoke-static {v14}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 25
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_3

    .line 26
    :cond_4
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/manhua/data/bean/ComicBean;

    .line 27
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_3

    :cond_5
    const/4 v12, 0x2

    new-array v0, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v0, v12

    .line 28
    invoke-virtual/range {v19 .. v19}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v0, v13

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v12, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v12}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_8

    .line 29
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 30
    invoke-virtual/range {v19 .. v19}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {v19 .. v19}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {v19 .. v19}, Lcom/manhua/data/bean/ComicBean;->getUpdateTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getAddTime()J

    move-result-wide v13

    const-wide/16 v20, 0x0

    cmp-long v15, v13, v20

    if-nez v15, :cond_6

    const-string v13, "addTime"

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 36
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getLastCapterId()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual/range {v19 .. v19}, Lcom/manhua/data/bean/ComicBean;->getLastChapterId()Ljava/lang/String;

    move-result-object v13

    .line 38
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 39
    invoke-virtual/range {v19 .. v19}, Lcom/manhua/data/bean/ComicBean;->getLastChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual/range {v19 .. v19}, Lcom/manhua/data/bean/ComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 42
    :cond_7
    const-class v0, Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v10, v14, v13

    invoke-virtual/range {v19 .. v19}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v14, v15

    invoke-static {v0, v12, v14}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    .line 43
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 44
    :cond_8
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v21

    const-string v20, ""

    const-string v22, ""

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lcom/apk/mu;->v(Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    .line 45
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_3
    if-nez v2, :cond_11

    .line 47
    invoke-static {}, Lcom/apk/mu;->interface()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-string v1, "loginName = ?"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_9

    .line 49
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/manhua/data/bean/ComicCollectBean;

    .line 50
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getFileType()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/manhua/data/bean/ComicCollectBean;->isLocalBook(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    .line 51
    :cond_b
    :try_start_7
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/apk/z2;->super(Ljava/lang/String;Z)Lcom/manhua/data/bean/ComicBean;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 52
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 53
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 54
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_c
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 56
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_d
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 58
    :try_start_8
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getLastCapterId()Ljava/lang/String;

    move-result-object v12

    .line 59
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getLastChapterId()Ljava/lang/String;

    move-result-object v13

    .line 60
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 61
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getLastChapterId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 64
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getLastTime()Ljava/lang/String;

    move-result-object v12

    .line 65
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 66
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getUpdateTime()Ljava/lang/String;

    move-result-object v12

    .line 67
    :cond_e
    invoke-virtual {v8, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_f
    const-class v12, Lcom/manhua/data/bean/ComicCollectBean;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    const/4 v13, 0x2

    :try_start_9
    new-array v14, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    const/4 v15, 0x1

    :try_start_a
    aput-object v0, v14, v15

    invoke-static {v12, v8, v14}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_5
    const/4 v15, 0x1

    goto :goto_6

    :catch_6
    move-exception v0

    const/4 v13, 0x2

    goto :goto_5

    .line 69
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_7

    :cond_10
    const/4 v13, 0x2

    const/4 v15, 0x1

    goto :goto_8

    :catch_8
    move-exception v0

    const/4 v13, 0x2

    const/4 v15, 0x1

    .line 70
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :goto_8
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/mu;->if(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    :goto_9
    const/4 v1, 0x0

    .line 72
    invoke-static {v1}, Lcom/apk/p0;->native(Z)V

    .line 73
    invoke-static {}, Lcom/apk/p3;->for()Ljava/util/List;

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
    iget-object v0, p0, Lcom/apk/l3;->if:Lcom/apk/p3;

    .line 4
    iget-object v0, v0, Lcom/apk/p3;->for:Lcom/apk/s5;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/s5;->if(Ljava/util/List;)V

    :cond_0
    return-void
.end method
