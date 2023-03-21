.class public Lcom/manhua/ui/fragment/ComicRankBookFragment;
.super Lcom/apk/g6;
.source "ComicRankBookFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public case:Lcom/apk/z2;

.field public do:Lcom/manhua/adapter/ComicRankListAdapter;

.field public else:Lorg/json/JSONObject;

.field public for:Ljava/lang/String;

.field public final goto:Lcom/apk/r5;

.field public if:I

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

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->if:I

    .line 3
    new-instance v0, Lcom/manhua/ui/fragment/ComicRankBookFragment$new;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicRankBookFragment$new;-><init>(Lcom/manhua/ui/fragment/ComicRankBookFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->goto:Lcom/apk/r5;

    return-void
.end method

.method public static a(Lcom/manhua/ui/fragment/ComicRankBookFragment;)V
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->case:Lcom/apk/z2;

    if-eqz v0, :cond_0

    const-string v0, "area/all"

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->for:Ljava/lang/String;

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->new:Ljava/lang/String;

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->try:Ljava/lang/String;

    iget v4, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->if:I

    invoke-static {v1, v2, v3, v0, v4}, Lcom/apk/w;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->case:Lcom/apk/z2;

    iget p0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->if:I

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

.method public static synthetic f(Lcom/manhua/ui/fragment/ComicRankBookFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/manhua/ui/fragment/ComicRankBookFragment;->j(Z)V

    return-void
.end method

.method public static h(Lcom/manhua/ui/fragment/ComicRankBookFragment;ZLjava/util/List;ZI)V
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
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    add-int/2addr p4, v2

    .line 4
    iput p4, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->if:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    add-int/2addr p4, v2

    .line 8
    iput p4, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->if:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/ui/fragment/ComicRankBookFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/manhua/ui/fragment/ComicRankBookFragment;

    invoke-direct {v0}, Lcom/manhua/ui/fragment/ComicRankBookFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sex"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "category"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "week"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synchronized(Lcom/manhua/ui/fragment/ComicRankBookFragment;)V
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->case:Lcom/apk/z2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->if:I

    const-string v1, "area/all"

    .line 3
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->for:Ljava/lang/String;

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->new:Ljava/lang/String;

    iget-object v4, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->try:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1, v0}, Lcom/apk/w;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->case:Lcom/apk/z2;

    iget p0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->if:I

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

    const v0, 0x7f0c0074

    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "week"

    if-eqz v0, :cond_0

    const-string v2, "sex"

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->for:Ljava/lang/String;

    const-string v2, "category"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->new:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->try:Ljava/lang/String;

    .line 5
    :cond_0
    new-instance v0, Lcom/apk/z2;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->goto:Lcom/apk/r5;

    invoke-direct {v0, v2, v3}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->case:Lcom/apk/z2;

    const/4 v0, 0x0

    .line 6
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->try:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/finally;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    .line 9
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->else:Lorg/json/JSONObject;

    const-string v0, "topweek"

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->try:Ljava/lang/String;

    const-string v2, "month"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/finally;->finally()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/apk/finally;->d:Lorg/json/JSONObject;

    .line 13
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->else:Lorg/json/JSONObject;

    const-string v0, "topmonth"

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->try:Ljava/lang/String;

    const-string v2, "total"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/finally;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/apk/finally;->e:Lorg/json/JSONObject;

    .line 17
    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->else:Lorg/json/JSONObject;

    const-string v0, "toptotal"

    :cond_3
    :goto_0
    move-object v4, v0

    .line 18
    new-instance v0, Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->else:Lorg/json/JSONObject;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/manhua/adapter/ComicRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    .line 19
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    new-instance v1, Lcom/manhua/ui/fragment/ComicRankBookFragment$if;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicRankBookFragment$if;-><init>(Lcom/manhua/ui/fragment/ComicRankBookFragment;)V

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicRankBookFragment;->j(Z)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/manhua/ui/fragment/ComicRankBookFragment$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicRankBookFragment$do;-><init>(Lcom/manhua/ui/fragment/ComicRankBookFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public final j(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/manhua/ui/fragment/ComicRankBookFragment$for;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicRankBookFragment$for;-><init>(Lcom/manhua/ui/fragment/ComicRankBookFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->do()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

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

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

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
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

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
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicRankListAdapter;->for()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->do:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicRankListAdapter;->if()V

    :cond_1
    :goto_0
    return-void
.end method
