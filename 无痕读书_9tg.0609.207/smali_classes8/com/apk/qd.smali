.class public Lcom/apk/qd;
.super Lcom/apk/p1;
.source "WebPresenter.java"


# instance fields
.field public final for:Lcom/apk/md;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/md;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/p1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/qd;->for:Lcom/apk/md;

    return-void
.end method

.method public static case()V
    .locals 18

    const-string v1, "name"

    const-string v2, "null"

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/w;->extends()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/api/v1/User/GetBookCollect?userId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/v0;->goto()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 3
    sget-object v5, Lcom/apk/xw;->if:Lcom/apk/xw;

    invoke-static {v0, v3, v4, v5}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v3, "data"

    .line 4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v3, "items"

    .line 5
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_b

    .line 7
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v7, "bookId"

    .line 8
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "img"

    .line 10
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "author"

    .line 11
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "bookUrl"

    .line 12
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x0

    :cond_0
    const-string v12, "firstChaptherUrl"

    .line 14
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 15
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v12, 0x0

    :cond_1
    const-string v14, "externalUrl"

    .line 16
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 17
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v14, 0x0

    :cond_2
    const-string v15, "chapters"

    .line 18
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 20
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v13, "url"

    .line 22
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 23
    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_5

    .line 24
    :try_start_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "externalUrl = ?"

    const/16 v17, 0x0

    aput-object v5, v0, v17

    const/4 v5, 0x1

    aput-object v14, v0, v5

    .line 25
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v5, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0, v5}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 26
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 27
    :cond_5
    invoke-static {v7}, Lcom/apk/n2;->throw(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v16

    :goto_2
    if-eqz v16, :cond_7

    .line 28
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "wap_"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_3

    .line 29
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/biquge/ebook/app/bean/CollectBook;->getLastCapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 30
    invoke-static {v7}, Lcom/apk/nd;->class(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v13}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterUrl(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v15}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterName(Ljava/lang/String;)V

    .line 33
    invoke-static {v7, v0}, Lcom/apk/nd;->import(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    .line 34
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "lastCapterId"

    .line 35
    invoke-virtual {v0, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "lastCapterName"

    .line 36
    invoke-virtual {v0, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "isNew"

    .line 37
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    const-class v5, Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "collectId = ?"

    const/16 v17, 0x0

    aput-object v8, v7, v17

    invoke-virtual/range {v16 .. v16}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v0, v7}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const/16 v17, 0x0

    .line 39
    new-instance v0, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    .line 40
    invoke-virtual {v0, v7}, Lcom/biquge/ebook/app/bean/Book;->setId(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v8}, Lcom/biquge/ebook/app/bean/Book;->setName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v9}, Lcom/biquge/ebook/app/bean/Book;->setImg(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v10}, Lcom/biquge/ebook/app/bean/Book;->setAuthor(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 44
    invoke-virtual {v0, v5}, Lcom/biquge/ebook/app/bean/Book;->setWebSite(Z)V

    .line 45
    invoke-virtual {v0, v14}, Lcom/biquge/ebook/app/bean/Book;->setExternalUrl(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v11}, Lcom/biquge/ebook/app/bean/Book;->setChapterUrl(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v13}, Lcom/biquge/ebook/app/bean/Book;->setLastChapterId(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v15}, Lcom/biquge/ebook/app/bean/Book;->setLastChapter(Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Lcom/apk/n2;->y(Lcom/biquge/ebook/app/bean/Book;)V

    .line 50
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;-><init>()V

    .line 51
    invoke-virtual {v0, v8}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setTitle(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v7}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setNovelId(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v10}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setAuthor(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v9}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setImg(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v12}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setFirstChapterUrl(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v11}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setChapterUrl(Ljava/lang/String;)V

    .line 57
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 58
    invoke-virtual {v0, v15}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterName(Ljava/lang/String;)V

    .line 59
    :cond_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 60
    invoke-virtual {v0, v13}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterUrl(Ljava/lang/String;)V

    .line 61
    :cond_9
    invoke-static {v7, v0}, Lcom/apk/nd;->import(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_a
    :goto_3
    const/16 v17, 0x0

    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    return-void
.end method

.method public static catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/ld;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/apk/ld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/apk/qd;->new(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static else(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/apk/nd;->goto(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/apk/nd;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-static {v2, v3, v0, p1}, Lcom/apk/nd;->this(Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    .line 6
    invoke-static {v2, v1}, Lcom/apk/nd;->try(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v0

    .line 8
    invoke-static {p0}, Lcom/apk/nd;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-static {p0, v2, v0, p1}, Lcom/apk/nd;->this(Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    .line 11
    invoke-static {p0, v1}, Lcom/apk/nd;->try(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static for(Lcom/apk/qd;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 10

    if-eqz p0, :cond_0

    .line 1
    new-instance v8, Lcom/apk/b1;

    invoke-direct {v8}, Lcom/apk/b1;-><init>()V

    new-instance v9, Lcom/apk/pd;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/apk/pd;-><init>(Lcom/apk/qd;Ljava/lang/String;ZLjava/lang/String;ZZZ)V

    invoke-virtual {v8, v9}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static goto(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/apk/b6;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Lcom/apk/b6<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/apk/w;->finally(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SP_WEB_SEARCH_HOST_KEY"

    const-string v0, ""

    .line 3
    invoke-static {p3, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, "https://searchapi.apptianwangxing.com"

    :cond_1
    const-string v0, "/api/v1/Search/"

    const-string v1, "/0/"

    .line 5
    invoke-static {p1, p3, v0, p0, v1}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, ".html"

    invoke-static {p1, p2, p3}, Lcom/apk/goto;->this(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v1, 0x2bf20

    .line 7
    sget-object v3, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v4, Lcom/apk/rd;

    invoke-direct {v4, p0, p1, p2}, Lcom/apk/rd;-><init>(Ljava/lang/String;J)V

    const/4 v5, 0x0

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/apk/x4;->throw(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    const-string p2, "data"

    .line 9
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p2, "list"

    .line 10
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 11
    new-instance p3, Lcom/apk/b6;

    .line 12
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/apk/rf;

    invoke-direct {v0}, Lcom/apk/rf;-><init>()V

    .line 13
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 14
    invoke-static {p2, v0}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    :catch_0
    const-string p2, "hasnext"

    .line 15
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {p3, p1, p0}, Lcom/apk/b6;-><init>(Ljava/util/List;Z)V

    return-object p3

    :cond_2
    return-object p1
.end method

.method public static new(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "collectId = ?"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "UserId"

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/v0;->goto()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "externalUrl"

    .line 4
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p3, "BookId"

    .line 5
    invoke-virtual {v1, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string p3, "bookName"

    .line 6
    invoke-virtual {v1, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "bookUrl"

    .line 8
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/w;->extends()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/api/v1/User/SaveCollect"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1, v1}, Lcom/apk/x4;->switch(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "status"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 12
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p3, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    aput-object p0, p3, p2

    .line 13
    invoke-static {p3}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p3

    const-class v2, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p3, v2}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz p3, :cond_2

    .line 14
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "loginName"

    .line 15
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-class v2, Lcom/biquge/ebook/app/bean/CollectBook;

    new-array p1, p1, [Ljava/lang/String;

    aput-object v0, p1, v1

    aput-object p0, p1, p2

    invoke-static {v2, p3, p1}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/apk/qd;->new(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "UserId"

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/v0;->goto()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "externalUrl"

    .line 4
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "bookName"

    .line 5
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "BookId"

    .line 6
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/w;->extends()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/api/v1/User/DeleteCollect"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1, v1}, Lcom/apk/x4;->switch(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "status"

    .line 9
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_2

    :cond_1
    new-array p1, p2, [Ljava/lang/String;

    aput-object p0, p1, v0

    .line 10
    invoke-static {p1}, Lcom/apk/n2;->class([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v0
.end method


# virtual methods
.method public break(ILjava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/da;->final(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/qd$do;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/apk/qd$do;-><init>(Lcom/apk/qd;Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;I)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/qd$if;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/apk/qd$if;-><init>(Lcom/apk/qd;Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;I)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method
