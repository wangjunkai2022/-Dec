.class public Lcom/apk/t80;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BaseAdapter.java"


# instance fields
.field public final synthetic do:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public final synthetic if:Lcom/apk/s80;


# direct methods
.method public constructor <init>(Lcom/apk/s80;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    iput-object p2, p0, Lcom/apk/t80;->do:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    .line 3
    iget-boolean p2, p1, Lcom/apk/s80;->else:Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/apk/t80;->do:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {p1, p2}, Lcom/apk/s80;->if(Lcom/apk/s80;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    invoke-virtual {p2}, Lcom/apk/s80;->getItemCount()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    invoke-static {p1}, Lcom/apk/s80;->throw(Lcom/apk/s80;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    iget-object p2, p0, Lcom/apk/t80;->do:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {p1, p2}, Lcom/apk/s80;->if(Lcom/apk/s80;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iget-object p3, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    invoke-virtual {p3}, Lcom/apk/s80;->getItemCount()I

    move-result p3

    if-ne p1, p3, :cond_3

    .line 3
    iget-object p1, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    .line 4
    iget-object p3, p1, Lcom/apk/s80;->break:Landroid/view/View;

    if-nez p3, :cond_2

    .line 5
    iget-object p3, p1, Lcom/apk/s80;->catch:Landroid/view/View;

    if-nez p3, :cond_2

    .line 6
    iget-object p1, p1, Lcom/apk/s80;->do:Landroidx/collection/SparseArrayCompat;

    .line 7
    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    .line 8
    iget-boolean p3, p1, Lcom/apk/s80;->super:Z

    if-eqz p3, :cond_0

    .line 9
    iget-object p1, p1, Lcom/apk/s80;->new:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    .line 12
    iget-boolean p3, p1, Lcom/apk/s80;->case:Z

    if-eqz p3, :cond_1

    .line 13
    iget-boolean p3, p1, Lcom/apk/s80;->else:Z

    if-nez p3, :cond_1

    .line 14
    invoke-static {p1}, Lcom/apk/s80;->throw(Lcom/apk/s80;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    .line 16
    iget-boolean p3, p1, Lcom/apk/s80;->else:Z

    if-nez p3, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/apk/s80;->super()V

    .line 18
    iget-object p1, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    .line 19
    iput-boolean p2, p1, Lcom/apk/s80;->else:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/apk/t80;->if:Lcom/apk/s80;

    .line 21
    iput-boolean p2, p1, Lcom/apk/s80;->else:Z

    :cond_4
    :goto_1
    return-void
.end method
