.class public Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;
.super Lcom/apk/g6;
.source "BookCategoryRankFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

.field public do:Lcom/biquge/ebook/app/bean/Book;

.field public final else:Lcom/apk/u5;

.field public for:Ljava/lang/String;

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

.field public try:Lcom/apk/v3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->new:I

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->else:Lcom/apk/u5;

    return-void
.end method

.method public static a(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;ZLjava/util/List;Z)V
    .locals 3

    if-eqz p0, :cond_5

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

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 4
    iget p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->new:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->new:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 8
    iget p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->new:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->new:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;-><init>()V

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

.method public static synthetic synchronized(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->i(Z)V

    return-void
.end method


# virtual methods
.method public synthetic f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00a9

    return v0
.end method

.method public final i(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/apk/fa;

    invoke-direct {v0, p0}, Lcom/apk/fa;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public initData()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "categoryId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->if:Ljava/lang/String;

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->for:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->for:Ljava/lang/String;

    const-string v2, "hot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/finally;->public()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/apk/finally;->h:Lorg/json/JSONObject;

    .line 7
    new-instance v1, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->do:Lcom/biquge/ebook/app/bean/Book;

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/Book;->setItemType(I)V

    .line 9
    :cond_1
    new-instance v1, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    const-string v3, "categorylist"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;)V

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 13
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->else:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->try:Lcom/apk/v3;

    .line 14
    invoke-virtual {p0, v4}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->i(Z)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 5
    iput-boolean v1, v0, Lcom/apk/ss;->throw:Z

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->do()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->if()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->case:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->if()V

    :cond_1
    :goto_0
    return-void
.end method
