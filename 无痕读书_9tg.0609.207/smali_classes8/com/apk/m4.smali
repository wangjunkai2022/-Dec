.class public Lcom/apk/m4;
.super Lcom/apk/c1;
.source "NovelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/LinkedList<",
        "Lcom/biquge/ebook/app/bean/BookElement;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/v3;


# direct methods
.method public constructor <init>(Lcom/apk/v3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/m4;->do:Lcom/apk/v3;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    const-string v1, "saveTime desc"

    .line 2
    invoke-static {v1}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    const-class v2, Lcom/biquge/ebook/app/bean/CreateBookList;

    invoke-virtual {v1, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/CreateBookList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    new-instance v3, Lcom/biquge/ebook/app/bean/BookElement;

    invoke-direct {v3}, Lcom/biquge/ebook/app/bean/BookElement;-><init>()V

    .line 5
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CreateBookList;->getBookListId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/BookElement;->setListId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CreateBookList;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/BookElement;->setTitle(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CreateBookList;->getIntro()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/BookElement;->setDescription(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CreateBookList;->getBooks()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CreateBookList;->getCover()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/BookElement;->setCover(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CreateBookList;->getBookCount()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/biquge/ebook/app/bean/BookElement;->setBookCount(I)V

    .line 11
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/LinkedList;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/m4;->do:Lcom/apk/v3;

    .line 4
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v0, :cond_0

    const-string v1, "my_draftBox"

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/apk/u5;->throw(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
