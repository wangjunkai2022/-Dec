.class public Lcom/apk/i7;
.super Lcom/apk/c1;
.source "BookGroupDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/LinkedList;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/util/LinkedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/i7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iput-object p2, p0, Lcom/apk/i7;->do:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/apk/i7;->do:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 2
    :try_start_0
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/apk/n2;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/CollectBook;->setStickTime(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/CollectBook;->setSaveTime(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/apk/i7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 9
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 10
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    iget-object v2, p0, Lcom/apk/i7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 12
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 13
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/apk/n2;->new(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v4, p0, Lcom/apk/i7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 17
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :goto_1
    const-string v6, ""

    const/4 v7, 0x1

    if-ge v5, v4, :cond_4

    .line 19
    :try_start_1
    iget-object v8, p0, Lcom/apk/i7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 20
    iget-object v8, v8, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 21
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 22
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->getItemType()I

    move-result v9

    if-ne v9, v7, :cond_2

    goto :goto_2

    .line 23
    :cond_2
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 24
    invoke-virtual {v1, v6}, Lcom/biquge/ebook/app/bean/CollectBook;->setStickTime(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/CollectBook;->setSaveTime(Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lcom/apk/i7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 27
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 28
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 29
    iget-object v3, p0, Lcom/apk/i7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 30
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 31
    invoke-interface {v3, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v3, :cond_0

    .line 32
    invoke-virtual {v1, v6}, Lcom/biquge/ebook/app/bean/CollectBook;->setStickTime(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/CollectBook;->setSaveTime(Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/apk/i7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 35
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    iget-object v2, p0, Lcom/apk/i7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 38
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 39
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 41
    :cond_5
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/i7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
