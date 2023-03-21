.class public Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ComicNewStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicNewStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;Lcom/apk/s10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_5

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Lcom/youth/banner/Banner;->setEffective(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 6
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicNewStoreAdapter;->for()V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 9
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throw:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_2

    .line 10
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 12
    iget-boolean p2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throws:Z

    if-nez p2, :cond_3

    .line 13
    iget-object p2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz p2, :cond_3

    .line 14
    iget p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->switch:I

    .line 15
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p2

    div-int/lit8 p2, p2, 0x6

    if-le p1, p2, :cond_3

    .line 16
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 17
    invoke-virtual {p1, v1}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->n(Z)V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 19
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->case:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 21
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 22
    throw p1

    .line 23
    :cond_5
    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 24
    iget-object p2, p2, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->return:Lcom/youth/banner/Banner;

    if-eqz p2, :cond_6

    .line 25
    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setEffective(Z)V

    .line 26
    :cond_6
    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 27
    iget-object p2, p2, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz p2, :cond_7

    .line 28
    invoke-virtual {p2}, Lcom/manhua/adapter/ComicNewStoreAdapter;->if()V

    .line 29
    :cond_7
    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 30
    iget-object p2, p2, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throw:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p2, :cond_8

    .line 31
    iput-boolean v1, p2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 32
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 33
    :cond_9
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 34
    iget-boolean p2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->throws:Z

    if-eqz p2, :cond_a

    .line 35
    invoke-virtual {p1, v0}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->n(Z)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 3
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 7
    iget p2, p2, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->switch:I

    if-eq p2, p1, :cond_0

    .line 8
    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$new;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 9
    iput p1, p2, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->switch:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
