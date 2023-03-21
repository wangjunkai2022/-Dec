.class public Lcom/apk/bb;
.super Lcom/apk/c1;
.source "BookShelfFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/bb;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iput p2, p0, Lcom/apk/bb;->do:I

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/bb;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    iget v1, p0, Lcom/apk/bb;->do:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 3
    :try_start_1
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupBooks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v3

    .line 9
    :goto_1
    invoke-static {v3, v1}, Lcom/apk/n2;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setStickTime(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/apk/bb;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    iget-object v1, p0, Lcom/apk/bb;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    iget v3, p0, Lcom/apk/bb;->do:I

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 12
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupBooks()Ljava/util/List;

    move-result-object v3

    .line 15
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 16
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/apk/n2;->new(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/apk/n2;->new(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_3
    iget-object v3, p0, Lcom/apk/bb;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v3, v3, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    iget-object v3, p0, Lcom/apk/bb;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v3, v3, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    :goto_3
    const-string v5, ""

    const/4 v6, 0x1

    if-ge v4, v3, :cond_6

    .line 20
    :try_start_2
    iget-object v7, p0, Lcom/apk/bb;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v7, v7, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 21
    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/CollectBook;->getItemType()I

    move-result v8

    if-ne v8, v6, :cond_4

    goto :goto_4

    .line 22
    :cond_4
    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 23
    invoke-virtual {v0, v5}, Lcom/biquge/ebook/app/bean/CollectBook;->setStickTime(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setSaveTime(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/apk/bb;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v2, v2, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    if-nez v2, :cond_7

    .line 26
    invoke-virtual {v0, v5}, Lcom/biquge/ebook/app/bean/CollectBook;->setStickTime(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setSaveTime(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/apk/bb;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :cond_7
    :goto_6
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/bb;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->this:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
