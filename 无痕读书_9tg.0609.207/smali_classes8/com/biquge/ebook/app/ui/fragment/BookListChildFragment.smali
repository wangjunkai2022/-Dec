.class public Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;
.super Lcom/apk/g6;
.source "BookListChildFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$try;
    }
.end annotation


# instance fields
.field public final break:Lcom/apk/u5;

.field public case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

.field public do:Ljava/lang/String;

.field public else:Lorg/json/JSONObject;

.field public for:Lcom/apk/v3;

.field public goto:Lcom/biquge/ebook/app/bean/BookElement;

.field public if:Z

.field public mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046d
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090217
    .end annotation
.end field

.field public new:I

.field public this:Z

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->if:Z

    .line 3
    iput v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->new:I

    .line 4
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$new;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->break:Lcom/apk/u5;

    return-void
.end method

.method public static a(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->for:Lcom/apk/v3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->for:Lcom/apk/v3;

    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->if:Z

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->do:Ljava/lang/String;

    iget v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->new:I

    iget-boolean p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->this:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/apk/v3;->public(ZLjava/lang/String;IZ)V
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

.method public static synthetic f(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->k(Z)V

    return-void
.end method

.method public static h(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;ZLjava/util/List;ZI)V
    .locals 3

    if-eqz p0, :cond_7

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

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    .line 2
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_2

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    add-int/2addr p4, v2

    .line 5
    iput p4, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->new:I

    goto :goto_1

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_3
    if-lez v1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_4
    if-nez p2, :cond_5

    .line 8
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    add-int/2addr p4, v2

    .line 10
    iput p4, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->new:I

    goto :goto_1

    .line 11
    :cond_6
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_7
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public static j(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;-><init>()V

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

.method public static synchronized(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;)V
    .locals 4

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->new:I

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->for:Lcom/apk/v3;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->for:Lcom/apk/v3;

    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->if:Z

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->do:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->this:Z

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/apk/v3;->public(ZLjava/lang/String;IZ)V
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


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00b5

    return v0
.end method

.method public i(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->this:Z

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const/4 v0, 0x1

    .line 4
    iput-byte v0, p1, Lcom/apk/ss;->do:B

    .line 5
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->k(Z)V

    :cond_0
    return-void
.end method

.method public initData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->do:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->synchronized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/finally;->b:Lorg/json/JSONObject;

    .line 5
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->else:Lorg/json/JSONObject;

    .line 6
    new-instance v0, Lcom/biquge/ebook/app/bean/BookElement;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookElement;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->goto:Lcom/biquge/ebook/app/bean/BookElement;

    .line 7
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookElement;->setItemType(I)V

    const-string v0, "topicnew"

    goto/16 :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->do:Ljava/lang/String;

    const-string v2, "hot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->instanceof()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/apk/finally;->instanceof:Lorg/json/JSONObject;

    .line 12
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->else:Lorg/json/JSONObject;

    .line 13
    new-instance v0, Lcom/biquge/ebook/app/bean/BookElement;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookElement;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->goto:Lcom/biquge/ebook/app/bean/BookElement;

    .line 14
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookElement;->setItemType(I)V

    const-string v0, "topichot"

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->do:Ljava/lang/String;

    const-string v2, "collect"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->transient()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/apk/finally;->synchronized:Lorg/json/JSONObject;

    .line 19
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->else:Lorg/json/JSONObject;

    .line 20
    new-instance v0, Lcom/biquge/ebook/app/bean/BookElement;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookElement;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->goto:Lcom/biquge/ebook/app/bean/BookElement;

    .line 21
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookElement;->setItemType(I)V

    const-string v0, "topiccollect"

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->do:Ljava/lang/String;

    const-string v2, "commend"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->implements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/apk/finally;->a:Lorg/json/JSONObject;

    .line 26
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->else:Lorg/json/JSONObject;

    .line 27
    new-instance v0, Lcom/biquge/ebook/app/bean/BookElement;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookElement;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->goto:Lcom/biquge/ebook/app/bean/BookElement;

    .line 28
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookElement;->setItemType(I)V

    const-string v0, "topicrecommend"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 29
    :goto_0
    new-instance v1, Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->else:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v3, v0}, Lcom/biquge/ebook/app/adapter/BookListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    .line 30
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->break:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->for:Lcom/apk/v3;

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->i(Z)V

    .line 33
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$for;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;)V

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->do:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$try;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$try;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$do;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 8
    iput-boolean v1, v0, Lcom/apk/ss;->throw:Z

    .line 9
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public final k(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$if;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/adapter/BookListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/BookElement;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookElement;->getItemType()I

    move-result p2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookElement;->getListId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookElement;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/adapter/BookListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/adapter/BookListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/adapter/BookListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookListChildFragment;->case:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/adapter/BookListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    :cond_1
    :goto_0
    return-void
.end method
