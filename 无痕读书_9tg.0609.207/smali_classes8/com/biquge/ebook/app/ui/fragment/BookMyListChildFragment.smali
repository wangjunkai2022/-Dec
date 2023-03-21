.class public Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;
.super Lcom/apk/g6;
.source "BookMyListChildFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;


# instance fields
.field public do:Ljava/lang/String;

.field public for:Lcom/apk/v3;

.field public if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090218
    .end annotation
.end field

.field public final new:Lcom/apk/u5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->new:Lcom/apk/u5;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;-><init>()V

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
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00c2

    return v0
.end method

.method public initData()V
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/biquge/ebook/app/adapter/BookListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->do:Ljava/lang/String;

    const-string v1, "my_draftBox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->do:Ljava/lang/String;

    const-string v1, "my_collect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    .line 6
    :cond_1
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->new:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->for:Lcom/apk/v3;

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->synchronized()V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->do:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 7
    invoke-virtual {p0, p0}, Lcom/apk/g6;->registerEventBus(Ljava/lang/Object;)V

    return-void
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
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->do:Ljava/lang/String;

    const-string v0, "my_collect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->synchronized()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    const-string p1, "my_draftBox"

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/BookElement;

    if-eqz p2, :cond_3

    const-string p3, "my_release"

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->do:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->for:Lcom/apk/v3;

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->for:Lcom/apk/v3;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookElement;->getListId()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p2}, Lcom/apk/w;->static(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v1, Lcom/apk/x3;

    const-string v2, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v1, p1, v2, p2}, Lcom/apk/x3;-><init>(Lcom/apk/v3;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p1, 0x2bf20

    invoke-static {p3, p1, p2, v0, v1}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->do:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    .line 8
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "bookListId"

    .line 9
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookElement;->getListId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cover"

    .line 10
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookElement;->getCover()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const/16 p2, 0x7d1

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookElement;->getListId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookElement;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->do:Ljava/lang/String;

    const-string p2, "my_draftBox"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const p1, 0x7f10014b

    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$if;

    invoke-direct {v3, p0, p3}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;I)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/apk/j6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v7

    const p1, 0x7f100148

    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$for;

    invoke-direct {v9, p0, p3}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;I)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/apk/j6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public synchronized()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->for:Lcom/apk/v3;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->do:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "my_release"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "my_collect"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/m4;

    invoke-direct {v2, v0}, Lcom/apk/m4;-><init>(Lcom/apk/v3;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/UserBookList.aspx?type=personallist"

    invoke-static {v2, v3}, Lcom/apk/goto;->break(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    .line 7
    sget-object v5, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v6, Lcom/apk/l4;

    invoke-direct {v6, v0, v1}, Lcom/apk/l4;-><init>(Lcom/apk/v3;Ljava/lang/String;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 8
    throw v0

    :cond_3
    :goto_1
    return-void
.end method
