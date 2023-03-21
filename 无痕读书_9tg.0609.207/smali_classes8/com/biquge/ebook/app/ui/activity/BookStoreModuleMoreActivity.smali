.class public Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;
.super Lcom/apk/f6;
.source "BookStoreModuleMoreActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public case:Lorg/json/JSONObject;

.field public do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

.field public final else:Lcom/apk/u5;

.field public for:Ljava/lang/String;

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

.field public try:Lcom/apk/v3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->if:I

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$new;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$new;-><init>(Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->else:Lcom/apk/u5;

    return-void
.end method

.method public static i(Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->try:Lcom/apk/v3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->if:I

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->try:Lcom/apk/v3;

    iget-object p0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->new:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/apk/v3;->switch(Ljava/lang/String;I)V
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

.method public static j(Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->try:Lcom/apk/v3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->try:Lcom/apk/v3;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->new:Ljava/lang/String;

    iget p0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->if:I

    invoke-virtual {v0, v1, p0}, Lcom/apk/v3;->switch(Ljava/lang/String;I)V
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

.method public static synthetic k(Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->n(Z)V

    return-void
.end method

.method public static l(Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;ZLjava/util/List;ZI)V
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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    add-int/2addr p4, v2

    .line 4
    iput p4, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->if:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    add-int/2addr p4, v2

    .line 8
    iput p4, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->if:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

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

    const-class v1, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;

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
    .locals 4

    .line 1
    new-instance v0, Lcom/apk/v3;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->else:Lcom/apk/u5;

    invoke-direct {v0, p0, v1}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->try:Lcom/apk/v3;

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    .line 5
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->case:Lorg/json/JSONObject;

    .line 6
    :cond_0
    new-instance v0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->case:Lorg/json/JSONObject;

    const-string v2, "topweek"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;)V

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 10
    invoke-virtual {p0, v3}, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->n(Z)V

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

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->for:Ljava/lang/String;

    const v2, 0x7f09007a

    .line 3
    invoke-virtual {p0, v2, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    const-string v1, "EXTRA_URL_KEY"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->new:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public final n(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$for;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$for;-><init>(Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->do()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e66\u57ce\u6a21\u5757|"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->for:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|\u66f4\u591a>|"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->if()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->do:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for()V

    :cond_0
    return-void
.end method
