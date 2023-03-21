.class public Lcom/biquge/ebook/app/app/AppService$if;
.super Landroid/os/AsyncTask;
.source "AppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/app/AppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Lcom/biquge/ebook/app/bean/CollectBook;

.field public final for:Ljava/lang/String;

.field public final if:Ljava/lang/String;

.field public new:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/app/AppService$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/app/AppService$if;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    const-class p1, Lcom/biquge/ebook/app/bean/CacheFailedBean;

    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/n2;->throw(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getFirstChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/v3;->throw(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/Book;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    if-nez v0, :cond_1

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_b

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 9
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0, v2}, Lcom/apk/o0;->class(Lcom/biquge/ebook/app/bean/CollectBook;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "{\"flag\":false,\"every\":[100,200,0]}"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "CACHE_NOVEL_FZYD_BATCH_CONFIG_KEY"

    .line 11
    invoke-static {v0, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/w0;->return(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CACHE_NOVEL_WJ_BATCH_CONFIG_KEY"

    .line 14
    invoke-static {v0, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v0, "CACHE_NOVEL_LZ_BATCH_CONFIG_KEY"

    .line 16
    invoke-static {v0, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    xor-int/2addr v0, v3

    :goto_1
    const/4 v2, 0x0

    .line 18
    iget-object v4, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 19
    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    invoke-static {v2}, Lcom/apk/nd;->class(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {v4, v2}, Lcom/apk/qd;->else(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 22
    :cond_5
    iget-object v4, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {v4}, Lcom/apk/w;->throw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v8, Lcom/apk/d4;

    invoke-direct {v8, v5, v4}, Lcom/apk/d4;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-wide/32 v9, 0x2bf20

    invoke-static {v6, v9, v10, v7, v8}, Lcom/apk/x4;->native(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_12

    .line 25
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_12

    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 27
    iget-object v6, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v6, v5}, Lcom/biquge/ebook/app/bean/CollectBook;->setMax(I)V

    .line 28
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v6

    iget-object v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v6, v7}, Lcom/apk/o0;->class(Lcom/biquge/ebook/app/bean/CollectBook;)V

    const/4 v6, 0x2

    if-eqz v0, :cond_b

    new-array v0, v6, [Ljava/lang/String;

    const-string v7, "bookId = ?"

    aput-object v7, v0, v1

    .line 29
    iget-object v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    aput-object v7, v0, v3

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v7, Lcom/biquge/ebook/app/bean/BatchCacheBean;

    invoke-virtual {v0, v7}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/BatchCacheBean;

    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BatchCacheBean;->getBatchValue()Ljava/lang/String;

    move-result-object v0

    const-string v7, "-1"

    .line 31
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 32
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getReadChapterId()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v7, 0x0

    .line 34
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 35
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 36
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 37
    iget v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    if-le v7, v0, :cond_7

    .line 38
    iput v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 39
    :cond_7
    :goto_4
    iget v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    if-nez v0, :cond_b

    .line 40
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/n2;->final(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 42
    invoke-static {v0, v4}, Lcom/biquge/ebook/app/app/AppService;->do(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    goto :goto_5

    :cond_8
    const-string v7, "0"

    .line 43
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 44
    iput v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    goto :goto_5

    .line 45
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 46
    iget v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    if-nez v7, :cond_a

    .line 47
    iget-object v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    invoke-static {v7}, Lcom/apk/n2;->final(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 49
    invoke-static {v7, v4}, Lcom/biquge/ebook/app/app/AppService;->do(Ljava/lang/String;Ljava/util/List;)I

    move-result v7

    iput v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    .line 50
    :cond_a
    iget-object v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/CollectBook;->getReadChapterId()Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 52
    invoke-static {v7, v4}, Lcom/biquge/ebook/app/app/AppService;->do(Ljava/lang/String;Ljava/util/List;)I

    move-result v7

    .line 53
    iget v8, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    if-le v7, v8, :cond_c

    .line 54
    iput v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v0, 0x0

    .line 55
    :cond_c
    :goto_6
    iget v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    const/4 v8, 0x0

    :goto_7
    if-ge v7, v5, :cond_f

    .line 56
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 57
    iget-object v10, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    iget-object v11, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {v10, v11, v2, v9, v7}, Lcom/biquge/ebook/app/app/AppService;->if(Ljava/lang/String;Lcom/biquge/ebook/app/bean/CollectBook;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Lcom/biquge/ebook/app/bean/ChapterBean;I)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_8

    :cond_d
    add-int/2addr v8, v3

    if-lez v0, :cond_e

    add-int/lit8 v9, v5, -0x1

    if-eq v7, v9, :cond_e

    if-lt v8, v0, :cond_e

    .line 58
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0, v3}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 59
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v4, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/apk/o0;->break(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    :try_start_2
    new-array v0, v6, [Ljava/lang/String;

    const-string v4, "novelId = ?"

    aput-object v4, v0, v1

    .line 60
    iget-object v4, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/CacheFailedBean;

    .line 63
    new-instance v5, Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-direct {v5}, Lcom/biquge/ebook/app/bean/ChapterBean;-><init>()V

    .line 64
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/CacheFailedBean;->getNovelId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/biquge/ebook/app/bean/ChapterBean;->setNovelId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/CacheFailedBean;->getChapterId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/biquge/ebook/app/bean/ChapterBean;->setOid(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/CacheFailedBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/biquge/ebook/app/bean/ChapterBean;->setUrl(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v5, v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->setHasContent(Z)V

    .line 68
    iget-object v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    iget-object v8, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v9, -0x1

    invoke-static {v7, v8, v2, v5, v9}, Lcom/biquge/ebook/app/app/AppService;->if(Ljava/lang/String;Lcom/biquge/ebook/app/bean/CollectBook;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Lcom/biquge/ebook/app/bean/ChapterBean;I)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_a

    :cond_10
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "novelId = ? and chapterId = ?"

    aput-object v7, v5, v1

    .line 69
    iget-object v7, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    aput-object v7, v5, v3

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/CacheFailedBean;->getChapterId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {p1, v5}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    .line 70
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :cond_11
    :goto_a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_b

    :catch_1
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    :cond_12
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_b
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result p1

    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getProgress()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 5
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p1

    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p1, v2}, Lcom/apk/o0;->class(Lcom/biquge/ebook/app/bean/CollectBook;)V

    const p1, 0x7f100131

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lcom/biquge/ebook/app/app/AppService$if;->for:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result v2

    iget-object v3, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getProgress()I

    move-result v3

    .line 9
    invoke-static {p1, v2, v3, v0, v1}, Lcom/biquge/ebook/app/app/AppService;->catch(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 11
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p1, v0}, Lcom/apk/o0;->class(Lcom/biquge/ebook/app/bean/CollectBook;)V

    .line 12
    :goto_0
    sget-object p1, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    if-eqz p1, :cond_1

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/apk/o0;->case(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "collectId = ?"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    const-class v2, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1, v2}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/CollectBook;

    iput-object v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/CollectBook;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 8
    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$if;->if:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/CollectBook;->setCollectId(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$if;->for:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/CollectBook;->setName(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setMax(I)V

    .line 11
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setProgress(I)V

    .line 12
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setPercentage(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/app/AppService$if;->new:I

    .line 15
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$if;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0, v1}, Lcom/apk/o0;->class(Lcom/biquge/ebook/app/bean/CollectBook;)V

    return-void
.end method
