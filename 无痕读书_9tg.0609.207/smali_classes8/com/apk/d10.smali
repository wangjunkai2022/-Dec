.class public Lcom/apk/d10;
.super Lcom/apk/c1;
.source "ComicGroupDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iput-object p2, p0, Lcom/apk/d10;->if:Ljava/util/List;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apk/d10;->do:Ljava/util/Map;

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
    iget-object v4, p0, Lcom/apk/d10;->if:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 4
    iget-object v7, p0, Lcom/apk/d10;->if:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/manhua/data/bean/ComicCollectBean;

    .line 5
    invoke-virtual {v7}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual {v7}, Lcom/manhua/data/bean/ComicCollectBean;->getItemType()I

    move-result v9

    if-ne v9, v2, :cond_0

    .line 7
    iget-object v9, p0, Lcom/apk/d10;->do:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v6, v4, [Ljava/lang/String;

    :goto_2
    if-ge v5, v4, :cond_2

    .line 11
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {v6}, Lcom/apk/mu;->t([Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 14
    iget-object v3, p0, Lcom/apk/d10;->if:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/manhua/data/bean/ComicCollectBean;

    .line 15
    iget-object v5, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 16
    iget-object v5, v5, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    .line 17
    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 18
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0xfa

    cmp-long v5, v3, v0

    if-gez v5, :cond_5

    sub-long/2addr v0, v3

    .line 19
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 21
    :cond_5
    :goto_5
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
    iget-object v0, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 5
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 7
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 8
    iget-object v1, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 9
    iget-object v1, v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    .line 10
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 12
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->s(ZI)V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 17
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 19
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/apk/yg;->do(II)V

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 22
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 24
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 25
    iget-object v0, v0, Lcom/manhua/adapter/ComicGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->hideBaseLoading()V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f100197

    goto :goto_0

    :cond_4
    const p1, 0x7f100194

    .line 29
    :goto_0
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/d10;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->showBaseLoading()V

    return-void
.end method
