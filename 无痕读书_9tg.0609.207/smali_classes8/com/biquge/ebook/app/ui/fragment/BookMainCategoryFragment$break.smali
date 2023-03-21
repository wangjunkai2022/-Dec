.class public Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$break;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BookMainCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "break"
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$break;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_5

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$break;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 3
    iget p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->for:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x5

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$break;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 5
    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$break;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 6
    iget p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->new:I

    .line 7
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_5
    :goto_1
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

    return-void
.end method
