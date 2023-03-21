.class public Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;
.super Lcom/apk/g6;
.source "SameThHistoryTotalFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment$do;
    }
.end annotation


# instance fields
.field public do:Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment$do;

.field public if:Ljava/lang/String;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090494
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00c8

    return v0
.end method

.method public initData()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initData()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SOURCE_TYPE_KEY"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->if:Ljava/lang/String;

    .line 4
    :cond_0
    new-instance v0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment$do;

    invoke-direct {v0}, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment$do;-><init>()V

    iput-object v0, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->do:Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment$do;

    .line 5
    iget-object v1, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->if:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "type = ?"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object v0, v1, v3

    .line 7
    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-string v1, "readTime desc"

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/bean/SameTjHistory;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/SameTjHistory;

    .line 10
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/SameTjHistory;->getProtxt()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v5, 0x7f1002cd

    .line 12
    invoke-static {v5}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setProtxt(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v6, 0x7f1002ce

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v2

    .line 13
    invoke-static {v6, v7}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biquge/ebook/app/bean/SameTjHistory;->setProtxt(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->do:Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment$do;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->do:Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment$do;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    .line 2
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->do:Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment$do;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/SameTjHistory;

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->if:Ljava/lang/String;

    const-string p3, "movie"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    const-class p2, Lcom/expand/videoplayer/bean/VideoDetail;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/SameTjHistory;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/apk/ze;->throw(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/expand/videoplayer/bean/VideoDetail;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->if:Ljava/lang/String;

    invoke-static {}, Lcom/apk/eg;->final()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0, p1}, Lcom/apk/eg;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/expand/videoplayer/bean/VideoDetail;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->if:Ljava/lang/String;

    const-string p3, "tingshu"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    const-class p2, Lcom/expand/listen/bean/ListenDetail;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/SameTjHistory;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/apk/ze;->throw(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/expand/listen/bean/ListenDetail;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;->if:Ljava/lang/String;

    invoke-static {}, Lcom/apk/eg;->const()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0, p1}, Lcom/apk/eg;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/expand/listen/bean/ListenDetail;)V

    :cond_1
    :goto_0
    return-void
.end method
