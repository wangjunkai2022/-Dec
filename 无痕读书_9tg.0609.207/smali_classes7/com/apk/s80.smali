.class public abstract Lcom/apk/s80;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public break:Landroid/view/View;

.field public case:Z

.field public catch:Landroid/view/View;

.field public class:Landroid/widget/RelativeLayout;

.field public const:Z

.field public do:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public else:Z

.field public final:Z

.field public for:Landroid/content/Context;

.field public goto:Landroid/view/View;

.field public if:Lcom/apk/u90;

.field public new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public super:Z

.field public this:Landroid/view/View;

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/apk/s80;->do:Landroidx/collection/SparseArrayCompat;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/apk/s80;->super:Z

    .line 4
    iput-object p1, p0, Lcom/apk/s80;->for:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/apk/s80;->new:Ljava/util/List;

    .line 6
    iput-boolean p3, p0, Lcom/apk/s80;->try:Z

    return-void
.end method

.method public static if(Lcom/apk/s80;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    instance-of p0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p0, :cond_0

    .line 2
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    goto :goto_1

    .line 3
    :cond_0
    instance-of p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p0, :cond_3

    .line 4
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 5
    aget v0, p0, p1

    .line 6
    array-length v1, p0

    :goto_0
    if-ge p1, v1, :cond_2

    aget v2, p0, p1

    if-le v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move p0, v0

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    :goto_1
    return p0

    .line 7
    :cond_4
    throw v0
.end method

.method public static throw(Lcom/apk/s80;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/apk/s80;->const:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/s80;->class:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/apk/s80;->goto:Landroid/view/View;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/apk/s80;->final:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/apk/s80;->if:Lcom/apk/u90;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/apk/s80;->final:Z

    .line 5
    invoke-interface {v0, v1}, Lcom/apk/u90;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public break(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/s80;->try:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/apk/s80;->const:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/apk/s80;->const:Z

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/apk/s80;->final:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/s80;->break:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/apk/s80;->catch:Landroid/view/View;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public case(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 4
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result p1

    add-int/2addr p1, p2

    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public catch(I)Z
    .locals 1

    const v0, 0x186a3

    if-eq p1, v0, :cond_0

    const v0, 0x186a2

    if-eq p1, v0, :cond_0

    const v0, 0x186a4

    if-eq p1, v0, :cond_0

    const v0, 0x186a5

    if-eq p1, v0, :cond_0

    const v0, 0x30d40

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final class(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/s80;->try:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/s80;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public const()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/s80;->super:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/s80;->do:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public abstract do(ILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)I"
        }
    .end annotation
.end method

.method public else(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/apk/s80;->final:Z

    .line 2
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    if-gez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 5
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 6
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result p1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final final(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public for(Landroid/view/ViewGroup;I)Lcom/apk/r80;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/apk/s80;->super:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apk/s80;->do:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/s80;->do:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 3
    new-instance p2, Lcom/apk/r80;

    invoke-direct {p2, p1}, Lcom/apk/r80;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    iget-object p1, p0, Lcom/apk/s80;->catch:Landroid/view/View;

    .line 5
    new-instance p2, Lcom/apk/r80;

    invoke-direct {p2, p1}, Lcom/apk/r80;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :pswitch_1
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/apk/s80;->for:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p2, Lcom/apk/r80;

    invoke-direct {p2, p1}, Lcom/apk/r80;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 8
    :pswitch_2
    iget-object p1, p0, Lcom/apk/s80;->break:Landroid/view/View;

    .line 9
    new-instance p2, Lcom/apk/r80;

    invoke-direct {p2, p1}, Lcom/apk/r80;-><init>(Landroid/view/View;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 10
    :pswitch_3
    iget-object p1, p0, Lcom/apk/s80;->class:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_1

    .line 11
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/apk/s80;->for:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apk/s80;->class:Landroid/widget/RelativeLayout;

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/apk/s80;->class:Landroid/widget/RelativeLayout;

    .line 13
    new-instance p2, Lcom/apk/r80;

    invoke-direct {p2, p1}, Lcom/apk/r80;-><init>(Landroid/view/View;)V

    goto :goto_0

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x186a2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/s80;->break:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/s80;->catch:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    iget-boolean v2, p0, Lcom/apk/s80;->try:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/apk/s80;->break:Landroid/view/View;

    if-eqz v0, :cond_0

    const p1, 0x186a3

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/s80;->catch:Landroid/view/View;

    if-eqz v0, :cond_1

    const p1, 0x186a5

    return p1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/apk/s80;->super:Z

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/apk/s80;->do:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    :cond_3
    const p1, 0x186a4

    return p1

    .line 7
    :cond_4
    iget-boolean v0, p0, Lcom/apk/s80;->super:Z

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result v0

    if-ge p1, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    .line 9
    iget-object v0, p0, Lcom/apk/s80;->do:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 10
    :cond_6
    invoke-virtual {p0, p1}, Lcom/apk/s80;->class(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const p1, 0x186a2

    return p1

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apk/s80;->do(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public goto()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public import()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/s80;->goto:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/s80;->try(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/apk/s80;->final:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/apk/s80;->const:Z

    .line 5
    iput-boolean v0, p0, Lcom/apk/s80;->else:Z

    .line 6
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public new(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    new-instance v2, Lcom/apk/s80$do;

    invoke-direct {v2, p0, v1}, Lcom/apk/s80$do;-><init>(Lcom/apk/s80;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/apk/s80;->try:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/apk/s80;->if:Lcom/apk/u90;

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lcom/apk/t80;

    invoke-direct {v1, p0, v0}, Lcom/apk/t80;-><init>(Lcom/apk/s80;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/apk/s80;->class(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/apk/s80;->final(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Lcom/apk/s80;->class(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 6
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_2
    return-void
.end method

.method public super()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/apk/s80;->for:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/apk/s80;->try(Landroid/view/View;)V

    return-void
.end method

.method public this(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/s80;->do:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final try(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/s80;->class:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/apk/s80;->for:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apk/s80;->class:Landroid/widget/RelativeLayout;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/apk/s80;->class:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v1, p0, Lcom/apk/s80;->class:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public while(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/s80;->for:Landroid/content/Context;

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3
    :goto_0
    iput-object v1, p0, Lcom/apk/s80;->goto:Landroid/view/View;

    .line 4
    invoke-virtual {p0, v1}, Lcom/apk/s80;->try(Landroid/view/View;)V

    return-void
.end method
