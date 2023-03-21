.class public Lcom/apk/gd;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SlideRecyclerView.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/gd;->do:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

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
    iget-object p1, p0, Lcom/apk/gd;->do:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    .line 3
    iget-boolean p2, p1, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->new:Z

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget p2, p1, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->do:I

    if-le p3, p2, :cond_1

    .line 5
    iget-boolean p2, p1, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->for:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p1, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->for:Z

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->if:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView$do;

    if-eqz p1, :cond_2

    .line 8
    check-cast p1, Lcom/apk/ue;

    const/4 p3, 0x1

    const/16 v0, 0xfa

    .line 9
    iget-object p1, p1, Lcom/apk/ue;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 10
    iget v1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->class:I

    .line 11
    invoke-virtual {p1, v1, v0, p3, p2}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->goto(IIZZ)V

    goto :goto_0

    :cond_1
    if-gez p3, :cond_2

    const/4 p2, -0x1

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    :cond_2
    :goto_0
    return-void
.end method
