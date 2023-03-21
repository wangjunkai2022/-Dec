.class public Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;
.super Lcom/apk/g6;
.source "BookDownloadFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;


# instance fields
.field public itemClickTag:Z

.field public mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

.field public mDeleteTaskMaps:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900da
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->resumeOrPause(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)Lcom/apk/gg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mDeleteTaskMaps:Lcom/apk/gg;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;Lcom/apk/gg;)Lcom/apk/gg;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mDeleteTaskMaps:Lcom/apk/gg;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->itemClickTag:Z

    return p1
.end method

.method private getData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$for;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method private resumeOrPause(I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->itemClickTag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->itemClickTag:Z

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getState()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/apk/o0;->case(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getState()I

    move-result v2

    .line 8
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/biquge/ebook/app/bean/CollectBook;->setMax(I)V

    .line 9
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getProgress()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/biquge/ebook/app/bean/CollectBook;->setProgress(I)V

    .line 10
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getPercentage()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/biquge/ebook/app/bean/CollectBook;->setPercentage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 11
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v9, 0x0

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v6

    const/4 v7, 0x0

    new-instance v8, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;

    invoke-direct {v8, p0, v4, v1, p1}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;Ljava/lang/String;Lcom/biquge/ebook/app/bean/CollectBook;I)V

    .line 14
    invoke-virtual/range {v2 .. v8}, Lcom/apk/o0;->do(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/apk/o0$else;)V

    .line 15
    iput-boolean v9, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->itemClickTag:Z

    goto :goto_2

    .line 16
    :cond_3
    :goto_1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/apk/o0;->break(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 19
    iput-boolean v9, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->itemClickTag:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00ae

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    invoke-virtual {p0, p0}, Lcom/apk/g6;->registerEventBus(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    invoke-direct {p0}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->getData()V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public isUseVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/g6;->unRegisterEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v1, "CACHE_DOWNLOAD_START"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/o0;->case(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mDeleteTaskMaps:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mDeleteTaskMaps:Lcom/apk/gg;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setProgress(I)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/CollectBook;->setPercentage(I)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->refreshTxt(Lcom/biquge/ebook/app/bean/CollectBook;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a0(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getFirstChapterId()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/n2;->final(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->s(Landroid/content/Context;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/bean/CollectBook;->setFirstChapterId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a0(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->mAdapter:Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 p1, 0x1

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    .line 5
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const v0, 0x7f10012c

    new-array v1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;

    move-object v0, v9

    move-object v1, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;Ljava/lang/String;Lcom/biquge/ebook/app/bean/CollectBook;ILjava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/apk/j6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    :cond_0
    return p1
.end method
