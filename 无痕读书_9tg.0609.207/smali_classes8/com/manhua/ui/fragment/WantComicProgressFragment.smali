.class public Lcom/manhua/ui/fragment/WantComicProgressFragment;
.super Lcom/apk/g6;
.source "WantComicProgressFragment.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

.field public final for:Lcom/apk/r5;

.field public if:Lcom/apk/z2;

.field public mRecycleView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905ee
    .end annotation
.end field

.field public ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/manhua/ui/fragment/WantComicProgressFragment$if;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/WantComicProgressFragment$if;-><init>(Lcom/manhua/ui/fragment/WantComicProgressFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->for:Lcom/apk/r5;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/apk/l10;

    invoke-direct {v1, p0, p1}, Lcom/apk/l10;-><init>(Lcom/manhua/ui/fragment/WantComicProgressFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00cd

    return v0
.end method

.method public initData()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initData()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-direct {v0, v1, v2}, Lcom/biquge/ebook/app/adapter/WantProgressAdapter;-><init>(Landroid/app/Activity;Lcom/apk/hf;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->do:Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    new-instance v0, Lcom/apk/z2;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->for:Lcom/apk/r5;

    invoke-direct {v0, v1, v2}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->if:Lcom/apk/z2;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/WantComicProgressFragment;->a(Z)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 6
    iput-boolean v1, v0, Lcom/apk/ss;->throw:Z

    .line 7
    new-instance v1, Lcom/manhua/ui/fragment/WantComicProgressFragment$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/WantComicProgressFragment$do;-><init>(Lcom/manhua/ui/fragment/WantComicProgressFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public synthetic synchronized(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    invoke-virtual {p1}, Lcom/apk/ss;->if()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->ptrRefreshLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :goto_0
    return-void
.end method
