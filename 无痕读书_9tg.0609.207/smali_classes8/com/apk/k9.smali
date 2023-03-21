.class public Lcom/apk/k9;
.super Lcom/apk/c1;
.source "NewBookReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 10

    const-string v0, "SEND_IMPORT_MESSAGE_ACTION"

    .line 1
    iget-object v1, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-boolean v2, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throw:Z

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 4
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 5
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 7
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/apk/da;->final(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "1"

    .line 10
    invoke-static {v0, v2}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/apk/ze;->implements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    .line 13
    invoke-static {v0, v2}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    iget-object v2, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 15
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2, v1}, Lcom/apk/ze;->e0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3"

    .line 17
    invoke-static {v0, v1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 19
    :cond_0
    iget-object v0, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->class:Lcom/biquge/ebook/app/bean/Book;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getFirstChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 22
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->class:Lcom/biquge/ebook/app/bean/Book;

    .line 23
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/apk/n2;->throw(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v1

    if-nez v1, :cond_1

    .line 25
    invoke-static {v0, v2}, Lcom/apk/v3;->throw(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 26
    iget-object v1, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 27
    iput-object v0, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->class:Lcom/biquge/ebook/app/bean/Book;

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getReadChapterId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    invoke-static {v0, v2}, Lcom/apk/v3;->throw(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/Book;

    .line 30
    invoke-static {v0}, Lcom/apk/n2;->throw(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v1

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 32
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v0, :cond_4

    .line 34
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez v1, :cond_4

    .line 35
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 37
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/apk/nd;->class(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 40
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 41
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setReadChapterUrl(Ljava/lang/String;)V

    .line 43
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 44
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v1, :cond_7

    .line 45
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wap_"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    const/4 v3, 0x2

    const-string v4, "novelId = ? and oid = ?"

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v0, :cond_6

    .line 47
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 48
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 49
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getFirstChapterUrl()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 51
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 52
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 53
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 54
    iget-object v7, v7, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 55
    invoke-static {v0, v7}, Lcom/apk/qd;->else(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Ljava/util/List;

    goto :goto_1

    .line 56
    :cond_5
    iget-object v7, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 57
    iget-object v7, v7, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 58
    invoke-virtual {v7}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/apk/nd;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/String;

    aput-object v4, v8, v5

    .line 59
    iget-object v9, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 60
    iget-object v9, v9, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 61
    invoke-virtual {v9}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v7, v8, v3

    .line 62
    invoke-static {v8}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v7

    const-class v8, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 63
    invoke-virtual {v7, v8}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biquge/ebook/app/bean/ChapterBean;

    if-nez v7, :cond_6

    .line 64
    iget-object v7, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 65
    iget-object v7, v7, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 66
    invoke-virtual {v7}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 67
    iget-object v8, v8, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 68
    invoke-virtual {v8}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-static {v7, v8, v1, v0}, Lcom/apk/nd;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    .line 71
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 72
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 73
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getReadChapterUrl()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 75
    iget-object v7, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 76
    iget-object v8, v7, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 77
    invoke-virtual {v8}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/apk/nd;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 78
    iput-object v8, v7, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->final:Ljava/lang/String;

    .line 79
    iget-object v7, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 80
    iget-object v7, v7, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->final:Ljava/lang/String;

    .line 81
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v5

    .line 82
    iget-object v4, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 83
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 84
    invoke-virtual {v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    iget-object v2, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 85
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->final:Ljava/lang/String;

    aput-object v2, v6, v3

    .line 86
    invoke-static {v6}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v2

    const-class v3, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 87
    invoke-virtual {v2, v3}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/ChapterBean;

    if-nez v2, :cond_7

    .line 88
    iget-object v2, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 89
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 90
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 91
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 92
    invoke-virtual {v3}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v2, v3, v1, v0}, Lcom/apk/nd;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    .line 95
    :cond_7
    :goto_2
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 3
    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throw:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 7
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 8
    iput-boolean p1, v0, Lcom/apk/h2;->return:Z

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setImportFile(Z)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 12
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 14
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 16
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 17
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setWebSite(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 22
    :try_start_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/apk/ea;

    invoke-direct {v3, v0}, Lcom/apk/ea;-><init>(Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v2, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 25
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->class:Lcom/biquge/ebook/app/bean/Book;

    .line 26
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 27
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 28
    iput-object v3, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->goto:Lcom/biquge/ebook/app/bean/Book;

    .line 29
    iput-object v4, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->this:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 30
    iput-object v0, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->break:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 31
    :try_start_2
    iget-object v0, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBgRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 32
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->import()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    const v3, 0x7f1000db

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v5

    invoke-static {v3, p1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object p1, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarrageSendView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    const p1, 0x7f090106

    .line 37
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 38
    new-instance v0, Lcom/apk/q9;

    invoke-direct {v0, v2}, Lcom/apk/q9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/16 v0, 0x9

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v0, 0x5

    const-string v3, "baidu_tt_speed"

    .line 40
    invoke-static {v3, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 41
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->throw()V

    .line 42
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/da;->final(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 43
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->getBookId()Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SP_NOVEL_ZIP_DOWNLOAD_ID_KEY"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 46
    :cond_5
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/r9;

    invoke-direct {v0, v2}, Lcom/apk/r9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {p1, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 47
    :cond_6
    new-instance p1, Lcom/apk/hg;

    iget-object v0, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/apk/hg;-><init>(Landroid/app/Activity;)V

    iput-object p1, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->catch:Lcom/apk/hg;

    .line 48
    iget-object v0, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0, v2}, Lcom/apk/hg;->do(Landroid/widget/SeekBar;Lcom/apk/n1;)V

    .line 49
    iget-object p1, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->catch:Lcom/apk/hg;

    invoke-virtual {p1}, Lcom/apk/hg;->try()V

    .line 50
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->case()V

    .line 51
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->extends()V

    .line 52
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->finally()V

    .line 53
    iget-object p1, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/apk/s9;

    invoke-direct {v0, v2}, Lcom/apk/s9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 54
    new-instance p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$native;

    invoke-direct {p1, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$native;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;)V

    iput-object p1, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->new:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$native;

    .line 55
    iget-object v0, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBgRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string p1, "type = ?"

    const-string v0, "4"

    .line 56
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 58
    iget-object v0, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->new:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$native;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 59
    :cond_7
    iget-object p1, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->new:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$native;

    new-instance v0, Lcom/apk/m9;

    invoke-direct {v0, v2}, Lcom/apk/m9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 60
    iget-object p1, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 61
    iget-object v0, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->protected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 62
    iget-object p1, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    if-eqz p1, :cond_8

    .line 63
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result p1

    .line 64
    invoke-virtual {v2, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setBarrageSendViewVisible(Z)V

    goto :goto_3

    .line 65
    :cond_8
    throw v1

    .line 66
    :cond_9
    :goto_3
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->while()V

    return-void

    .line 67
    :cond_a
    throw v1
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 3
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v1

    .line 5
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throw:Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apk/k9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 7
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throw:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->goto()V

    :cond_1
    return-void
.end method
