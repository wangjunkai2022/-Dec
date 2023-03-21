.class public Lcom/apk/z2;
.super Lcom/apk/p1;
.source "ComicPresenter.java"


# instance fields
.field public final for:Lcom/apk/r5;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/r5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/p1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/z2;->for:Lcom/apk/r5;

    return-void
.end method

.method public static break(Ljava/lang/String;)Lcom/manhua/data/bean/ComicInfoEntity;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    .line 3
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    new-instance v1, Lcom/manhua/data/bean/ComicInfoEntity;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicInfoEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v2, "UserName"

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "Cover"

    .line 7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicInfoEntity;->setCover(Ljava/lang/String;)V

    const-string v2, "Title"

    .line 8
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicInfoEntity;->setTitle(Ljava/lang/String;)V

    const-string v2, "ForMan"

    .line 9
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicInfoEntity;->setForMan(Z)V

    const-string v2, "Description"

    .line 10
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicInfoEntity;->setDescription(Ljava/lang/String;)V

    const-string v2, "AddTime"

    .line 11
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicInfoEntity;->setAddTime(Ljava/lang/String;)V

    const-string v2, "UpdateTime"

    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "BookList"

    .line 13
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 15
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 16
    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/ComicInfoEntity;->setBookCount(I)V

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 18
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 19
    invoke-static {v4}, Lcom/apk/mu;->s(Lorg/json/JSONObject;)Lcom/manhua/data/bean/ComicBean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicBean;

    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/ComicInfoEntity;->setBooks(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 24
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception p0

    .line 25
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-object v0
.end method

.method public static case(Lcom/apk/z2;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 3
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "BookList"

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "Books"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/apk/ze;->k0(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/apk/z2;->for:Lcom/apk/r5;

    if-eqz p1, :cond_2

    .line 11
    iget-object p0, p0, Lcom/apk/z2;->for:Lcom/apk/r5;

    invoke-virtual {p0, v1, v0}, Lcom/apk/r5;->catch(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    .line 13
    :cond_3
    throw v0
.end method

.method public static catch(Lcom/apk/z2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 3
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_1

    :try_start_1
    const-string v2, "UserName"

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "Cover"

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IsCheck"

    .line 6
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "IsRecycle"

    .line 7
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "Title"

    .line 8
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ForMan"

    .line 9
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "Description"

    .line 10
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AddTime"

    .line 11
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "UpdateTime"

    .line 12
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "BookList"

    .line 13
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 14
    new-instance v7, Lcom/manhua/data/bean/CreateComicList;

    invoke-direct {v7}, Lcom/manhua/data/bean/CreateComicList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    :try_start_2
    invoke-virtual {v7, p2}, Lcom/manhua/data/bean/CreateComicList;->setBookListId(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v7, v4}, Lcom/manhua/data/bean/CreateComicList;->setTitle(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v7, v6}, Lcom/manhua/data/bean/CreateComicList;->setIntro(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v7, v5}, Lcom/manhua/data/bean/CreateComicList;->setForMen(Z)V

    .line 19
    invoke-virtual {v7, v2}, Lcom/manhua/data/bean/CreateComicList;->setCover(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v7, v3}, Lcom/manhua/data/bean/CreateComicList;->setCheck(Z)V

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/manhua/data/bean/CreateComicList;->setBooks(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/manhua/data/bean/CreateComicList;->setBookCount(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v7

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception p1

    .line 23
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/apk/z2;->for:Lcom/apk/r5;

    if-eqz p0, :cond_2

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/apk/r5;->this(ZLcom/manhua/data/bean/CreateComicList;)V

    :cond_2
    return-void

    .line 27
    :cond_3
    throw v0
.end method

.method public static else(Ljava/lang/String;Lcom/biquge/ebook/app/bean/ComicDirBean;ZZ)Ljava/util/List;
    .locals 15

    move-object v1, p0

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ""

    if-eqz p1, :cond_9

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/biquge/ebook/app/bean/ComicDirBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/apk/z2;->throw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/manhua/data/bean/ComicChapterBean;

    .line 8
    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListBean;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListBean;->getName()Ljava/lang/String;

    move-result-object v6

    .line 11
    new-instance v7, Lcom/manhua/data/bean/ComicChapterBean;

    invoke-direct {v7}, Lcom/manhua/data/bean/ComicChapterBean;-><init>()V

    .line 12
    invoke-virtual {v7, p0}, Lcom/manhua/data/bean/ComicChapterBean;->setNovelId(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/manhua/data/bean/ComicChapterBean;->setOid(Ljava/lang/String;)V

    const-string v8, "ROLLNAME_LAYOUT_KEY"

    .line 14
    invoke-virtual {v7, v8}, Lcom/manhua/data/bean/ComicChapterBean;->setUrl(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v7, v6}, Lcom/manhua/data/bean/ComicChapterBean;->setName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v7, v6}, Lcom/manhua/data/bean/ComicChapterBean;->setRollName(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v7, v3}, Lcom/manhua/data/bean/ComicChapterBean;->setPid(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v7, v3}, Lcom/manhua/data/bean/ComicChapterBean;->setNid(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 19
    invoke-virtual {v7, v6}, Lcom/manhua/data/bean/ComicChapterBean;->setHasContent(Z)V

    .line 20
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/manhua/data/bean/ComicChapterBean;

    .line 24
    new-instance v9, Lcom/manhua/data/bean/ComicChapterBean;

    invoke-direct {v9}, Lcom/manhua/data/bean/ComicChapterBean;-><init>()V

    .line 25
    invoke-virtual {v9, p0}, Lcom/manhua/data/bean/ComicChapterBean;->setNovelId(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicChapterBean;->setOid(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/manhua/data/bean/ComicChapterBean;->setName(Ljava/lang/String;)V

    if-eqz v8, :cond_3

    .line 28
    invoke-virtual {v8}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Lcom/manhua/data/bean/ComicChapterBean;->setContent(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;->getHasContent()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v9, v0}, Lcom/manhua/data/bean/ComicChapterBean;->setHasContent(Z)V

    if-eqz p3, :cond_8

    .line 30
    :try_start_0
    invoke-virtual {v9}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 31
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v9}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ltz v10, :cond_7

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v11, v10, :cond_6

    .line 34
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/apk/u;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 35
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 36
    invoke-static {v13}, Lcom/apk/mu;->private(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v13, :cond_5

    add-int/lit8 v12, v12, 0x1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    if-ne v12, v10, :cond_7

    goto :goto_5

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    const/4 v8, 0x0

    .line 38
    :goto_5
    invoke-virtual {v9, v8}, Lcom/manhua/data/bean/ComicChapterBean;->setCache(Z)V

    .line 39
    :cond_8
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    if-eqz p2, :cond_11

    .line 40
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 41
    invoke-static {p0}, Lcom/apk/z2;->throw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 42
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/manhua/data/bean/ComicChapterBean;

    .line 44
    invoke-virtual {v5}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 45
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/manhua/data/bean/ComicChapterBean;

    .line 46
    invoke-virtual {v5}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/manhua/data/bean/ComicChapterBean;

    if-eqz v6, :cond_b

    .line 47
    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicChapterBean;->getPid()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_b
    move-object v7, v3

    :goto_8
    invoke-virtual {v5, v7}, Lcom/manhua/data/bean/ComicChapterBean;->setPid(Ljava/lang/String;)V

    if-eqz v6, :cond_c

    .line 48
    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_c
    move-object v7, v3

    :goto_9
    invoke-virtual {v5, v7}, Lcom/manhua/data/bean/ComicChapterBean;->setNid(Ljava/lang/String;)V

    if-eqz v6, :cond_d

    .line 49
    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result v7

    goto :goto_a

    :cond_d
    invoke-virtual {v5}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result v7

    :goto_a
    invoke-virtual {v5, v7}, Lcom/manhua/data/bean/ComicChapterBean;->setHasContent(Z)V

    if-eqz v6, :cond_e

    .line 50
    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicChapterBean;->getChangeSourceUrl()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_e
    move-object v7, v3

    :goto_b
    invoke-virtual {v5, v7}, Lcom/manhua/data/bean/ComicChapterBean;->setChangeSourceUrl(Ljava/lang/String;)V

    if-eqz v6, :cond_f

    .line 51
    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicChapterBean;->getNeed_share()Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :cond_f
    move-object v6, v3

    :goto_c
    invoke-virtual {v5, v6}, Lcom/manhua/data/bean/ComicChapterBean;->setNeed_share(Ljava/lang/String;)V

    goto :goto_7

    .line 52
    :cond_10
    invoke-static {p0, v2}, Lcom/apk/e00;->new(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_d
    return-object v2
.end method

.method public static final(Lorg/json/JSONArray;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCategory;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    new-instance p2, Lcom/manhua/data/bean/ComicCategory;

    invoke-direct {p2}, Lcom/manhua/data/bean/ComicCategory;-><init>()V

    const v1, 0x7f10026b

    .line 3
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/manhua/data/bean/ComicCategory;->setName(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p2, v1}, Lcom/manhua/data/bean/ComicCategory;->setItemType(I)V

    .line 5
    invoke-virtual {p2, p1}, Lcom/manhua/data/bean/ComicCategory;->setSex(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/apk/of;

    invoke-direct {p2}, Lcom/apk/of;-><init>()V

    .line 8
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 9
    invoke-static {p0, p2}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    .line 10
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCategory;

    .line 11
    invoke-virtual {v1, p1}, Lcom/manhua/data/bean/ComicCategory;->setSex(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 13
    invoke-static {p0}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 15
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_4
    return-object v0
.end method

.method public static for(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "my_release"

    .line 1
    :try_start_0
    const-class v1, Lcom/manhua/data/bean/CreateComicList;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "bookListId = ?"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v1, v3}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 2
    const-class p0, Lcom/manhua/data/bean/ComicElement;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "ListId = ? and type = ?"

    aput-object v3, v1, v5

    aput-object p1, v1, v4

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 3
    new-instance p0, Lcom/manhua/data/bean/ComicElement;

    invoke-direct {p0}, Lcom/manhua/data/bean/ComicElement;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setListId(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setUserName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/manhua/data/bean/ComicElement;->setForMan(Z)V

    .line 7
    invoke-virtual {p0, p3}, Lcom/manhua/data/bean/ComicElement;->setCover(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p4}, Lcom/manhua/data/bean/ComicElement;->setTitle(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p5}, Lcom/manhua/data/bean/ComicElement;->setDescription(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p6}, Lcom/manhua/data/bean/ComicElement;->setBookCount(I)V

    .line 11
    invoke-virtual {p0, p3}, Lcom/manhua/data/bean/ComicElement;->setCommendImage(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/apk/kg;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setAddTime(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/apk/kg;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setUpdateTime(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/manhua/data/bean/ComicElement;->setType(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static goto(Lcom/apk/z2;Ljava/lang/String;Lcom/biquge/ebook/app/bean/ComicDirBean;ZZ)V
    .locals 8

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v7, Lcom/apk/c3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/apk/c3;-><init>(Lcom/apk/z2;Ljava/lang/String;Lcom/biquge/ebook/app/bean/ComicDirBean;ZZ)V

    invoke-virtual {v0, v7}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static new(Lcom/apk/z2;ZLjava/lang/String;Lcom/manhua/data/bean/ComicInfoEntity;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    const-class p0, Lcom/manhua/data/bean/ComicElement;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ListId = ? and type = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "my_collect"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 2
    new-instance p0, Lcom/manhua/data/bean/ComicElement;

    invoke-direct {p0}, Lcom/manhua/data/bean/ComicElement;-><init>()V

    .line 3
    invoke-virtual {p0, p2}, Lcom/manhua/data/bean/ComicElement;->setListId(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setUserName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3}, Lcom/manhua/data/bean/ComicInfoEntity;->getCover()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setCover(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Lcom/manhua/data/bean/ComicInfoEntity;->isForMan()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setForMan(Z)V

    .line 7
    invoke-virtual {p3}, Lcom/manhua/data/bean/ComicInfoEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setTitle(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Lcom/manhua/data/bean/ComicInfoEntity;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setDescription(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3}, Lcom/manhua/data/bean/ComicInfoEntity;->getBookCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setBookCount(I)V

    .line 10
    invoke-static {}, Lcom/apk/kg;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setAddTime(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/apk/kg;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/manhua/data/bean/ComicElement;->setUpdateTime(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v2}, Lcom/manhua/data/bean/ComicElement;->setType(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public static super(Ljava/lang/String;Z)Lcom/manhua/data/bean/ComicBean;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/apk/w;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x2bf20

    :goto_0
    sget-object p1, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/z2$case;

    const-string v4, "SP_HOST_INFO_DEX_MH_KEY"

    invoke-direct {v3, v4, v0}, Lcom/apk/z2$case;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p0, v1, v2, p1, v3}, Lcom/apk/x4;->native(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/manhua/data/bean/ComicBean;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static this(Lcom/apk/z2;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    if-eqz p0, :cond_6

    .line 1
    :try_start_0
    const-class v0, Lcom/manhua/data/bean/ComicElement;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "my_release"

    if-eqz p2, :cond_1

    .line 2
    :try_start_1
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicElement;

    .line 4
    invoke-virtual {v2, v0}, Lcom/manhua/data/bean/ComicElement;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const-string v1, "my_collect"

    if-eqz p3, :cond_3

    .line 6
    :try_start_2
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicElement;

    .line 8
    invoke-virtual {v3, v1}, Lcom/manhua/data/bean/ComicElement;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p3}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/apk/z2;->for:Lcom/apk/r5;

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object p0, p0, Lcom/apk/z2;->for:Lcom/apk/r5;

    invoke-virtual {p0, p2, p1}, Lcom/apk/r5;->class(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 14
    iget-object p0, p0, Lcom/apk/z2;->for:Lcom/apk/r5;

    invoke-virtual {p0, p3, p1}, Lcom/apk/r5;->class(Ljava/util/List;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 p0, 0x0

    .line 16
    throw p0
.end method

.method public static throw(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicChapterBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "novelId = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, Lcom/manhua/data/bean/ComicChapterBean;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Lcom/apk/z2;Ljava/lang/String;ZZ)V
    .locals 5

    if-eqz p0, :cond_4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 4
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const-string v1, "2"

    const-string v2, "1"

    const-string v3, "lady"

    const-string v4, "man"

    if-eqz p2, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 6
    invoke-static {p2, v2, p3}, Lcom/apk/z2;->final(Lorg/json/JSONArray;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 8
    invoke-static {p1, v1, p3}, Lcom/apk/z2;->final(Lorg/json/JSONArray;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 10
    invoke-static {p1, v2, p2}, Lcom/apk/z2;->final(Lorg/json/JSONArray;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 12
    invoke-static {p1, v1, p2}, Lcom/apk/z2;->final(Lorg/json/JSONArray;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/apk/z2;->for:Lcom/apk/r5;

    if-eqz p0, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Lcom/apk/r5;->case(Ljava/util/List;)V

    :cond_3
    return-void

    :cond_4
    const/4 p0, 0x0

    .line 16
    throw p0
.end method


# virtual methods
.method public class(Ljava/lang/String;)V
    .locals 3

    const-string v0, "action"

    const-string v1, "addcommend"

    const-string v2, "listid"

    .line 1
    invoke-static {v0, v1, v2, p1}, Lcom/apk/goto;->public(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/UserListAction.aspx"

    invoke-static {v0, v1}, Lcom/apk/goto;->catch(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/apk/z2$do;

    invoke-direct {v1, p0}, Lcom/apk/z2$do;-><init>(Lcom/apk/z2;)V

    invoke-static {v0, p1, v1}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    return-void
.end method

.method public const(ZLjava/lang/String;Lcom/manhua/data/bean/ComicInfoEntity;I)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "addcollect"

    goto :goto_0

    :cond_0
    const-string v1, "removecollect"

    :goto_0
    const-string v2, "action"

    .line 2
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "listid"

    .line 3
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/UserListAction.aspx"

    invoke-static {v1, v2}, Lcom/apk/goto;->catch(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v8, Lcom/apk/z2$if;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/apk/z2$if;-><init>(Lcom/apk/z2;ZLjava/lang/String;Lcom/manhua/data/bean/ComicInfoEntity;I)V

    invoke-static {v1, v0, v8}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    return-void
.end method

.method public import(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/apk/w;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v2, Lcom/apk/z2$new;

    const-string v3, "SP_HOST_INFO_DEX_MH_KEY"

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/apk/z2$new;-><init>(Lcom/apk/z2;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/32 p1, 0x2bf20

    invoke-static {v0, p1, p2, v1, v2}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public native(ZLjava/lang/String;IZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 1
    iget-object p4, p0, Lcom/apk/z2;->for:Lcom/apk/r5;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4, v1, v0, p3}, Lcom/apk/r5;->break(Ljava/util/List;ZI)V

    .line 2
    :cond_0
    sget-object p4, Lcom/apk/q0;->this:[Ljava/lang/String;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    aget-object p1, p4, p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->catch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/shudan/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/all/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    const-string v3, ".html"

    invoke-static {v2, p1, p4, v3}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-ne p3, v1, :cond_1

    const v0, 0x5265c00

    :cond_1
    int-to-long v0, v0

    .line 4
    sget-object p4, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v2, Lcom/apk/z2$goto;

    const-string v3, "SP_HOST_SHUC_MH_KEY"

    invoke-direct {v2, p0, v3, p2, p3}, Lcom/apk/z2$goto;-><init>(Lcom/apk/z2;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, v0, v1, p4, v2}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public public(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const v0, 0x5265c00

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/apk/z2;->return(Ljava/lang/String;IJ)V

    return-void
.end method

.method public return(Ljava/lang/String;IJ)V
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{page}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v1, Lcom/apk/z2$else;

    const-string v2, "SP_HOST_SHUC_MH_KEY"

    invoke-direct {v1, p0, v2, p2}, Lcom/apk/z2$else;-><init>(Lcom/apk/z2;Ljava/lang/String;I)V

    invoke-static {p1, p3, p4, v0, v1}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public static()V
    .locals 8

    const-string v0, "action"

    const-string v1, "progress"

    .line 1
    invoke-static {v0, v1}, Lcom/apk/goto;->native(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 2
    invoke-static {}, Lcom/apk/eg;->super()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceno"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/UploadBook.aspx"

    invoke-static {v0, v1}, Lcom/apk/goto;->catch(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v6, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v7, Lcom/apk/z2$try;

    invoke-direct {v7, p0}, Lcom/apk/z2$try;-><init>(Lcom/apk/z2;)V

    const-wide/32 v4, 0x1b7740

    invoke-static/range {v2 .. v7}, Lcom/apk/x4;->throws(Ljava/lang/String;Ljava/util/Map;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public final while(ZZ)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->catch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Categories/BookCategory.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x240c8400

    .line 2
    sget-object v3, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v4, Lcom/apk/z2$for;

    const-string v5, "SP_HOST_SHUC_MH_KEY"

    invoke-direct {v4, p0, v5, p1, p2}, Lcom/apk/z2$for;-><init>(Lcom/apk/z2;Ljava/lang/String;ZZ)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method
