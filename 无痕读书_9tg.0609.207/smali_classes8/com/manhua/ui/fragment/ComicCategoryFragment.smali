.class public Lcom/manhua/ui/fragment/ComicCategoryFragment;
.super Lcom/apk/g6;
.source "ComicCategoryFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public case:Lcom/manhua/adapter/ComicRankListAdapter;

.field public do:Ljava/lang/String;

.field public final else:Lcom/apk/r5;

.field public for:Z

.field public if:Ljava/lang/String;

.field public mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046d
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048c
    .end annotation
.end field

.field public new:I

.field public try:Lcom/apk/z2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->new:I

    .line 3
    new-instance v0, Lcom/manhua/ui/fragment/ComicCategoryFragment$new;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicCategoryFragment$new;-><init>(Lcom/manhua/ui/fragment/ComicCategoryFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->else:Lcom/apk/r5;

    return-void
.end method

.method public static a(Lcom/manhua/ui/fragment/ComicCategoryFragment;ZLjava/util/List;ZI)V
    .locals 3

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-nez p2, :cond_1

    .line 3
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    add-int/2addr p4, v2

    .line 5
    iput p4, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->new:I

    goto :goto_1

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_3
    if-lez v1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_4
    if-nez p2, :cond_5

    .line 8
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 9
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    add-int/2addr p4, v2

    .line 10
    iput p4, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->new:I

    goto :goto_1

    .line 11
    :cond_6
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_7
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/ui/fragment/ComicCategoryFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/manhua/ui/fragment/ComicCategoryFragment;

    invoke-direct {v0}, Lcom/manhua/ui/fragment/ComicCategoryFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "categoryId"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "type"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic synchronized(Lcom/manhua/ui/fragment/ComicCategoryFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/manhua/ui/fragment/ComicCategoryFragment;->h(Z)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0075

    return v0
.end method

.method public final h(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/manhua/ui/fragment/ComicCategoryFragment$for;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicCategoryFragment$for;-><init>(Lcom/manhua/ui/fragment/ComicCategoryFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public initData()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "categoryId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->do:Ljava/lang/String;

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->if:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/finally;->public()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    iput-boolean v2, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->for:Z

    .line 6
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/apk/finally;->h:Lorg/json/JSONObject;

    :cond_1
    move-object v5, v0

    .line 8
    new-instance v0, Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v6, "categorylist"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/manhua/adapter/ComicRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    .line 9
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    new-instance v1, Lcom/manhua/ui/fragment/ComicCategoryFragment$if;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicCategoryFragment$if;-><init>(Lcom/manhua/ui/fragment/ComicCategoryFragment;)V

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    new-instance v0, Lcom/apk/z2;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->else:Lcom/apk/r5;

    invoke-direct {v0, v1, v3}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->try:Lcom/apk/z2;

    .line 13
    invoke-virtual {p0, v2}, Lcom/manhua/ui/fragment/ComicCategoryFragment;->h(Z)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/apk/ss;->throw:Z

    .line 6
    new-instance v1, Lcom/manhua/ui/fragment/ComicCategoryFragment$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicCategoryFragment$do;-><init>(Lcom/manhua/ui/fragment/ComicCategoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->do()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getItemType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 3
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p3

    const-class v0, Lcom/manhua/ui/activity/ComicDetailActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "book"

    .line 4
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->if()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->for()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicRankListAdapter;->for()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->case:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicRankListAdapter;->if()V

    :cond_1
    :goto_0
    return-void
.end method
