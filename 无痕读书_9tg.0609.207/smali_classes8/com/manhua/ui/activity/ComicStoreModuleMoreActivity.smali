.class public Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;
.super Lcom/apk/f6;
.source "ComicStoreModuleMoreActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public case:Ljava/lang/String;

.field public do:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

.field public else:Lorg/json/JSONObject;

.field public for:Lcom/manhua/adapter/ComicRankListAdapter;

.field public final goto:Lcom/apk/r5;

.field public if:Landroidx/recyclerview/widget/RecyclerView;

.field public new:Lcom/apk/z2;

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->try:I

    .line 3
    new-instance v0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$new;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$new;-><init>(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->goto:Lcom/apk/r5;

    return-void
.end method

.method public static i(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->new:Lcom/apk/z2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->try:I

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->new:Lcom/apk/z2;

    iget-object p0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->case:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/apk/z2;->public(Ljava/lang/String;I)V
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

.method public static j(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->new:Lcom/apk/z2;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->new:Lcom/apk/z2;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->case:Ljava/lang/String;

    iget p0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->try:I

    invoke-virtual {v0, v1, p0}, Lcom/apk/z2;->public(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static synthetic k(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->n(Z)V

    return-void
.end method

.method public static l(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;ZLjava/util/List;ZI)V
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
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    add-int/2addr p4, v2

    .line 4
    iput p4, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->try:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    add-int/2addr p4, v2

    .line 8
    iput p4, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->try:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_TITLE_KEY"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_URL_KEY"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0056

    return v0
.end method

.method public initData()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    .line 4
    iput-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->else:Lorg/json/JSONObject;

    .line 5
    :cond_0
    new-instance v0, Lcom/apk/z2;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->goto:Lcom/apk/r5;

    invoke-direct {v0, p0, v1}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->new:Lcom/apk/z2;

    .line 6
    new-instance v0, Lcom/manhua/adapter/ComicRankListAdapter;

    iget-object v4, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->else:Lorg/json/JSONObject;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v5, "topweek"

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/manhua/adapter/ComicRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    .line 7
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->if:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    new-instance v1, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$if;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$if;-><init>(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;)V

    iget-object v2, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->if:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->n(Z)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "EXTRA_TITLE_KEY"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09007a

    .line 3
    invoke-virtual {p0, v2, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    const-string v1, "EXTRA_URL_KEY"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->case:Ljava/lang/String;

    :cond_0
    const v0, 0x7f09048c

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->if:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->if:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->if:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->if:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v0}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    const v0, 0x7f09046d

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->do:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 11
    new-instance v1, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$do;-><init>(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public final n(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->do:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$for;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$for;-><init>(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->do:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

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
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->do()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

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

    const-class p3, Lcom/manhua/ui/activity/ComicDetailActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "book"

    .line 4
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
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
    invoke-super {p0}, Lcom/apk/i6;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->if()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->for()V

    :cond_0
    return-void
.end method
