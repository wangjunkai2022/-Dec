.class public Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;
.super Lcom/apk/f6;
.source "MyNewsActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

.field public if:Lcom/apk/x4;

.field public mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090439
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0049

    return v0
.end method

.method public getToolBarMenuView()I
    .locals 1

    const v0, 0x7f0d0004

    return v0
.end method

.method public synthetic i(Lcom/biquge/ebook/app/bean/InitConfNews;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->k(Lcom/biquge/ebook/app/bean/InitConfNews;I)V

    return-void
.end method

.method public initData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/x4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apk/x4;-><init>(Landroid/app/Activity;Lcom/apk/w5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->if:Lcom/apk/x4;

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/adapter/MyNewsAdapter;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->j()V

    return-void
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f0903cd

    const v1, 0x7f1001c6

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    new-instance v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 9
    iput-boolean v1, v0, Lcom/apk/ss;->throw:Z

    .line 10
    new-instance v1, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public final k(Lcom/biquge/ebook/app/bean/InitConfNews;I)V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/InitConfNews;->isRead()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_2

    if-ne p2, v3, :cond_0

    .line 3
    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {v5, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biquge/ebook/app/bean/InitConfNews;

    invoke-virtual {v5, v2}, Lcom/biquge/ebook/app/bean/InitConfNews;->setRead(Z)V

    .line 4
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "read"

    .line 5
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6
    const-class v6, Lcom/biquge/ebook/app/bean/InitConfNews;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "nid = ?"

    aput-object v8, v7, v1

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/InitConfNews;->getNid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v5, v7}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {v5, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biquge/ebook/app/bean/InitConfNews;

    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/InitConfNews;->isRead()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz v4, :cond_3

    const-string p1, "REFRESH_CHECK_TASK_RED_KEY"

    .line 9
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->unRegisterEventBus(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v0, "REFRESH_CHECK_TASK_RED_KEY"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->j()V

    :cond_0
    return-void
.end method

.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const v1, 0x7f090300

    if-ne p1, v1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/InitConfNews;

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/InitConfNews;->getClicktype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sysweb"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/InitConfNews;->getTarget()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v0}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "inner"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/InitConfNews;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string p2, "apk"

    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/InitConfNews;->getApk_pkg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/InitConfNews;->getApk_pkg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/apk/ze;->g0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/InitConfNews;->getTarget()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/InitConfNews;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/apk/kf;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    :goto_0
    new-instance p2, Lcom/apk/w6;

    invoke-direct {p2, p0, p1, p3}, Lcom/apk/w6;-><init>(Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;Lcom/biquge/ebook/app/bean/InitConfNews;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p2, v0, v1}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/InitConfNews;

    if-eqz p1, :cond_5

    .line 14
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {v1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->remove(I)V

    .line 15
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 16
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "read"

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "delete"

    const-string v2, "true"

    .line 17
    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-class v1, Lcom/biquge/ebook/app/bean/InitConfNews;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "nid = ?"

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/InitConfNews;->getNid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p2

    invoke-static {v1, p3, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    const/4 p2, -0x1

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->k(Lcom/biquge/ebook/app/bean/InitConfNews;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onItemMenuSelected(Landroid/view/MenuItem;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0904a5

    if-ne p1, v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/InitConfNews;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/InitConfNews;->isRead()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "delete"

    const-string v5, "true"

    .line 8
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class v4, Lcom/biquge/ebook/app/bean/InitConfNews;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "nid = ?"

    aput-object v6, v5, v0

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/InitConfNews;->getNid()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v3, v5}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const v0, 0x7f09004b

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0904a5

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f100313

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
