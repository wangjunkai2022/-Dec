.class public Lcom/manhua/ui/activity/CreateComicGroupActivity$do;
.super Lcom/apk/c1;
.source "CreateComicGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/CreateComicGroupActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/manhua/data/bean/ComicCollectBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/CreateComicGroupActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/CreateComicGroupActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$do;->do:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/apk/p3;->new(Z)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$do;->do:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    .line 3
    iget-object v1, v1, Lcom/manhua/ui/activity/CreateComicGroupActivity;->if:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicCollectBean;

    .line 6
    iget-object v4, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$do;->do:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    .line 7
    iget-object v4, v4, Lcom/manhua/ui/activity/CreateComicGroupActivity;->if:Ljava/lang/String;

    .line 8
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$do;->do:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    .line 11
    iget-object v1, v1, Lcom/manhua/ui/activity/CreateComicGroupActivity;->if:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_2

    .line 13
    new-instance v1, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicCollectBean;-><init>()V

    const-string v3, "CREATE_BOOKGROUP_TO_SHELF"

    .line 14
    invoke-virtual {v1, v3}, Lcom/manhua/data/bean/ComicCollectBean;->setGroupId(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicCollectBean;->setItemType(I)V

    const v3, 0x7f1001bc

    .line 16
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/manhua/data/bean/ComicCollectBean;->setGroupTitle(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 17
    move-object v4, v0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 18
    :cond_2
    new-instance v1, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicCollectBean;-><init>()V

    const-string v3, "CREATE_BOOKGROUP_CREATE"

    .line 19
    invoke-virtual {v1, v3}, Lcom/manhua/data/bean/ComicCollectBean;->setGroupId(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicCollectBean;->setItemType(I)V

    const v2, 0x7f1001b0

    .line 21
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicCollectBean;->setGroupTitle(Ljava/lang/String;)V

    .line 22
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$do;->do:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    .line 4
    iget-object v0, v0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->new:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method
