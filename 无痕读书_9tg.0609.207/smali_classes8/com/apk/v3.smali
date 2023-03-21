.class public Lcom/apk/v3;
.super Lcom/apk/p1;
.source "NovelPresenter.java"


# instance fields
.field public final for:Lcom/apk/u5;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/u5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/p1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/v3;->for:Lcom/apk/u5;

    return-void
.end method

.method public static break(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "my_release"

    .line 1
    :try_start_0
    const-class v1, Lcom/biquge/ebook/app/bean/CreateBookList;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "bookListId = ?"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v1, v3}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 2
    const-class p0, Lcom/biquge/ebook/app/bean/BookElement;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "ListId = ? and type = ?"

    aput-object v3, v1, v5

    aput-object p1, v1, v4

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 3
    new-instance p0, Lcom/biquge/ebook/app/bean/BookElement;

    invoke-direct {p0}, Lcom/biquge/ebook/app/bean/BookElement;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setListId(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setUserName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/biquge/ebook/app/bean/BookElement;->setForMan(Z)V

    .line 7
    invoke-virtual {p0, p3}, Lcom/biquge/ebook/app/bean/BookElement;->setCover(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p4}, Lcom/biquge/ebook/app/bean/BookElement;->setTitle(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p5}, Lcom/biquge/ebook/app/bean/BookElement;->setDescription(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p6}, Lcom/biquge/ebook/app/bean/BookElement;->setBookCount(I)V

    .line 11
    invoke-virtual {p0, p3}, Lcom/biquge/ebook/app/bean/BookElement;->setCommendImage(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/apk/kg;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setAddTime(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/apk/kg;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setUpdateTime(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/bean/BookElement;->setType(Ljava/lang/String;)V

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

.method public static case(Lcom/apk/v3;ZLjava/lang/String;Lcom/biquge/ebook/app/bean/BookInfoEntity;)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 1
    new-instance p0, Lcom/biquge/ebook/app/bean/BookElement;

    invoke-direct {p0}, Lcom/biquge/ebook/app/bean/BookElement;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Lcom/biquge/ebook/app/bean/BookElement;->setListId(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setUserName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->getCover()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setCover(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->isForMan()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setForMan(Z)V

    .line 6
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setTitle(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setDescription(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->getBookList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setBookCount(I)V

    .line 9
    invoke-static {}, Lcom/apk/kg;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setAddTime(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/apk/kg;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setUpdateTime(Ljava/lang/String;)V

    const-string p1, "my_collect"

    .line 11
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/BookElement;->setType(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public static catch(Lcom/apk/v3;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    if-eqz p0, :cond_6

    .line 1
    :try_start_0
    const-class v0, Lcom/biquge/ebook/app/bean/BookElement;

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

    check-cast v2, Lcom/biquge/ebook/app/bean/BookElement;

    .line 4
    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/BookElement;->setType(Ljava/lang/String;)V

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

    check-cast v3, Lcom/biquge/ebook/app/bean/BookElement;

    .line 8
    invoke-virtual {v3, v1}, Lcom/biquge/ebook/app/bean/BookElement;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p3}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object p0, p0, Lcom/apk/v3;->for:Lcom/apk/u5;

    invoke-virtual {p0, p2, p1}, Lcom/apk/u5;->throw(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 14
    iget-object p0, p0, Lcom/apk/v3;->for:Lcom/apk/u5;

    invoke-virtual {p0, p3, p1}, Lcom/apk/u5;->throw(Ljava/util/List;Ljava/lang/String;)V
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

.method public static class(Lcom/biquge/ebook/app/bean/Book;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getCloudList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getCloudList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getCloudList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apk/p0;->import(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getBookStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getBookStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apk/w0;->private(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->throw(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getFirstChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/Book;->getFirstChapterId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "firstChapterId"

    .line 9
    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class p0, Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "collectId = ?"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static default(Ljava/util/List;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/NewReadFont;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/NewReadFont;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2
    const-class v0, Lcom/biquge/ebook/app/bean/NewReadFont;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/NewReadFont;

    .line 5
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/NewReadFont;

    .line 7
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/NewReadFont;

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewReadFont;->getTotalSize()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/biquge/ebook/app/bean/NewReadFont;->setTotalSize(I)V

    .line 10
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewReadFont;->getCurrentSize()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/biquge/ebook/app/bean/NewReadFont;->setCurrentSize(I)V

    .line 11
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewReadFont;->isFinish()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/biquge/ebook/app/bean/NewReadFont;->setFinish(Z)V

    .line 12
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewReadFont;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biquge/ebook/app/bean/NewReadFont;->setLocalPath(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewReadFont;->isStartDownload()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/NewReadFont;->setStartDownload(Z)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 14
    const-class p1, Lcom/biquge/ebook/app/bean/NewReadFont;

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 15
    invoke-static {p0}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z

    .line 16
    :cond_3
    new-instance p1, Lcom/biquge/ebook/app/bean/NewReadFont;

    invoke-direct {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;-><init>()V

    const-string v0, "0"

    .line 17
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/NewReadFont;->setFid(Ljava/lang/String;)V

    const v2, 0x7f100118

    .line 18
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/biquge/ebook/app/bean/NewReadFont;->setFontname(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/NewReadFont;->setSort(Ljava/lang/String;)V

    const-string v0, ""

    .line 20
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/NewReadFont;->setSize(Ljava/lang/String;)V

    const-string v0, "default_font_url"

    .line 21
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/NewReadFont;->setUrl(Ljava/lang/String;)V

    .line 22
    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    return-object p0
.end method

.method public static else(Lcom/apk/v3;Ljava/lang/String;Ljava/lang/String;)V
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
    new-instance v7, Lcom/biquge/ebook/app/bean/CreateBookList;

    invoke-direct {v7}, Lcom/biquge/ebook/app/bean/CreateBookList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    :try_start_2
    invoke-virtual {v7, p2}, Lcom/biquge/ebook/app/bean/CreateBookList;->setBookListId(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v7, v4}, Lcom/biquge/ebook/app/bean/CreateBookList;->setTitle(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v7, v6}, Lcom/biquge/ebook/app/bean/CreateBookList;->setIntro(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v7, v5}, Lcom/biquge/ebook/app/bean/CreateBookList;->setForMen(Z)V

    .line 19
    invoke-virtual {v7, v2}, Lcom/biquge/ebook/app/bean/CreateBookList;->setCover(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v7, v3}, Lcom/biquge/ebook/app/bean/CreateBookList;->setCheck(Z)V

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/biquge/ebook/app/bean/CreateBookList;->setBooks(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/biquge/ebook/app/bean/CreateBookList;->setBookCount(I)V
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
    iget-object p0, p0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz p0, :cond_2

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/apk/u5;->break(ZLcom/biquge/ebook/app/bean/CreateBookList;)V

    :cond_2
    return-void

    .line 27
    :cond_3
    throw v0
.end method

.method public static for(Lcom/apk/v3;Ljava/lang/String;)V
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
    invoke-static {p1}, Lcom/apk/ze;->i0(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz p1, :cond_2

    .line 11
    iget-object p0, p0, Lcom/apk/v3;->for:Lcom/apk/u5;

    invoke-virtual {p0, v1, v0}, Lcom/apk/u5;->class(Lorg/json/JSONObject;Ljava/util/List;)V
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

.method public static goto(Ljava/lang/String;Lcom/biquge/ebook/app/bean/NovelDirBean;ZZ)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 2
    invoke-static {p1}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NovelDirBean;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListBean;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListBean;->getName()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-direct {v5}, Lcom/biquge/ebook/app/bean/ChapterBean;-><init>()V

    .line 7
    invoke-virtual {v5, p0}, Lcom/biquge/ebook/app/bean/ChapterBean;->setNovelId(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/biquge/ebook/app/bean/ChapterBean;->setOid(Ljava/lang/String;)V

    const-string v6, "ROLLNAME_LAYOUT_KEY"

    .line 9
    invoke-virtual {v5, v6}, Lcom/biquge/ebook/app/bean/ChapterBean;->setUrl(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->setName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->setRollName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5, v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->setPid(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5, v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->setNid(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v5, v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->setHasContent(Z)V

    .line 15
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListBean;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;

    if-eqz v5, :cond_1

    .line 18
    new-instance v6, Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-direct {v6}, Lcom/biquge/ebook/app/bean/ChapterBean;-><init>()V

    .line 19
    invoke-virtual {v6, p0}, Lcom/biquge/ebook/app/bean/ChapterBean;->setNovelId(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/biquge/ebook/app/bean/ChapterBean;->setOid(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/biquge/ebook/app/bean/ChapterBean;->setName(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;->getHasContent()I

    move-result v5

    if-ne v5, v2, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Lcom/biquge/ebook/app/bean/ChapterBean;->setHasContent(Z)V

    if-eqz p3, :cond_3

    .line 23
    invoke-static {v6}, Lcom/apk/g2;->while(Lcom/biquge/ebook/app/bean/ChapterBean;)Z

    move-result v5

    invoke-virtual {v6, v5}, Lcom/biquge/ebook/app/bean/ChapterBean;->setCache(Z)V

    .line 24
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_d

    .line 25
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 26
    invoke-static {p0}, Lcom/apk/v3;->import(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 27
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 29
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 30
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 31
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/ChapterBean;

    if-eqz v3, :cond_6

    .line 32
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getPid()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v1

    :goto_4
    invoke-virtual {p3, v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->setPid(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    .line 33
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_7
    move-object v4, v1

    :goto_5
    invoke-virtual {p3, v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->setNid(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/apk/n2;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_8

    .line 35
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result v4

    goto :goto_6

    :cond_8
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result v4

    :goto_6
    invoke-virtual {p3, v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->setHasContent(Z)V

    goto :goto_7

    .line 36
    :cond_9
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result v4

    invoke-virtual {p3, v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->setHasContent(Z)V

    :goto_7
    if-eqz v3, :cond_a

    .line 37
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getChangeSourceUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_a
    move-object v4, v1

    :goto_8
    invoke-virtual {p3, v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->setChangeSourceUrl(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    .line 38
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNeed_share()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_b
    move-object v3, v1

    :goto_9
    invoke-virtual {p3, v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->setNeed_share(Ljava/lang/String;)V

    goto :goto_3

    .line 39
    :cond_c
    invoke-static {p0, v0, v2}, Lcom/apk/g2;->static(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_a
    return-object v0
.end method

.method public static import(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
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

    const-class v0, Lcom/biquge/ebook/app/bean/ChapterBean;

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

.method public static new()V
    .locals 4

    const-string v0, "SP_HOST_INFO_DEX_XS_KEY"

    .line 1
    invoke-static {v0}, Lcom/apk/p0;->case(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/apk/p0;->public(Ljava/lang/String;I)V

    const-string v0, "NOVEL_CLOUD_CHANGE_XS_INFO_HOST_KEY"

    .line 2
    invoke-static {v0}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0, v1}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static this(Lcom/apk/v3;Ljava/lang/String;Lcom/biquge/ebook/app/bean/NovelDirBean;ZZ)V
    .locals 8

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v7, Lcom/apk/e4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/apk/e4;-><init>(Lcom/apk/v3;Ljava/lang/String;Lcom/biquge/ebook/app/bean/NovelDirBean;ZZ)V

    invoke-virtual {v0, v7}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static throw(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/Book;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/apk/w;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x2bf20

    :goto_0
    sget-object p1, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/v3$do;

    invoke-direct {v3, v0}, Lcom/apk/v3$do;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1, v2, p1, v3}, Lcom/apk/x4;->native(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/bean/Book;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Lcom/apk/v3;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/BookInfoEntity;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 2
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 3
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    new-instance p1, Lcom/biquge/ebook/app/bean/BookInfoEntity;

    invoke-direct {p1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v1, "UserName"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "Cover"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->setCover(Ljava/lang/String;)V

    const-string v1, "Title"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->setTitle(Ljava/lang/String;)V

    const-string v1, "ForMan"

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->setForMan(Z)V

    const-string v1, "Description"

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->setDescription(Ljava/lang/String;)V

    const-string v1, "AddTime"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->setAddTime(Ljava/lang/String;)V

    const-string v1, "UpdateTime"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "BookList"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 15
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 18
    invoke-static {v3}, Lcom/apk/n2;->m(Lorg/json/JSONObject;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 19
    :cond_1
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->setBookList(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 20
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    move-object v0, p1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :catch_2
    move-exception p0

    .line 21
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 22
    invoke-static {v0}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    :cond_3
    return-object v0

    .line 23
    :cond_4
    throw v0
.end method

.method public static while(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "bookid"

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "action"

    .line 2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bookname"

    .line 3
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "author"

    .line 4
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->new()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/BookAction.aspx"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0, v1}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "data"

    .line 7
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public const(ZLjava/lang/String;Lcom/biquge/ebook/app/bean/BookInfoEntity;I)V
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

    invoke-static {v1, v2}, Lcom/apk/goto;->break(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v8, Lcom/apk/v3$for;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move v5, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/apk/v3$for;-><init>(Lcom/apk/v3;Ljava/lang/String;ZLcom/biquge/ebook/app/bean/BookInfoEntity;I)V

    invoke-static {v1, v0, v8}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    return-void
.end method

.method public final extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "action"

    const-string v1, "uploadbooks"

    const-string v2, "Name"

    .line 1
    invoke-static {v0, v1, v2, p1}, Lcom/apk/goto;->public(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "Author"

    .line 2
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Txt"

    .line 3
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/apk/w;->default()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/apk/v3$try;

    invoke-direct {p3, p0}, Lcom/apk/v3$try;-><init>(Lcom/apk/v3;)V

    invoke-static {p2, p1, p3}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    return-void
.end method

.method public final(Ljava/lang/String;)V
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

    invoke-static {v0, v1}, Lcom/apk/goto;->break(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/apk/v3$if;

    invoke-direct {v1, p0}, Lcom/apk/v3$if;-><init>(Lcom/apk/v3;)V

    invoke-static {v0, p1, v1}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    return-void
.end method

.method public synthetic native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/apk/v3;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public public(ZLjava/lang/String;IZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 1
    iget-object p4, p0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz p4, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4, v1, v0, p3}, Lcom/apk/u5;->catch(Ljava/util/List;ZI)V

    .line 3
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/shudan/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "man"

    goto :goto_0

    :cond_1
    const-string p1, "lady"

    :goto_0
    const-string v2, "/all/"

    const-string v3, "/"

    invoke-static {v1, p1, v2, p2, v3}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ".html"

    invoke-static {v1, p4, p1}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    if-ne p3, p4, :cond_2

    const v0, 0x5265c00

    :cond_2
    int-to-long v0, v0

    .line 5
    sget-object p4, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v2, Lcom/apk/v3$break;

    const-string v3, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v2, p0, v3, p2, p3}, Lcom/apk/v3$break;-><init>(Lcom/apk/v3;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, v0, v1, p4, v2}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public return()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Categories/BookCategory.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x240c8400

    .line 2
    sget-object v3, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v4, Lcom/apk/v3$this;

    const-string v5, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v4, p0, v5}, Lcom/apk/v3$this;-><init>(Lcom/apk/v3;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public static(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/apk/w;->throw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v2, Lcom/apk/v3$new;

    invoke-direct {v2, p0, p1, p2}, Lcom/apk/v3$new;-><init>(Lcom/apk/v3;Ljava/lang/String;Z)V

    const-wide/32 p1, 0x2bf20

    invoke-static {v0, p1, p2, v1, v2}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public super(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "action"

    const-string v1, "addbookcommend"

    .line 1
    invoke-static {v0, v1}, Lcom/apk/goto;->native(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "/BookAction.aspx"

    const-string v2, "bookId"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v1}, Lcom/apk/goto;->break(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v1}, Lcom/apk/goto;->catch(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    new-instance p2, Lcom/apk/v3$else;

    invoke-direct {p2, p0}, Lcom/apk/v3$else;-><init>(Lcom/apk/v3;)V

    invoke-static {p1, v0, p2}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    return-void
.end method

.method public switch(Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{page}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const v0, 0x5265c00

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    .line 2
    sget-object v2, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/v3$goto;

    const-string v4, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v3, p0, v4, p2}, Lcom/apk/v3$goto;-><init>(Lcom/apk/v3;Ljava/lang/String;I)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public throws()V
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
    invoke-static {}, Lcom/apk/w;->default()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v7, Lcom/apk/v3$case;

    invoke-direct {v7, p0}, Lcom/apk/v3$case;-><init>(Lcom/apk/v3;)V

    const-wide/32 v4, 0x1b7740

    invoke-static/range {v2 .. v7}, Lcom/apk/x4;->throws(Ljava/lang/String;Ljava/util/Map;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method
