.class public Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;
.super Lcom/apk/g6;
.source "BookFootprintFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public do:Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;

.field public for:Lcom/apk/v3;

.field public if:Lcom/biquge/ebook/app/bean/Footprint;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field public final new:Lcom/apk/u5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->new:Lcom/apk/u5;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00af

    return v0
.end method

.method public initData()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->package()Z

    move-result v0

    .line 2
    new-instance v1, Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "myfootprint"

    invoke-direct {v1, v2, v0, v3}, Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;-><init>(Landroid/app/Activity;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->do:Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/biquge/ebook/app/bean/Footprint;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/Footprint;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->if:Lcom/biquge/ebook/app/bean/Footprint;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Footprint;->setItemType(I)V

    .line 6
    :cond_0
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->new:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->for:Lcom/apk/v3;

    .line 7
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/z3;

    invoke-direct {v2, v0}, Lcom/apk/z3;-><init>(Lcom/apk/v3;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->do:Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public isUseVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->do:Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->do:Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Footprint;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Footprint;->getNovelId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Footprint;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Footprint;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Footprint;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/bean/Book;->setDesc(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->o(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->do:Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->do:Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/adapter/BookFootprintAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    :cond_0
    return-void
.end method
