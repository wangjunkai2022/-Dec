.class public Lcom/apk/n4;
.super Lcom/apk/c1;
.source "NovelShelfPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/CollectBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/apk/t4;


# direct methods
.method public constructor <init>(Lcom/apk/t4;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/n4;->if:Lcom/apk/t4;

    iput-object p2, p0, Lcom/apk/n4;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/n4;->do:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/apk/n2;->protected()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "groupId = ?"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/litepal/FluentQuery;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    const-class v2, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 4
    invoke-virtual {v4, v3}, Lcom/biquge/ebook/app/bean/CollectBook;->setIsGroup(I)V

    .line 5
    invoke-virtual {v4, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setGroupId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/n4;->if:Lcom/apk/t4;

    .line 4
    iget-object v0, v0, Lcom/apk/t4;->for:Lcom/apk/v5;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/v5;->for(Ljava/util/List;)V

    :cond_0
    return-void
.end method
