.class public Lcom/apk/l7;
.super Lcom/apk/c1;
.source "BookGroupDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iput-object p2, p0, Lcom/apk/l7;->do:Ljava/util/List;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v5, p0, Lcom/apk/l7;->do:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    .line 5
    iget-object v8, p0, Lcom/apk/l7;->do:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 6
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->getItemType()I

    move-result v9

    if-eq v9, v2, :cond_1

    .line 9
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    .line 12
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {v7}, Lcom/apk/n2;->s([Ljava/lang/String;)Z

    move-result v2

    .line 14
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    :goto_3
    if-ge v6, v4, :cond_5

    .line 16
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 17
    :cond_5
    invoke-static {v5}, Lcom/apk/n2;->class([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 19
    iget-object v3, p0, Lcom/apk/l7;->do:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 20
    iget-object v5, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 21
    iget-object v5, v5, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 22
    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 23
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0xfa

    cmp-long v5, v3, v0

    if-gez v5, :cond_8

    sub-long/2addr v0, v3

    .line 24
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 26
    :cond_8
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 7
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 10
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 12
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 15
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->catch:Lcom/apk/v5;

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/apk/v5;->new(ZI)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 18
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 20
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/apk/yg;->do(II)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 23
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    .line 24
    iget-object v0, v0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->hideBaseLoading()V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f100197

    goto :goto_0

    :cond_4
    const p1, 0x7f100194

    .line 28
    :goto_0
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/l7;->if:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->showBaseLoading()V

    return-void
.end method
