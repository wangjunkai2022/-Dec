.class public Lcom/manhua/ui/fragment/ComicFootprintFragment;
.super Lcom/apk/g6;
.source "ComicFootprintFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public do:Lcom/manhua/adapter/ComicFootprintAdapter;

.field public for:Lcom/apk/z2;

.field public if:Lcom/manhua/data/bean/ComicFootprint;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field public final new:Lcom/apk/r5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/manhua/ui/fragment/ComicFootprintFragment$do;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicFootprintFragment$do;-><init>(Lcom/manhua/ui/fragment/ComicFootprintFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->new:Lcom/apk/r5;

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
    new-instance v1, Lcom/manhua/adapter/ComicFootprintAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "myfootprint"

    invoke-direct {v1, v2, v0, v3}, Lcom/manhua/adapter/ComicFootprintAdapter;-><init>(Landroid/app/Activity;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->do:Lcom/manhua/adapter/ComicFootprintAdapter;

    .line 3
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/manhua/data/bean/ComicFootprint;

    invoke-direct {v0}, Lcom/manhua/data/bean/ComicFootprint;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->if:Lcom/manhua/data/bean/ComicFootprint;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicFootprint;->setItemType(I)V

    .line 6
    :cond_0
    new-instance v0, Lcom/apk/z2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->new:Lcom/apk/r5;

    invoke-direct {v0, v1, v2}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->for:Lcom/apk/z2;

    .line 7
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/d3;

    invoke-direct {v2, v0}, Lcom/apk/d3;-><init>(Lcom/apk/z2;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->do:Lcom/manhua/adapter/ComicFootprintAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->do:Lcom/manhua/adapter/ComicFootprintAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/manhua/adapter/ComicFootprintAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->do:Lcom/manhua/adapter/ComicFootprintAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicFootprint;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicFootprint;->getNovelId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicFootprint;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicFootprint;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/apk/mu;->final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicFootprint;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/manhua/data/bean/ComicBean;->setDesc(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->do:Lcom/manhua/adapter/ComicFootprintAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/manhua/adapter/ComicFootprintAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

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
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->do:Lcom/manhua/adapter/ComicFootprintAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/manhua/adapter/ComicFootprintAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    :cond_0
    return-void
.end method
