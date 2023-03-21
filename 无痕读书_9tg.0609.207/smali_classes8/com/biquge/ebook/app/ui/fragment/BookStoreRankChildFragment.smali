.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;
.super Lcom/apk/g6;
.source "BookStoreRankChildFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$case;
    }
.end annotation


# instance fields
.field public final break:Lcom/apk/u5;

.field public case:Ljava/lang/String;

.field public do:Lcom/apk/v3;

.field public else:Ljava/lang/String;

.field public for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

.field public goto:Z

.field public if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

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

.field public this:Lorg/json/JSONObject;

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->new:I

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$try;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->break:Lcom/apk/u5;

    return-void
.end method

.method public static synthetic a(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->k(Z)V

    return-void
.end method

.method public static f(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V
    .locals 4

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->new:I

    .line 2
    sget-object v1, Lcom/apk/q0;->this:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->goto:Z

    xor-int/2addr v2, v0

    aget-object v1, v1, v2

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->case:Ljava/lang/String;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->try:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/apk/w;->switch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->do:Lcom/apk/v3;

    iget p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->new:I

    invoke-virtual {v1, v0, p0}, Lcom/apk/v3;->switch(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static h(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    sget-object v0, Lcom/apk/q0;->this:[Ljava/lang/String;

    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->goto:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    aget-object v0, v0, v1

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->case:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->try:Ljava/lang/String;

    iget v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->new:I

    invoke-static {v0, v1, v2, v3}, Lcom/apk/w;->switch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->do:Lcom/apk/v3;

    iget p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->new:I

    invoke-virtual {v1, v0, p0}, Lcom/apk/v3;->switch(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Z)Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "week"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "rankTypeName"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isMan"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synchronized(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;ZLjava/util/List;ZI)V
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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    add-int/2addr p4, v2

    .line 4
    iput p4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->new:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    add-int/2addr p4, v2

    .line 8
    iput p4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->new:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00b4

    return v0
.end method

.method public i(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    iput v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->new:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 5
    iput-byte v1, p1, Lcom/apk/ss;->do:B

    .line 6
    invoke-virtual {p0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->k(Z)V

    :cond_1
    return-void
.end method

.method public initData()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "week"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->try:Ljava/lang/String;

    const-string v3, "rankTypeName"

    .line 3
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isMan"

    .line 4
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->goto:Z

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 8
    iget-object v6, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    invoke-virtual {v6, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biquge/ebook/app/bean/RankListBean;

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/RankListBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 11
    iput v5, v3, Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;->do:I

    .line 12
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/RankListBean;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->case:Ljava/lang/String;

    .line 14
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/RankListBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->else:Ljava/lang/String;

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    invoke-virtual {v3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/RankListBean;

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/RankListBean;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->case:Ljava/lang/String;

    .line 17
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/RankListBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->else:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_3
    :goto_2
    new-instance v3, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v4

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->break:Lcom/apk/u5;

    invoke-direct {v3, v4, v5}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->do:Lcom/apk/v3;

    .line 20
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->try:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/finally;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    .line 23
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->this:Lorg/json/JSONObject;

    const-string v2, "topweek"

    goto :goto_3

    .line 24
    :cond_4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->try:Ljava/lang/String;

    const-string v3, "month"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/finally;->finally()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    .line 26
    iget-object v1, v1, Lcom/apk/finally;->d:Lorg/json/JSONObject;

    .line 27
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->this:Lorg/json/JSONObject;

    const-string v2, "topmonth"

    goto :goto_3

    .line 28
    :cond_5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->try:Ljava/lang/String;

    const-string v3, "total"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/finally;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 29
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/apk/finally;->e:Lorg/json/JSONObject;

    .line 31
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->this:Lorg/json/JSONObject;

    const-string v2, "toptotal"

    .line 32
    :cond_6
    :goto_3
    new-instance v1, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->this:Lorg/json/JSONObject;

    .line 33
    invoke-direct {v1, v3, v4, v2, v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 34
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    .line 35
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$for;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->k(Z)V

    return-void
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f09023a

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

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 6
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$do;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$case;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$case;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$do;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public final k(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$new;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$new;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->do()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    const-string p1, "|"

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e66\u57ce|\u699c\u5355|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->try:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->else:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->goto:Z

    if-eqz p1, :cond_0

    const-string p1, "\u7537\u751f|"

    goto :goto_0

    :cond_0
    const-string p1, "\u5973\u751f|"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->if()V

    :cond_1
    :goto_0
    return-void
.end method
