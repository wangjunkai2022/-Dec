.class public Lcom/expand/listen/fragment/ListenRankChildFragment;
.super Lcom/apk/g6;
.source "ListenRankChildFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public case:Z

.field public do:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

.field public else:Ljava/lang/String;

.field public for:I

.field public goto:Lcom/apk/q3;

.field public if:Lcom/expand/listen/adapter/ListenRankAdapter;

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

.field public new:Ljava/lang/String;

.field public final this:Lcom/apk/t5;

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->for:I

    .line 3
    iput-boolean v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->case:Z

    .line 4
    new-instance v0, Lcom/expand/listen/fragment/ListenRankChildFragment$try;

    invoke-direct {v0, p0}, Lcom/expand/listen/fragment/ListenRankChildFragment$try;-><init>(Lcom/expand/listen/fragment/ListenRankChildFragment;)V

    iput-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->this:Lcom/apk/t5;

    return-void
.end method

.method public static a(Lcom/expand/listen/fragment/ListenRankChildFragment;)V
    .locals 4

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->for:I

    .line 2
    sget-object v1, Lcom/apk/q0;->this:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->case:Z

    xor-int/2addr v2, v0

    aget-object v1, v1, v2

    .line 3
    iget-object v2, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->try:Ljava/lang/String;

    iget-object v3, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->new:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/expand/listen/fragment/ListenRankChildFragment;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static f(Lcom/expand/listen/fragment/ListenRankChildFragment;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    sget-object v0, Lcom/apk/q0;->this:[Ljava/lang/String;

    iget-boolean v1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->case:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    aget-object v0, v0, v1

    .line 2
    iget-object v1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->try:Ljava/lang/String;

    iget-object v2, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->new:Ljava/lang/String;

    iget v3, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->for:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/expand/listen/fragment/ListenRankChildFragment;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static h(Lcom/expand/listen/fragment/ListenRankChildFragment;ZLjava/util/List;Z)V
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
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 4
    iget p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->for:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->for:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 8
    iget p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->for:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->for:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Lcom/expand/listen/fragment/ListenRankChildFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-direct {v0}, Lcom/expand/listen/fragment/ListenRankChildFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "week"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sourceType"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic synchronized(Lcom/expand/listen/fragment/ListenRankChildFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/expand/listen/fragment/ListenRankChildFragment;->l(Z)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00be

    return v0
.end method

.method public i(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->this:Lcom/apk/t5;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1, v0, v0}, Lcom/apk/t5;->do(Ljava/util/List;ZI)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 4
    iput-byte v0, p1, Lcom/apk/ss;->do:B

    .line 5
    invoke-virtual {p0, v0}, Lcom/expand/listen/fragment/ListenRankChildFragment;->l(Z)V

    :cond_1
    return-void
.end method

.method public initData()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "week"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->new:Ljava/lang/String;

    const-string v1, "sourceType"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->else:Ljava/lang/String;

    .line 4
    :cond_0
    new-instance v0, Lcom/apk/q3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->this:Lcom/apk/t5;

    invoke-direct {v0, v1, v2}, Lcom/apk/q3;-><init>(Landroid/app/Activity;Lcom/apk/t5;)V

    iput-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->goto:Lcom/apk/q3;

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->do:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->do:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->do:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_3

    .line 8
    iget-object v3, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->do:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    invoke-virtual {v3, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/RankListBean;

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/RankListBean;->getTitle()Ljava/lang/String;

    throw v0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->do:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/RankListBean;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/RankListBean;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->try:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_3
    :goto_1
    new-instance v0, Lcom/expand/listen/adapter/ListenRankAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/expand/listen/adapter/ListenRankAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    .line 14
    iget-object v1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    new-instance v1, Lcom/expand/listen/fragment/ListenRankChildFragment$for;

    invoke-direct {v1, p0}, Lcom/expand/listen/fragment/ListenRankChildFragment$for;-><init>(Lcom/expand/listen/fragment/ListenRankChildFragment;)V

    iget-object v2, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/expand/listen/fragment/ListenRankChildFragment;->l(Z)V

    return-void
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f090239

    .line 1
    invoke-virtual {p0, v0}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    new-instance v2, Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    invoke-static {}, Lcom/apk/q0;->if()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->do:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 6
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->do:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    new-instance v2, Lcom/expand/listen/fragment/ListenRankChildFragment$do;

    invoke-direct {v2, p0}, Lcom/expand/listen/fragment/ListenRankChildFragment$do;-><init>(Lcom/expand/listen/fragment/ListenRankChildFragment;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 11
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/expand/listen/fragment/ListenRankChildFragment$if;

    invoke-direct {v1, p0}, Lcom/expand/listen/fragment/ListenRankChildFragment$if;-><init>(Lcom/expand/listen/fragment/ListenRankChildFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->goto:Lcom/apk/q3;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    .line 2
    new-instance v6, Lcom/apk/b1;

    invoke-direct {v6}, Lcom/apk/b1;-><init>()V

    new-instance v7, Lcom/apk/s3;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/apk/s3;-><init>(Lcom/apk/q3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/expand/listen/fragment/ListenRankChildFragment$new;

    invoke-direct {v0, p0}, Lcom/expand/listen/fragment/ListenRankChildFragment$new;-><init>(Lcom/expand/listen/fragment/ListenRankChildFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/expand/listen/bean/ListenDetail;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    iget-object p3, p0, Lcom/expand/listen/fragment/ListenRankChildFragment;->else:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/apk/eg;->const()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p2, p3, v0, p1}, Lcom/apk/eg;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/expand/listen/bean/ListenDetail;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
