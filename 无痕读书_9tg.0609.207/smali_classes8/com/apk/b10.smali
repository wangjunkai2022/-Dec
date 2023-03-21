.class public Lcom/apk/b10;
.super Lcom/apk/c1;
.source "ComicGroupDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/b10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/b10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 2
    iget-object v1, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->do:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/apk/mu;->interface()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "groupId = ?"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lorg/litepal/FluentQuery;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v2

    const-class v3, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v2, v3}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/manhua/data/bean/ComicCollectBean;

    .line 6
    invoke-virtual {v5, v4}, Lcom/manhua/data/bean/ComicCollectBean;->setIsGroup(I)V

    .line 7
    invoke-virtual {v5, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setGroupId(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iput-object v2, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    .line 9
    :cond_1
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/b10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 3
    iget-object v0, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/apk/b10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 7
    iget-object v0, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 8
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    .line 9
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lcom/apk/b10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 11
    iget-boolean v0, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->if:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->s(ZI)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/apk/b10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 14
    iget-object v0, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 16
    iget-object v0, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    .line 17
    iget-object v0, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 18
    iget-object v0, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/apk/b10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->if:Z

    return-void
.end method
