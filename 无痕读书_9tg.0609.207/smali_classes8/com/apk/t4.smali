.class public Lcom/apk/t4;
.super Lcom/apk/p1;
.source "NovelShelfPresenter.java"


# instance fields
.field public final for:Lcom/apk/v5;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/v5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/p1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/t4;->for:Lcom/apk/v5;

    return-void
.end method

.method public static for()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/apk/t4;->new(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static new(Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcom/apk/n2;->implements()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 5
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupId()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 7
    invoke-virtual {v3, v5}, Lcom/biquge/ebook/app/bean/CollectBook;->setIsGroup(I)V

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 10
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 15
    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/CollectBook;->setItemType(I)V

    .line 16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez p0, :cond_0

    .line 17
    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/CollectBook;->setIsGroup(I)V

    const/4 v4, 0x2

    .line 18
    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/CollectBook;->setItemType(I)V

    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 21
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 24
    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/CollectBook;->setGroupBooks(Ljava/util/List;)V

    const v6, 0x7f10013c

    new-array v7, v5, [Ljava/lang/Object;

    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biquge/ebook/app/bean/CollectBook;->setGroupBookCount(Ljava/lang/String;)V

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 27
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    goto :goto_4

    .line 28
    :cond_5
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 29
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v8, "localtion://"

    .line 30
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v8, "websearch://"

    .line 32
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_7
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->getIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 34
    :cond_8
    :goto_4
    invoke-virtual {v2, v6}, Lcom/biquge/ebook/app/bean/CollectBook;->setGroupIcons(Ljava/util/List;)V

    goto :goto_5

    .line 35
    :cond_9
    invoke-virtual {v2, v4}, Lcom/biquge/ebook/app/bean/CollectBook;->setIsGroup(I)V

    .line 36
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 37
    invoke-static {v6, v7, v7, v5}, Lcom/apk/n2;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_5
    const/4 v6, 0x0

    if-eqz v3, :cond_c

    .line 38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    :cond_a
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 39
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->isNew()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v7, 0x1

    .line 40
    :cond_b
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 41
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    .line 42
    :cond_d
    invoke-virtual {v2, v7}, Lcom/biquge/ebook/app/bean/CollectBook;->setNew(Z)V

    .line 43
    invoke-virtual {v2, v6}, Lcom/biquge/ebook/app/bean/CollectBook;->setStickTime(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    return-object v1
.end method
