.class public Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$for;
.super Lcom/apk/c1;
.source "BookDownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/CollectBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcom/apk/n2;->implements()Ljava/util/List;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/apk/o0;->if:Lcom/apk/gg;

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Lcom/apk/gg;

    invoke-direct {v3}, Lcom/apk/gg;-><init>()V

    iput-object v3, v0, Lcom/apk/o0;->if:Lcom/apk/gg;

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 7
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getExternalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v4, v0, Lcom/apk/o0;->if:Lcom/apk/gg;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    iget-object v4, v0, Lcom/apk/o0;->if:Lcom/apk/gg;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/CollectBook;

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 12
    :cond_4
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object v1

    :cond_6
    const/4 v0, 0x0

    .line 14
    throw v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->access$200(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
