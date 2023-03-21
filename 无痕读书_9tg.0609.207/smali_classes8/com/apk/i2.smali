.class public Lcom/apk/i2;
.super Lcom/apk/c1;
.source "BookReadPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/apk/h2;


# direct methods
.method public constructor <init>(Lcom/apk/h2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/i2;->if:Lcom/apk/h2;

    iput-object p2, p0, Lcom/apk/i2;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/i2;->if:Lcom/apk/h2;

    iget-object v1, p0, Lcom/apk/i2;->do:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/finally;->extends()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/finally;->default()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/apk/h2;->public:Z

    .line 4
    invoke-virtual {v0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/n2;->throw(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/h2;->new:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v2, :cond_2

    .line 5
    iput-boolean v4, v0, Lcom/apk/h2;->static:Z

    .line 6
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x2

    if-nez v2, :cond_3

    .line 7
    iput-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    goto/16 :goto_3

    .line 8
    :cond_3
    iget-object v1, v0, Lcom/apk/h2;->new:Lcom/biquge/ebook/app/bean/CollectBook;

    const-string v2, ""

    const-string v6, "novelId = ? and oid = ?"

    const/4 v7, 0x3

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getReadChapterId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v0, Lcom/apk/h2;->new:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 12
    iget-object v1, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getFirstChapterUrl()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 15
    iget-object v8, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v8}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/apk/nd;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/String;

    aput-object v6, v7, v3

    .line 16
    iget-object v6, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 17
    invoke-virtual {v6}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v4

    iget-object v6, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    aput-object v6, v7, v5

    .line 18
    invoke-static {v7}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v6

    const-class v7, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 19
    invoke-virtual {v6, v7}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biquge/ebook/app/bean/ChapterBean;

    if-nez v6, :cond_4

    .line 20
    iget-object v6, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v6}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 21
    invoke-virtual {v7}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-static {v6, v7, v2, v1}, Lcom/apk/nd;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lorg/litepal/crud/LitePalSupport;->save()Z

    .line 24
    :cond_4
    iget-object v1, v0, Lcom/apk/h2;->new:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getReadPage()I

    move-result v1

    iput v1, v0, Lcom/apk/h2;->goto:I

    .line 25
    iget-object v1, v0, Lcom/apk/h2;->new:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->isNew()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26
    iget-object v1, v0, Lcom/apk/h2;->new:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v1

    .line 27
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "saveTime"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "isNew"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 30
    const-class v6, Lcom/biquge/ebook/app/bean/CollectBook;

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "collectId = ?"

    aput-object v8, v7, v3

    aput-object v1, v7, v4

    invoke-static {v6, v2, v7}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_3

    .line 31
    :cond_5
    invoke-virtual {v0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->getNovelFootprint(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ReadFootprint;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 32
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->getChapterId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 33
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ReadFootprint;->getReadPage()I

    move-result v1

    iput v1, v0, Lcom/apk/h2;->goto:I

    goto :goto_3

    .line 34
    :cond_6
    iget-object v1, v0, Lcom/apk/h2;->for:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v1, :cond_7

    .line 35
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    goto :goto_2

    .line 36
    :cond_7
    iget-object v1, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v1, :cond_8

    .line 37
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getFirstChapterUrl()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 39
    iget-object v8, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v8}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/apk/nd;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/String;

    aput-object v6, v7, v3

    .line 40
    iget-object v6, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 41
    invoke-virtual {v6}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v4

    iget-object v6, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    aput-object v6, v7, v5

    .line 42
    invoke-static {v7}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v6

    const-class v7, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 43
    invoke-virtual {v6, v7}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biquge/ebook/app/bean/ChapterBean;

    if-nez v6, :cond_8

    .line 44
    iget-object v6, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v6}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 45
    invoke-virtual {v7}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-static {v6, v7, v2, v1}, Lcom/apk/nd;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lorg/litepal/crud/LitePalSupport;->save()Z

    .line 48
    :cond_8
    :goto_2
    iput v3, v0, Lcom/apk/h2;->goto:I

    .line 49
    :cond_9
    :goto_3
    iget-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "novelId = ?"

    aput-object v2, v1, v3

    .line 50
    invoke-virtual {v0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    const-class v2, Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-virtual {v1, v2}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/ChapterBean;

    if-eqz v1, :cond_a

    .line 51
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 52
    :cond_a
    iget-object v1, v0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v1, Lcom/apk/l2;

    invoke-interface {v1, v4, v3}, Lcom/apk/l2;->do(ZZ)V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v2, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {v0, v2, v3}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result v6

    if-nez v6, :cond_c

    .line 57
    invoke-virtual {v0, v2, v3}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v2

    .line 58
    move-object v6, v2

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    const/4 v3, 0x1

    :cond_b
    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    .line 59
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 61
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_d
    if-lez v3, :cond_f

    .line 62
    iget v2, v0, Lcom/apk/h2;->goto:I

    if-lez v2, :cond_e

    add-int/lit8 v2, v2, -0x1

    .line 63
    :cond_e
    iget-object v3, v0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v3, :cond_f

    .line 64
    new-instance v4, Lcom/apk/c2;

    invoke-direct {v4, v0, v1, v2}, Lcom/apk/c2;-><init>(Lcom/apk/h2;Ljava/util/List;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_f
    invoke-virtual {v0}, Lcom/apk/h2;->w()V

    .line 66
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    .line 67
    throw v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/i2;->if:Lcom/apk/h2;

    .line 3
    iget-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/apk/h2;->else:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lcom/apk/h2;->finally:Lcom/apk/k1;

    .line 6
    invoke-virtual {p1, v1, v2, v0}, Lcom/apk/r0;->const(Ljava/lang/String;Ljava/lang/String;Lcom/apk/k1;)V

    return-void
.end method
