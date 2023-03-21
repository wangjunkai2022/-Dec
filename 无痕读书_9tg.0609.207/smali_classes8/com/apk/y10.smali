.class public Lcom/apk/y10;
.super Lcom/apk/c1;
.source "ComicShelfFragment.java"


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

.field public final synthetic if:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/y10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iput p2, p0, Lcom/apk/y10;->do:I

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/y10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 3
    iget v1, p0, Lcom/apk/y10;->do:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_7

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getStickTime()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupBooks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v3

    .line 10
    :goto_0
    invoke-static {v3, v1}, Lcom/apk/mu;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setStickTime(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/apk/y10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 13
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 14
    iget-object v1, p0, Lcom/apk/y10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 15
    iget-object v1, v1, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 16
    iget v3, p0, Lcom/apk/y10;->do:I

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 17
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupBooks()Ljava/util/List;

    move-result-object v3

    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/manhua/data/bean/ComicCollectBean;

    .line 21
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/apk/mu;->try(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/apk/mu;->try(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_3
    iget-object v3, p0, Lcom/apk/y10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 24
    iget-object v3, v3, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 25
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 26
    iget-object v3, p0, Lcom/apk/y10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 27
    iget-object v3, v3, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_2
    const-string v5, ""

    const/4 v6, 0x1

    if-ge v4, v3, :cond_6

    .line 29
    :try_start_1
    iget-object v7, p0, Lcom/apk/y10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 30
    iget-object v7, v7, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 31
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/manhua/data/bean/ComicCollectBean;

    .line 32
    invoke-virtual {v7}, Lcom/manhua/data/bean/ComicCollectBean;->getItemType()I

    move-result v8

    if-ne v8, v6, :cond_4

    goto :goto_3

    .line 33
    :cond_4
    invoke-virtual {v7}, Lcom/manhua/data/bean/ComicCollectBean;->getStickTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 34
    invoke-virtual {v0, v5}, Lcom/manhua/data/bean/ComicCollectBean;->setStickTime(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setSaveTime(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/apk/y10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 37
    iget-object v2, v2, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 38
    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    if-nez v2, :cond_7

    .line 39
    invoke-virtual {v0, v5}, Lcom/manhua/data/bean/ComicCollectBean;->setStickTime(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setSaveTime(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/apk/y10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 42
    iget-object v1, v1, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :cond_7
    :goto_5
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/y10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
