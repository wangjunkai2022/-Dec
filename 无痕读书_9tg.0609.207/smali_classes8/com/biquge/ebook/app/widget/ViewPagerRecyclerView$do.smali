.class public Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ViewPagerRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final do:Landroid/app/Activity;

.field public for:I

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/apk/dh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->if:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->for:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->do:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->do:Landroid/app/Activity;

    iget v3, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->for:I

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    new-instance v1, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$if;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->do:Landroid/app/Activity;

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->if:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$if;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/apk/dh;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
