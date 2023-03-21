.class public Lcom/manhua/ui/fragment/ComicDownloadFragment;
.super Lcom/apk/g6;
.source "ComicDownloadFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;


# instance fields
.field public itemClickTag:Z

.field public mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

.field public final mDeleteTaskMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mDeleteTaskMaps:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lcom/manhua/ui/fragment/ComicDownloadFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/manhua/ui/fragment/ComicDownloadFragment;->resumeOrPause(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/manhua/ui/fragment/ComicDownloadFragment;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mDeleteTaskMaps:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/manhua/ui/fragment/ComicDownloadFragment;)Lcom/manhua/adapter/ComicDownloadAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/manhua/ui/fragment/ComicDownloadFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->itemClickTag:Z

    return p1
.end method

.method private getData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/manhua/ui/fragment/ComicDownloadFragment$for;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicDownloadFragment$for;-><init>(Lcom/manhua/ui/fragment/ComicDownloadFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method private resumeOrPause(I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->itemClickTag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->itemClickTag:Z

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getState()I

    move-result v2

    .line 6
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v3

    iget-object v3, v3, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v3, v4}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicCollectBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getState()I

    move-result v2

    .line 8
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getMax()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/manhua/data/bean/ComicCollectBean;->setMax(I)V

    .line 9
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getProgress()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/manhua/data/bean/ComicCollectBean;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 10
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v8, 0x0

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;

    invoke-direct {v7, p0, v4, v1, p1}, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;-><init>(Lcom/manhua/ui/fragment/ComicDownloadFragment;Ljava/lang/String;Lcom/manhua/data/bean/ComicCollectBean;I)V

    invoke-virtual/range {v2 .. v7}, Lcom/apk/o0;->for(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/apk/o0$else;)V

    .line 12
    iput-boolean v8, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->itemClickTag:Z

    goto :goto_2

    .line 13
    :cond_3
    :goto_1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/apk/o0;->catch(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 15
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 16
    iput-boolean v8, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->itemClickTag:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method private stopDownloadAll()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    :try_start_1
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v4

    iget-object v4, v4, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v4, v3}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v2

    iget-object v2, v2, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v2, v3}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicCollectBean;

    :cond_0
    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getState()I

    move-result v5

    if-eq v5, v4, :cond_3

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/apk/o0;->break(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicCollectBean;->setMax(I)V

    .line 9
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicCollectBean;->setProgress(I)V

    .line 10
    invoke-virtual {v2, v4}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 11
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const v0, 0x7f1000c8

    .line 13
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
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
    new-instance v0, Lcom/manhua/adapter/ComicDownloadAdapter;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1}, Lcom/manhua/adapter/ComicDownloadAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    invoke-direct {p0}, Lcom/manhua/ui/fragment/ComicDownloadFragment;->getData()V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    new-instance v1, Lcom/manhua/ui/fragment/ComicDownloadFragment$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicDownloadFragment$do;-><init>(Lcom/manhua/ui/fragment/ComicDownloadFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    iget-object v0, v0, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v0, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mDeleteTaskMaps:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setProgress(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    invoke-virtual {v0, p1}, Lcom/manhua/adapter/ComicDownloadAdapter;->do(Lcom/manhua/data/bean/ComicCollectBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "collectId = ?"

    aput-object v0, p2, p3

    const/4 p3, 0x1

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    invoke-static {p2}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 5
    invoke-static {p1}, Lcom/apk/mu;->const(Lcom/manhua/data/bean/ComicCollectBean;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    .line 6
    invoke-static {p2, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/manhua/ui/activity/ComicReadActivity;->I(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment;->mAdapter:Lcom/manhua/adapter/ComicDownloadAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/manhua/data/bean/ComicCollectBean;

    const/4 p1, 0x1

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

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
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;

    move-object v0, v9

    move-object v1, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;-><init>(Lcom/manhua/ui/fragment/ComicDownloadFragment;Ljava/lang/String;Lcom/manhua/data/bean/ComicCollectBean;ILjava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/apk/j6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    :cond_0
    return p1
.end method
