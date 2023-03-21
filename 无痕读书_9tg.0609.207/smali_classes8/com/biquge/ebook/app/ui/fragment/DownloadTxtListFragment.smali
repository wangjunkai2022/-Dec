.class public Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;
.super Lcom/apk/g6;
.source "DownloadTxtListFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;


# instance fields
.field public do:Lcom/apk/g1;

.field public for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

.field public if:Ljava/lang/String;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090223
    .end annotation
.end field

.field public new:Lcom/apk/final;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method

.method public static h(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/TaskInfo;

    invoke-static {v1}, Lcom/apk/kf;->goto(Lcom/biquge/ebook/app/bean/TaskInfo;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->do:Lcom/apk/g1;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    .line 2
    iput-boolean p1, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->do:Z

    .line 3
    iget-object p1, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00b9

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->if:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->j()V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    new-instance v1, Lcom/apk/jb;

    invoke-direct {v1, p0}, Lcom/apk/jb;-><init>(Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0, p0}, Lcom/apk/g6;->registerEventBus(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/TaskInfo;

    .line 5
    iget-object v3, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->do:Lcom/apk/g1;

    if-eqz v0, :cond_2

    const-string v1, "onItemClick"

    .line 8
    invoke-interface {v0, v1}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final l(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->new:Lcom/apk/final;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/apk/final;->if:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->new:Lcom/apk/final;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/apk/final;->if:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->new:Lcom/apk/final;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/final;->new()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->new:Lcom/apk/final;

    .line 5
    :cond_0
    invoke-virtual {p0, p0}, Lcom/apk/g6;->unRegisterEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v1, "REFRESH_DOWNLOAD_TXT_KEY"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/bean/TaskInfo;

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->synchronized()V

    goto :goto_1

    :cond_0
    const-string v1, "REFRESH_DOWNLOAD_TXT_PROGRESS_KEY"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    if-eqz v0, :cond_2

    .line 10
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 13
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/TaskInfo;

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    .line 2
    iget-boolean p2, p1, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->do:Z

    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/TaskInfo;

    if-eqz p2, :cond_2

    .line 4
    iget-object v0, p1, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p2, p1, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p1, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->do:Lcom/apk/g1;

    if-eqz p1, :cond_3

    const-string p2, "onItemClick"

    .line 12
    invoke-interface {p1, p2}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 13
    :cond_4
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/TaskInfo;

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getFinish()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/bean/TaskInfo;->isFinishTask(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "url = ?"

    aput-object v0, p2, p3

    const/4 p3, 0x1

    .line 15
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    invoke-static {p2}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/biquge/ebook/app/bean/TaskInfo;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/TaskInfo;

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/n2;->throw(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a0(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/TaskInfo;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const p3, 0x7f100394

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p3, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$if;

    invoke-direct {v3, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;Lcom/biquge/ebook/app/bean/TaskInfo;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/apk/j6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    :cond_0
    return p2
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->l(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->l(Z)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->l(Z)V

    return-void
.end method

.method public final synchronized()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->while()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const v1, 0x7f0c00d5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addFooterView(Landroid/view/View;)I

    .line 6
    new-instance v1, Lcom/apk/final;

    invoke-direct {v1}, Lcom/apk/final;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->new:Lcom/apk/final;

    .line 7
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apk/finally;->while()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    iput-object v3, v1, Lcom/apk/final;->else:Landroid/app/Activity;

    .line 10
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v3

    .line 11
    iget-object v3, v3, Lcom/apk/finally;->strictfp:Lorg/json/JSONObject;

    const-string v4, "navtitle"

    .line 12
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/apk/final;->for(Landroid/view/View;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v4, Lcom/apk/const;

    invoke-direct {v4, v1, v3, v2}, Lcom/apk/const;-><init>(Lcom/apk/final;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/apk/o;->do(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
