.class public Lcom/manhua/ui/fragment/ComicUpdateFragment;
.super Lcom/apk/g6;
.source "ComicUpdateFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final case:Lcom/apk/r5;

.field public do:Lcom/manhua/adapter/ComicRankListAdapter;

.field public for:Ljava/lang/String;

.field public if:I

.field public mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046d
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018c
    .end annotation
.end field

.field public new:Lorg/json/JSONObject;

.field public try:Lcom/apk/z2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->if:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->new:Lorg/json/JSONObject;

    .line 4
    new-instance v0, Lcom/manhua/ui/fragment/ComicUpdateFragment$new;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicUpdateFragment$new;-><init>(Lcom/manhua/ui/fragment/ComicUpdateFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->case:Lcom/apk/r5;

    return-void
.end method

.method public static a(Lcom/manhua/ui/fragment/ComicUpdateFragment;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->try:Lcom/apk/z2;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->for:Ljava/lang/String;

    iget v1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->if:I

    invoke-static {v0, v1}, Lcom/apk/w;->break(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->try:Lcom/apk/z2;

    iget p0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->if:I

    invoke-virtual {v1, v0, p0}, Lcom/apk/z2;->public(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static synthetic f(Lcom/manhua/ui/fragment/ComicUpdateFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/manhua/ui/fragment/ComicUpdateFragment;->i(Z)V

    return-void
.end method

.method public static h(Lcom/manhua/ui/fragment/ComicUpdateFragment;ZLjava/util/List;ZI)V
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
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    add-int/2addr p4, v2

    .line 4
    iput p4, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->if:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    add-int/2addr p4, v2

    .line 8
    iput p4, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->if:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static synchronized(Lcom/manhua/ui/fragment/ComicUpdateFragment;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->try:Lcom/apk/z2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->if:I

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->for:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/apk/w;->break(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->try:Lcom/apk/z2;

    iget p0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->if:I

    invoke-virtual {v1, v0, p0}, Lcom/apk/z2;->public(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 6
    throw p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c008b

    return v0
.end method

.method public final i(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/manhua/ui/fragment/ComicUpdateFragment$for;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicUpdateFragment$for;-><init>(Lcom/manhua/ui/fragment/ComicUpdateFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public initData()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/z2;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->case:Lcom/apk/r5;

    invoke-direct {v0, v1, v2}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->try:Lcom/apk/z2;

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->public()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/finally;->h:Lorg/json/JSONObject;

    .line 5
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->new:Lorg/json/JSONObject;

    .line 6
    :cond_0
    new-instance v0, Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->new:Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v4, "categorylist"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/manhua/adapter/ComicRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    .line 7
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    new-instance v1, Lcom/manhua/ui/fragment/ComicUpdateFragment$if;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicUpdateFragment$if;-><init>(Lcom/manhua/ui/fragment/ComicUpdateFragment;)V

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "UPDATE_DATE_KEY"

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->for:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicUpdateFragment;->i(Z)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/manhua/ui/fragment/ComicUpdateFragment$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicUpdateFragment$do;-><init>(Lcom/manhua/ui/fragment/ComicUpdateFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
