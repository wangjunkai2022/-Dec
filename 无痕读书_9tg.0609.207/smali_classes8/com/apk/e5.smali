.class public Lcom/apk/e5;
.super Lcom/apk/c1;
.source "UserPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Lcom/apk/g5;ZZ)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/apk/e5;->do:Z

    iput-boolean p3, p0, Lcom/apk/e5;->if:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->const()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Logout.aspx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 3
    iget-boolean v0, p0, Lcom/apk/e5;->do:Z

    const-string v2, ""

    const-string v3, "loginName"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-class v6, Lcom/biquge/ebook/app/bean/CollectBook;

    const-string v7, "fileType != ?"

    const-string v8, "1"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lcom/apk/n2;->implements()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 10
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/apk/da;->throws(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/apk/da;->default(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    const-class v5, Lcom/biquge/ebook/app/bean/BookMark;

    new-array v6, v4, [Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 13
    const-class v5, Lcom/biquge/ebook/app/bean/CollectBook;

    new-array v6, v4, [Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 14
    const-class v5, Lcom/biquge/ebook/app/bean/ChapterBean;

    new-array v6, v4, [Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apk/a6;->if()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/apk/ze;->native(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 16
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 17
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-class v2, Lcom/manhua/data/bean/ComicCollectBean;

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_3

    .line 20
    :cond_3
    invoke-static {}, Lcom/apk/mu;->implements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicCollectBean;

    .line 23
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CATELOG_GET_COMIC_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_4
    const-class v0, Lcom/manhua/data/bean/ComicCollectBean;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 27
    const-class v0, Lcom/manhua/data/bean/ComicChapterBean;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :cond_5
    :goto_3
    :try_start_2
    invoke-static {v4}, Lcom/apk/p0;->native(Z)V

    .line 30
    const-class v0, Lcom/biquge/ebook/app/bean/User;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 31
    const-class v0, Lcom/biquge/ebook/app/bean/TaskInfo;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 32
    const-class v0, Lcom/biquge/ebook/app/bean/CreateBookList;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 33
    const-class v0, Lcom/biquge/ebook/app/bean/BookElement;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 34
    const-class v0, Lcom/biquge/ebook/app/bean/DownloadBean;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 35
    const-class v0, Lcom/biquge/ebook/app/bean/CacheFailedBean;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 36
    const-class v0, Lcom/manhua/data/bean/CreateComicList;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 37
    const-class v0, Lcom/manhua/data/bean/ComicElement;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 38
    const-class v0, Lcom/manhua/data/bean/ComicDownloadBean;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 39
    const-class v0, Lcom/manhua/data/bean/ComicCacheFailedBean;

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/o0;->while()V

    .line 41
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/apk/o0;->if:Lcom/apk/gg;

    if-eqz v0, :cond_6

    .line 43
    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    .line 44
    :cond_6
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/o0;->import()V

    .line 45
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    .line 46
    iget-object v0, v0, Lcom/apk/o0;->new:Lcom/apk/gg;

    if-eqz v0, :cond_7

    .line 47
    invoke-virtual {v0}, Lcom/apk/gg;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    const-string v0, "SP_LOGIN_COOKIE_VALUE"

    .line 49
    invoke-static {v0}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    .line 51
    iput-object v1, v0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v4

    const-string v1, "login_action"

    invoke-static {v1, v0}, Lcom/apk/mf;->if(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 54
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-boolean p1, p0, Lcom/apk/e5;->if:Z

    if-eqz p1, :cond_0

    const p1, 0x7f1001aa

    .line 3
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1001ab

    .line 5
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
