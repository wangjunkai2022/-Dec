.class public Lcom/manhua/ui/activity/ComicNewReleaseActivity$for;
.super Lcom/apk/r5;
.source "ComicNewReleaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicNewReleaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicNewReleaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$for;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public new(Ljava/util/List;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$for;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->j(Lcom/manhua/ui/activity/ComicNewReleaseActivity;Z)V

    .line 2
    iget-object p2, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$for;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    .line 3
    iget-object p2, p2, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->case:Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 5
    new-instance p2, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {p2}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p2, v0}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 8
    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$for;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    :goto_1
    iget-object v0, p2, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->new:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 13
    iget-object p1, p2, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->new:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method public throw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$for;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->j(Lcom/manhua/ui/activity/ComicNewReleaseActivity;Z)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$for;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->new:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    :cond_0
    return-void
.end method
