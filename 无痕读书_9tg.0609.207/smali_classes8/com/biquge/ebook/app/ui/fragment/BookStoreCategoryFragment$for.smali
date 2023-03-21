.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BookStoreCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;->if:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;->do:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;->do:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;->if:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mHeaderTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;->if:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mHeaderTxt:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;->if:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mHeaderTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;->if:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    iget-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mHeaderTxt:Landroid/widget/TextView;

    .line 7
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->do:[Ljava/lang/String;

    iget-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "  ->  "

    .line 9
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-static {}, Lcom/apk/q0;->for()[Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->try:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$for;->if:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mHeaderTxt:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
