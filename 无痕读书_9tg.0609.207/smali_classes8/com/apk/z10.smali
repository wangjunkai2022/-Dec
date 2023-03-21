.class public Lcom/apk/z10;
.super Lcom/apk/c1;
.source "ComicShelfFragment.java"


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

.field public final synthetic if:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iput-object p2, p0, Lcom/apk/z10;->do:Ljava/util/List;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/apk/z10;->do:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 4
    iget-object v6, p0, Lcom/apk/z10;->do:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/manhua/data/bean/ComicCollectBean;

    .line 5
    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v5, v3, [Ljava/lang/String;

    :goto_1
    if-ge v4, v3, :cond_1

    .line 8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v5}, Lcom/apk/mu;->t([Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v2, 0x1

    .line 11
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0xfa

    cmp-long v5, v3, v0

    if-gez v5, :cond_3

    sub-long/2addr v0, v3

    .line 12
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 14
    :cond_3
    :goto_3
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

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/apk/z10;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCollectBean;

    .line 5
    iget-object v2, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 6
    iget-object v2, v2, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 9
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 11
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-static {v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->k(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    .line 14
    iget-object v0, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 15
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SET_SHELF_EDIT_FINISH"

    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 19
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 21
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/apk/yg;->do(II)V

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 24
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 26
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 27
    iget-object v0, v0, Lcom/manhua/adapter/ComicGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->hideBaseLoading()V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f100197

    goto :goto_1

    :cond_5
    const p1, 0x7f100194

    .line 31
    :goto_1
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/z10;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->showBaseLoading()V

    return-void
.end method
